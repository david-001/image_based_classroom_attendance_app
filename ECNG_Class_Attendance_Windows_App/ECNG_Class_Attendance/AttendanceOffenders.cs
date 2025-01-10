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
    public partial class AttendanceOffenders : Form
    {
        private DatabaseOperations faceDB;             
        private List<string> firstNameList;
        private List<string> lastNameList;
        private List<string> imgList;
        private List<string> absentStudentsList;   
        private List<string> absentPercentage;

        public AttendanceOffenders(DatabaseOperations db, List<string> absStuList, List<string> absPerList)
        {
            InitializeComponent();
            faceDB = db;
            absentStudentsList = absStuList;
            absentPercentage = absPerList;
        }

        private void AbsentStudents_Load(object sender, EventArgs e)
        {                       
            listBoxStudentIds.DataSource = absentStudentsList;
            listBoxStudentIds.SetSelected(0, true);
            GetInfo();
        }

        private void GetInfo()
        {
            if (faceDB.getDataTable().Rows.Count > 0)
            {
                firstNameList = new List<string>();
                lastNameList = new List<string>();
                imgList = new List<string>();                
                string studentId = listBoxStudentIds.SelectedItem.ToString();
                faceDB.getFirstNames(studentId, firstNameList);
                faceDB.getLastNames(studentId, lastNameList);
                faceDB.getStudentImage(studentId, imgList);                
                lb1stName.Text = firstNameList[0];
                lb2ndName.Text = lastNameList[0];
                lbStudentId.Text = studentId;
                lbAbsentPercentage.Text = absentPercentage[listBoxStudentIds.SelectedIndex];
                //Get student image
                string img_path = imgList[0];
                WebRequest request = WebRequest.Create(img_path);
                WebResponse response = request.GetResponse();
                Stream stream = response.GetResponseStream();
                Image fetchedImg = Image.FromStream(stream);
                pbStudentImg.Image = fetchedImg;                
            }
        }

        private void studentIds_SelectIndexChanged(object sender, EventArgs e)
        {
            GetInfo();
        }

    }
}
