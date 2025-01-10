using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ECNG_Class_Attendance
{
    public partial class AttendanceTable : Form
    {
        private DataTable attndDataTable;
        private string course;
        private DateTime fromDate;
        private DateTime toDate;


        public AttendanceTable(DataTable dt, string crs, DateTime from_date, DateTime to_date)
        {
            InitializeComponent();
            attndDataTable = dt;
            course = crs;
            fromDate = from_date;
            toDate = to_date;
        }

        private void AttendanceTable_Load(object sender, EventArgs e)
        {
            lbCourse.Text = course;
            lbFromDate.Text = fromDate.ToString("yyyy-MM-dd");
            lbToDate.Text = toDate.ToString("yyyy-MM-dd");
            dataGridView1.DataSource = attndDataTable;
            dataGridView1.Columns["id"].Visible = false;
            dataGridView1.Columns["student_id"].HeaderText = "Student Id";
            dataGridView1.Columns["first_name"].HeaderText = "First Name";
            dataGridView1.Columns["last_name"].HeaderText = "Last Name";
            dataGridView1.Columns["date"].HeaderText = "Date";
            dataGridView1.Columns["date"].DefaultCellStyle.Format = "yyyy-MM-dd";
        }
    }
}
