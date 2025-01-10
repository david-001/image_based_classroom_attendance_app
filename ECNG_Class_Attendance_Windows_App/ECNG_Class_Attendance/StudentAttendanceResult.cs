using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace ECNG_Class_Attendance
{
    public partial class StudentAttendanceResult : Form
    {
        private string course;
        private DatabaseOperations faceDB;
        private List<DateTime> dateList;   
        private DateTime fromDate;
        private DateTime toDate;
        private int attndReq;

        public StudentAttendanceResult(string crs, DatabaseOperations db, List<DateTime> dt, DateTime from_date, DateTime to_date, int attnd_req)
        {
            InitializeComponent();
            course = crs;
            faceDB = db;
            dateList = dt;
            fromDate = from_date;
            toDate = to_date;
            attndReq = attnd_req;         
        }

        private void StudentAttendanceResult_Load(object sender, EventArgs e)
        {
            List<string> studentIdList = new List<string>();
            faceDB.getCourseStudents(course, studentIdList);

            //Get total attendance for the specified period
            double totalAttendance = dateList.Count;

            // Student attendance (%)
            List<double> attndPercentage = new List<double>();

            // Set title of chart
            Title chartTitle = chart1.Titles.Add(course + " student attendance from " + fromDate.ToString("yyyy-MM-dd") + " to " + toDate.ToString("yyyy-MM-dd"));
            chartTitle.Font = new Font("Arial", 16, FontStyle.Bold);
          
            // Set chart axis
            chart1.ChartAreas["ChartArea1"].AxisY.Title = "Student Attendance (%)";            
            chart1.ChartAreas["ChartArea1"].AxisX.Title = "Student Id";
            chart1.ChartAreas["ChartArea1"].AxisY.TitleFont = new Font("Arial", 12);
            chart1.ChartAreas["ChartArea1"].AxisX.TitleFont = new Font("Arial", 12);

            // Create threshold line
            StripLine stripline = new StripLine();
            stripline.Interval = 0;
            stripline.IntervalOffset = attndReq;
            stripline.StripWidth = 1;
            stripline.BackColor = Color.Red;
            

            for (int i = 0; i < studentIdList.Count; i++)
            {
                double totalAttndPerStudent = faceDB.getAttndByStudent(course, fromDate.ToString("yyyy-MM-dd"), toDate.ToString("yyyy-MM-dd"), studentIdList[i]);
                attndPercentage.Add((totalAttndPerStudent / totalAttendance) * 100);
                chart1.Series["Student Attendance (%)"].Points.AddXY(studentIdList[i], attndPercentage[i]);                
            }
            chart1.ChartAreas["ChartArea1"].AxisY.StripLines.Add(stripline);            

        }

    }
}
