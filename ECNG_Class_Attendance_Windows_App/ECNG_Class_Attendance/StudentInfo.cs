using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ECNG_Class_Attendance
{
    public partial class StudentInfo : Form
    {
        private DatabaseOperations faceDB;
        private List<string> studentIdList;
        private List<string> firstNameList;
        private List<string> lastNameList;
        private List<string> imgList;
        private List<string> courseList;

        public StudentInfo(DatabaseOperations db)
        {
            InitializeComponent();
            faceDB = db;
        }

        private void StudentInfo_Load(object sender, EventArgs e)
        {
            studentIdList = new List<string>();
            faceDB.getAllStudentIds(studentIdList);
            listBoxStudentIds.DataSource = studentIdList;
            listBoxStudentIds.SetSelected(0,true);
            GetInfo();
        }
        
        private void GetInfo()
        {
            if (faceDB.getDataTable().Rows.Count > 0)
            {
                firstNameList = new List<string>();
                lastNameList = new List<string>();
                imgList = new List<string>();
                courseList = new List<string>();
                string studentId = listBoxStudentIds.SelectedItem.ToString();
                faceDB.getFirstNames(studentId, firstNameList);
                faceDB.getLastNames(studentId, lastNameList);
                faceDB.getStudentImage(studentId, imgList);
                faceDB.getStudentCourses(studentId, courseList);
                //faceDB.getStudentInfo(studentId, firstNameList, lastNameList, imgList, courseList);
                lb1stName.Text = firstNameList[0];
                lb2ndName.Text = lastNameList[0];
                lbStudentId.Text = studentId;
                //Get student image
                string img_path = imgList[0];
                WebRequest request = WebRequest.Create(img_path);
                WebResponse response = request.GetResponse();
                Stream stream = response.GetResponseStream();
                Image fetchedImg = Image.FromStream(stream);
                pbStudentImg.Image = fetchedImg;
                listBoxCourses.DataSource = courseList;
            }
        }

        private void studentIds_SelectIndexChanged(object sender, EventArgs e)
        {
            GetInfo();
        }
    }
}
