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
    public partial class AttendanceResult : Form
    {
        private string course;     
        private DatabaseOperations faceDB;
        private List<DateTime> dateList;
        private DateTime fromDate;
        private DateTime toDate;

        public AttendanceResult(string crs, DatabaseOperations db, List<DateTime> dt, DateTime from_date, DateTime to_date)
        {
            InitializeComponent();
            course = crs;
            faceDB = db;
            dateList = dt;
            fromDate = from_date;
            toDate = to_date;
        }

        private void showAttndBtn_Click(object sender, EventArgs e)
        {
            
        }

        private void AttendanceResult_Load(object sender, EventArgs e)
        {
            //Get total no. of students for the specfied course
            double totalStudents = faceDB.getNoCourseStudents(course);

            // Set title of chart            
            Title chartTitle = chart1.Titles.Add(course + " class attendance from " + fromDate.ToString("yyyy-MM-dd") + " to " + toDate.ToString("yyyy-MM-dd"));
            chartTitle.Font = new Font("Arial", 16, FontStyle.Bold);

            // Set chart axis
            chart1.ChartAreas["ChartArea1"].AxisY.Title = "Class Attendance (%)";
            chart1.ChartAreas["ChartArea1"].AxisX.Title = "Date";
            chart1.ChartAreas["ChartArea1"].AxisY.TitleFont = new Font("Arial", 12);
            chart1.ChartAreas["ChartArea1"].AxisX.TitleFont = new Font("Arial", 12);

            List<double> attndPercentage = new List<double>();
            for (int i = 0; i < dateList.Count; i++)
            {
                double totalStudentsPrsnt = faceDB.getAttndByDate(course, dateList[i].ToString("yyyy-MM-dd"));
                attndPercentage.Add((totalStudentsPrsnt / totalStudents) * 100);
                chart1.Series["Class Attendance (%)"].Points.AddXY(dateList[i].ToString("yyyy-MM-dd"), attndPercentage[i]);
            }                                      
        }

    }
}
