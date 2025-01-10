using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Emgu.CV;
using Emgu.CV.Structure;
using Emgu.Util;
using System.Net;
using System.IO;

namespace ECNG_Class_Attendance
{
    public partial class ClassAttendance : Form
    {        
        private DatabaseOperations faceDB;
        private FaceRecognition frProcess;
        private FaceRecognition frProcessWinFrm = null;
        private AttendanceResult classAttndWinFrm = null;
        private AttendanceTable classAttndTblWinFrm = null;
        private StudentAttendanceResult stuAttndWinFrm = null;
        private StudentInfo studentInfoWinFrm = null;
        private AttendanceOffenders attndOffendersWinFrm = null;        
        private string course;       
        private DateTime fromDate;
        private DateTime toDate;
        private int attndReq;
        private CascadeClassifier haar;       
        private CascadeClassifier haar_eyes;


        public ClassAttendance()
        {
            InitializeComponent();
        }

        private void btnFaceRecognition_Click(object sender, EventArgs e)
        {
            if (frProcessWinFrm == null)
            {
                frProcessWinFrm = new FaceRecognition(haar, haar_eyes, faceDB);
                frProcessWinFrm.FormClosed += frProcessWinClosed;
            }
            frProcessWinFrm.Show();
        }

        private void frProcessWinClosed(object sender, FormClosedEventArgs e)
        {
            frProcessWinFrm = null;
        }

        private void ClassAttendance_Load(object sender, EventArgs e)
        {
            haar = new CascadeClassifier("haarcascade_frontalface_default.xml");
            haar_eyes = new CascadeClassifier("haarcascade_eye.xml");
            attndReq = 0;            
            faceDB = new DatabaseOperations();
            try
            {
                faceDB.ConnectToDatabase();
                //MessageBox.Show("Successfully connected to database.");
            }
            catch (Exception ex)
            {
                MessageBox.Show("No internet connection.");
            }

            List<string> courseList = new List<string>();
            faceDB.getAllCourses(courseList);
            listBoxCourses.DataSource = courseList;

            frProcess = new FaceRecognition(haar, haar_eyes, faceDB);
        }

        private void btnGetAttendance_Click(object sender, EventArgs e)
        {
            course = listBoxCourses.SelectedItem.ToString();             
            List<DateTime> dateList = new List<DateTime>();            

            fromDate = fromDTPicker.Value.Date;
            toDate = toDTPicker.Value.Date;

            faceDB.getDatesBySelection(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"), dateList);
            
            if (dateList.Count > 0)
            {
                // Prevents window from opening if it is already opened
                if (classAttndWinFrm == null)
                {
                    classAttndWinFrm = new AttendanceResult(course, faceDB, dateList, fromDate, toDate);
                    classAttndWinFrm.FormClosed += classAttndWinClosed;
                }
                classAttndWinFrm.Show();
            }
            else
            {
                MessageBox.Show("No data.");
            }                        
        }

        private void classAttndWinClosed(object sender, FormClosedEventArgs e)
        {
            classAttndWinFrm = null;
        }

        private void btnGetStuAttnd_Click(object sender, EventArgs e)
        {            
            List<DateTime> dateList = new List<DateTime>();

            course = listBoxCourses.SelectedItem.ToString();
            fromDate = fromDTPicker.Value.Date;
            toDate = toDTPicker.Value.Date;            
            faceDB.getDatesBySelection(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"), dateList);
            if (txtBoxAttndReq.Text != "")
            {
                attndReq = Convert.ToInt32(txtBoxAttndReq.Text);
            }

            if (dateList.Count > 0)
            {
                // Prevents window from opening if it is already opened
                if (stuAttndWinFrm == null)
                {
                    stuAttndWinFrm = new StudentAttendanceResult(course, faceDB, dateList, fromDate, toDate, attndReq);
                    stuAttndWinFrm.FormClosed += stuAttndWinClosed;
                }
                stuAttndWinFrm.Show();
            }
            else
            {
                MessageBox.Show("No data.");
            }
        }

        private void stuAttndWinClosed(object sender, FormClosedEventArgs e)
        {
            stuAttndWinFrm = null;
        }

        private void btnStudentInfo_Click(object sender, EventArgs e)
        {   
            // Prevents window from opening if it is already opened         
            if (studentInfoWinFrm == null)
            {
                studentInfoWinFrm = new StudentInfo(faceDB);
                studentInfoWinFrm.FormClosed += studentInfoWinClosed;
            }
            studentInfoWinFrm.Show();
        }

        private void studentInfoWinClosed(object sender, FormClosedEventArgs e)
        {
            studentInfoWinFrm = null;
        }

        private void btnUpdateAttendance_Click(object sender, EventArgs e)
        {
            course = listBoxCourses.SelectedItem.ToString();
            List<DateTime> dateList = new List<DateTime>();
            List<string> timeList = new List<string>();
            List<string> classImgList = new List<string>();
            List<Bitmap> extFaces = new List<Bitmap>();
                                   
            List<string> courseStudentIds = new List<string>(); // Student Ids for specified course
            List<string> courseStudentFNs = new List<string>(); // Student first names for specified course
            List<string> courseStudentLNs = new List<string>(); // Student last names for specified course   
            List<DateTime> recDates = new List<DateTime>();
            List<string> recDateString = new List<string>();       

            List<int> faceIds = new List<int>();
            List<Image> trainingImgs = new List<Image>();
            List<Image<Bgr, Byte>> trainingImages = new List<Image<Bgr, Byte>>();
            List<Image<Gray, byte>> trainingGrayImages = new List<Image<Gray, byte>>();

            //Perform Database operations
            faceDB.RefreshDBConnection();
            faceDB.getIds(faceIds);
            faceDB.getTrainingImages(trainingImgs);

            // Get training images
            for (int i = 0; i < trainingImgs.Count(); i++)
            {
                trainingImages.Add(new Image<Bgr, byte>(new Bitmap(trainingImgs[i])));
                trainingGrayImages.Add(trainingImages[i].Convert<Gray, byte>());
                trainingGrayImages[i]._EqualizeHist();
            }

            // Get all (captured images) dates for the specified course
            faceDB.getAttndDates(course, dateList);

            // Get class images for all dates for the specified course
            for (int i = 0; i < dateList.Count; i++)
            {
                faceDB.getClassImage(course, dateList[i].ToString("yyyy-MM-dd HH:mm:ss"), classImgList);
            }

            // Get all the students for the specfied course
            faceDB.getCourseStudents(course, courseStudentIds);
            for (int i = 0; i < courseStudentIds.Count; i++)
            {
                faceDB.getFirstNames(courseStudentIds[i], courseStudentFNs);
                faceDB.getLastNames(courseStudentIds[i], courseStudentLNs);
            }

            // Get recorded dates from selected attendance table
            faceDB.getRecordedDates(course, recDates);
            for (int i = 0; i < recDates.Count; i++)
            {
                recDateString.Add(recDates[i].ToString("yyyy-MM-dd"));
            }

            for (int k = 0; k < classImgList.Count; k++)
            {
                // Check if attendance date already exists in database
                if (!recDateString.Contains(dateList[k].ToString("yyyy-MM-dd")))
                {
                    List<string> studentIds = new List<string>(); // Recognized student ids
                    List<string> presentStudentIds = new List<string>();
                    List<string> chckDuplicatePresence = new List<string>();

                    string img_path = classImgList[k];
                    WebRequest request = WebRequest.Create(img_path);
                    WebResponse response = request.GetResponse();
                    Stream stream = response.GetResponseStream();
                    Image fetchedImg = Image.FromStream(stream);
                    Image<Bgr, byte> inputImage = new Image<Bgr, byte>(new Bitmap(fetchedImg));
                    //frProcess.DetectFaces(inputImage);

                    // Face Detection
                    if (inputImage != null)
                    {
                        extFaces = frProcess.DetectFaces(inputImage);
                    }

                    // Face Recognition                
                    if (extFaces != null)
                    {
                        FaceRecognizer recognizer;
                        Image<Bgr, Byte> inputImg;
                        int rIndex;

                        // Train face recognizer based on selected radio button
                        recognizer = new EigenFaceRecognizer(160, 15530);
                        recognizer.Train(trainingGrayImages.ToArray(), faceIds.ToArray());

                        for (int i = 0; i < extFaces.Count; i++)
                        {
                            inputImg = new Image<Bgr, Byte>(extFaces[i]);
                            rIndex = frProcess.Recognize(inputImg, recognizer);
                            if (rIndex != -1)
                            {
                                faceDB.getStudentIds(faceIds[rIndex], studentIds);
                                //faceDB.getFirstNames(studentIds[i], firstNames);
                                //faceDB.getLastNames(studentIds[i], lastNames);
                            }
                            inputImage.Dispose();
                        }
                        recognizer.Dispose();
                    }                    


                    //Enter attendance                
                    if (studentIds != null) // There are students (recognized) in the image
                    {
                        // Check if recognized students are in specified course
                        for (int i = 0; i < studentIds.Count; i++)
                        {
                            if (courseStudentIds.Contains(studentIds[i]))
                            {
                                presentStudentIds.Add(studentIds[i]);
                            }
                        }

                        for (int i = 0; i < courseStudentIds.Count; i++)
                        {
                            if (presentStudentIds.Contains(courseStudentIds[i]))
                            {
                                faceDB.checkDuplStudent(course, dateList[k].ToString("yyyy-MM-dd"), chckDuplicatePresence);
                                if (!chckDuplicatePresence.Contains(courseStudentIds[i]))
                                {
                                    faceDB.enterAttendance(course, courseStudentIds[i], courseStudentFNs[i], courseStudentLNs[i], dateList[k].ToString("yyyy-MM-dd"));
                                }
                            }
                            //else
                            //{
                            //    faceDB.checkDuplStudent(course, dateList[k].ToString("yyyy-MM-dd"), chckDuplicatePresence);
                            //    if (!chckDuplicatePresence.Contains(courseStudentIds[i]))
                            //    {
                            //        faceDB.enterAttendance(course, courseStudentIds[i], courseStudentFNs[i], courseStudentLNs[i], 0, dateList[k].ToString("yyyy-MM-dd"));
                            //    }                            
                            //}
                        }

                    }
                    studentIds = null;
                    presentStudentIds = null;
                    chckDuplicatePresence = null;
                }
            }

            MessageBox.Show("Operation Completed.");
        }

        private void btnGetAttndOffenders_Click(object sender, EventArgs e)
        {
            List<DateTime> dateList = new List<DateTime>();
            course = listBoxCourses.SelectedItem.ToString();
            fromDate = fromDTPicker.Value.Date;
            toDate = toDTPicker.Value.Date;
            faceDB.getDatesBySelection(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"), dateList);
            if (txtBoxAttndReq.Text != "")
            {
                attndReq = Convert.ToInt32(txtBoxAttndReq.Text);
            }

            if (dateList.Count > 0)
            {                
                List<string> absentStudentsList = new List<string>();
                List<string> absentPercentage = new List<string>();
                List<string> studentIdList = new List<string>();
                faceDB.getCourseStudents(course, studentIdList);

                //Get total attendance for the specified period
                double totalAttendance = dateList.Count;

                // Get student attendance
                List<double> attndPercentage = new List<double>();

                for (int i = 0; i < studentIdList.Count; i++)
                {
                    double totalAttndPerStudent = faceDB.getAttndByStudent(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"), studentIdList[i]);
                    attndPercentage.Add((totalAttndPerStudent / totalAttendance) * 100);
                    if (attndPercentage[i] < attndReq)
                    {
                        absentStudentsList.Add(studentIdList[i]);
                        absentPercentage.Add(Math.Round(attndPercentage[i], 2).ToString());
                    }
                }

                if (absentStudentsList.Count > 0)
                {
                    // Prevents window from opening if it is already opened
                    if (attndOffendersWinFrm == null)
                    {
                        attndOffendersWinFrm = new AttendanceOffenders(faceDB, absentStudentsList, absentPercentage);
                        attndOffendersWinFrm.FormClosed += attndOffendersWinClosed;
                    }
                    attndOffendersWinFrm.Show();
                }
                else
                {
                    MessageBox.Show("No data.");
                }
            }
            else
            {
                MessageBox.Show("No data.");
            }
        }

        private void attndOffendersWinClosed(object sender, FormClosedEventArgs e)
        {
            attndOffendersWinFrm = null;
        }

        private void btnGetAttndTable_Click(object sender, EventArgs e)
        {            
            course = listBoxCourses.SelectedItem.ToString();
            fromDate = fromDTPicker.Value.Date;
            toDate = toDTPicker.Value.Date;

            DataTable attndDataTable = faceDB.getAttndDataTable(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"));

            if (attndDataTable.Rows.Count > 0)
            {
                // Prevents window from opening if it is already opened
                if (classAttndTblWinFrm == null)
                {
                    classAttndTblWinFrm = new AttendanceTable(attndDataTable, course, fromDate, toDate);
                    classAttndTblWinFrm.FormClosed += classAttndTblWinClosed;
                }
                classAttndTblWinFrm.Show();
            }
            else
            {
                MessageBox.Show("No data.");
            }
        }

        private void classAttndTblWinClosed(object sender, FormClosedEventArgs e)
        {
            classAttndTblWinFrm = null;
        }

    }
}
