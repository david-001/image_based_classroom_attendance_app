using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Drawing;
using System.Net;
using System.Windows.Forms;

namespace ECNG_Class_Attendance
{
    public class DatabaseOperations
    {
        //=============CONNECTION TO DATABASE=============
        //Variables for connection to database
        private MySqlConnection Connection;
        private string server = "localhost";
        private string database = "dakim_ecng_database";
        private string uid = "root";
        private string password = "";
        private string port = "3306";
        private MySqlDataAdapter DataAdapter; //Create a Data Adapter(to get values from our database Table)
        private DataTable TrainingSetTable;
        private MySqlDataAdapter attendanceDataAdapter;
        private DataTable attendanceDataTable;
                
        //VARIABLES USED FOR NAVIGATING THROUGH TABLE ROWS
        private int TotalRows = 0;    // index tracker used for finding last row in table
        private int rowNumber = 0;    // index tracker used for navigation when reading data from table

        //Connects to database using Sql connection
        public void ConnectToDatabase()
        {
            //Create an DbConnection
            Connection = new MySqlConnection();

            //Set path of DB file           
            Connection.ConnectionString = "Server=" + server + ";" + "Port=" + port +";" + "Database=" + database + ";" + "Uid=" + uid + ";" + "Pwd=" + password;

            //Open connection to DB
            Connection.Open();

            //Tell Data Adapter what to get from which table our database
            DataAdapter = new MySqlDataAdapter("Select * from facestable", Connection);

            //Command Builder is necessary for updating DataAdapter and thus the database
            MySqlCommandBuilder CommandBuilder = new MySqlCommandBuilder(DataAdapter);

            //Create Data table
            TrainingSetTable = new DataTable();

            //Fill our our created data Table "TSTable" with whatever data adapter has fetched
            DataAdapter.Fill(TrainingSetTable);

            //// Set TotalRows = no. of row in our data table
            //// this needs to be done only once so that later on the new image can
            //// then be stored at a new row added to the end of the table, each time
            //if (TrainingSetTable.Rows.Count != 0)
            //{
            //    TotalRows = TrainingSetTable.Rows.Count;
            //}

        }

        //Refreshes connection to Database to load latest data
        public void RefreshDBConnection()
        {
            if (Connection.State.Equals(ConnectionState.Open))
            {
                Connection.Close();
                TrainingSetTable.Clear();
                ConnectToDatabase();
            }
        }

        //Get Face Images From Database
        public Image GetFaceFromDB()
        {
           
            Image FetchedImg;

            if (TotalRows > 0)
            {
                //Get image path
                string img_path = (string) TrainingSetTable.Rows[rowNumber]["img_path"];
                WebRequest request = WebRequest.Create(img_path);
                WebResponse response = request.GetResponse();
                Stream stream = response.GetResponseStream();
                FetchedImg = Image.FromStream(stream);

                //Return this fetched image
                return FetchedImg;
            }
            else
            {
                FetchedImg = (Image)(new Bitmap("Unavailable.bmp"));
                return FetchedImg;
            }

        }

        public DataTable getDataTable()
        {
            return TrainingSetTable;
        }

        //public int getRowNumber()
        //{
        //    return rowNumber;
        //}

        //public void setRowNumber(int r)
        //{
        //    rowNumber = r;
        //}

        // Ids for face recognition process
        public void getIds(List<int> idList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand faceIdSelect = new MySqlCommand("Select id from facestable", Connection);
                MySqlDataReader faceIdReader = faceIdSelect.ExecuteReader();
                while (faceIdReader.Read())
                {
                    for (int i = 0; i < faceIdReader.FieldCount; i++)
                    {
                        if (faceIdReader.GetFieldType(i) == typeof(int))
                        {
                            idList.Add(faceIdReader.GetInt32(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        // Training images for face recognition process
        public void getTrainingImages(List<Image> trainingImages)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand faceImgSelect = new MySqlCommand("Select img_path from facestable", Connection);
                MySqlDataReader faceImgReader = faceImgSelect.ExecuteReader();
                Stream stream;
                Image FetchedImg;

                while (faceImgReader.Read())
                {
                    for (int i = 0; i < faceImgReader.FieldCount; i++)
                    {
                        if (faceImgReader.GetFieldType(i) == typeof(string))
                        {
                            string img_path = (string)faceImgReader.GetValue(i);
                            WebRequest request = WebRequest.Create(img_path);
                            WebResponse response = request.GetResponse();
                            stream = response.GetResponseStream();
                            FetchedImg = Image.FromStream(stream);
                            trainingImages.Add(FetchedImg);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getFirstNames(string studentId, List<string> firstName)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand firstNameSelect = new MySqlCommand("Select distinct first_name from facestable where student_id='" + studentId + "'", Connection);
                MySqlDataReader firstNameReader = firstNameSelect.ExecuteReader();
                while (firstNameReader.Read())
                {
                    for (int i = 0; i < firstNameReader.FieldCount; i++)
                    {
                        if (firstNameReader.GetFieldType(i) == typeof(string))
                        {
                            firstName.Add(firstNameReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getLastNames(string studentId, List<string> lastName)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand lastNameSelect = new MySqlCommand("Select distinct last_name from facestable where student_id='" + studentId + "'", Connection);
                MySqlDataReader lastNameReader = lastNameSelect.ExecuteReader();
                while (lastNameReader.Read())
                {
                    for (int i = 0; i < lastNameReader.FieldCount; i++)
                    {
                        if (lastNameReader.GetFieldType(i) == typeof(string))
                        {
                            lastName.Add(lastNameReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        // Get student ids for face recognition
        public void getStudentIds(int index, List<string> studentId)
        {            
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();
            
            try
            {                
                MySqlCommand studentIdSelect = new MySqlCommand("Select distinct student_id from facestable where id=" + index + "", Connection);
                MySqlDataReader studentIdReader = studentIdSelect.ExecuteReader();
                while (studentIdReader.Read())
                {                    
                    for (int i = 0; i < studentIdReader.FieldCount; i++)
                    {
                        if (studentIdReader.GetFieldType(i) == typeof(string))
                        {                            
                            studentId.Add(studentIdReader.GetString(i));                            
                        }
                    }
                }                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());                
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getAllStudentIds(List<string> studentId)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand studentIdSelect = new MySqlCommand("Select distinct student_id from facestable order by student_id asc", Connection);
                MySqlDataReader studentIdReader = studentIdSelect.ExecuteReader();
                while (studentIdReader.Read())
                {
                    for (int i = 0; i < studentIdReader.FieldCount; i++)
                    {
                        if (studentIdReader.GetFieldType(i) == typeof(string))
                        {
                            studentId.Add(studentIdReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }


        public void getStudentImage(string studentId, List<string> imgList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand imgSelect = new MySqlCommand("Select img_path from facestable where student_id='" + studentId + "'", Connection);
                MySqlDataReader imgReader = imgSelect.ExecuteReader();

                while (imgReader.Read())
                {
                    for (int i = 0; i < imgReader.FieldCount; i++)
                    {
                        if (imgReader.GetFieldType(i) == typeof(string))
                        {
                            imgList.Add(imgReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getClassImage(string course, string date, List<string> imgList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand imgSelect = new MySqlCommand("Select path from attendanceimage where course='" + course + "' and date='" + date + "'", Connection);
                MySqlDataReader imgReader = imgSelect.ExecuteReader();

                while (imgReader.Read())
                {
                    for (int i = 0; i < imgReader.FieldCount; i++)
                    {
                        if (imgReader.GetFieldType(i) == typeof(string))
                        {
                            imgList.Add(imgReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getAttndDates(string course, List<DateTime> dateList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand dateSelect = new MySqlCommand("Select distinct date from attendanceimage where course='" + course + "' order by date", Connection);
                MySqlDataReader dateReader = dateSelect.ExecuteReader();

                while (dateReader.Read())
                {
                    for (int i = 0; i < dateReader.FieldCount; i++)
                    {
                        if (dateReader.GetFieldType(i) == typeof(DateTime))
                        {
                            dateList.Add(dateReader.GetDateTime(i));                            
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getStudentCourses(string studentId, List<string> courseList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();
            
            try
            {
                MySqlCommand courseSelect = new MySqlCommand("Select distinct course from coursesinfo where student_id='" + studentId + "' order by course asc", Connection);
                MySqlDataReader courseReader = courseSelect.ExecuteReader();

                while (courseReader.Read())
                {
                    for (int i = 0; i < courseReader.FieldCount; i++)
                    {
                        if (courseReader.GetFieldType(i) == typeof(string))
                        {
                            courseList.Add(courseReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }        

        public void getAllCourses(List<string> courseList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            // Get courses
            try
            {
                MySqlCommand courseSelect = new MySqlCommand("Select distinct course from coursesinfo order by course asc", Connection);
                MySqlDataReader courseReader = courseSelect.ExecuteReader();

                while (courseReader.Read())
                {
                    for (int i = 0; i < courseReader.FieldCount; i++)
                    {
                        if (courseReader.GetFieldType(i) == typeof(string))
                        {
                            courseList.Add(courseReader.GetString(i));
                        }
                    }
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getCourseStudents(string course, List<string> studentIdList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            // Get courses
            try
            {
                MySqlCommand studentsSelect = new MySqlCommand("Select student_id from coursesinfo where course='" + course + "' order by student_id asc", Connection);
                MySqlDataReader studentsReader = studentsSelect.ExecuteReader();

                while (studentsReader.Read())
                {
                    for (int i = 0; i < studentsReader.FieldCount; i++)
                    {
                        if (studentsReader.GetFieldType(i) == typeof(string))
                        {
                            studentIdList.Add(studentsReader.GetString(i));
                        }
                    }
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }        

        public void checkDuplStudent(string course, string date, List<string> studentIdList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand studentsSelect;
                if (course == "ECNG 3034")
                {
                    studentsSelect = new MySqlCommand("Select student_id from ecng3034attendance where date='" + date + "' order by student_id asc", Connection);
                }
                else if (course == "ECNG 6706")
                {
                    studentsSelect = new MySqlCommand("Select student_id from ecng6706attendance where date='" + date + "' order by student_id asc", Connection);
                }
                else if (course == "ECNG 7000")
                {
                    studentsSelect = new MySqlCommand("Select student_id from ecng7000attendance where date='" + date + "' order by student_id asc", Connection);
                }
                else
                {
                    studentsSelect = new MySqlCommand("Select student_id from ecng3034attendance where date='" + date + "' order by student_id asc", Connection);
                }

                MySqlDataReader studentsReader = studentsSelect.ExecuteReader();

                while (studentsReader.Read())
                {
                    for (int i = 0; i < studentsReader.FieldCount; i++)
                    {
                        if (studentsReader.GetFieldType(i) == typeof(string))
                        {
                            studentIdList.Add(studentsReader.GetString(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void getRecordedDates(string course, List<DateTime> dateList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand dateSelect;
                if (course == "ECNG 3034")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng3034attendance order by date", Connection);
                }
                else if (course == "ECNG 6706")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng6706attendance order by date", Connection);
                }
                else if (course == "ECNG 7000")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng7000attendance order by date", Connection);
                }
                else
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng3034attendance order by date", Connection);
                }

                MySqlDataReader dateReader = dateSelect.ExecuteReader();

                while (dateReader.Read())
                {
                    for (int i = 0; i < dateReader.FieldCount; i++)
                    {
                        if (dateReader.GetFieldType(i) == typeof(DateTime))
                        {
                            dateList.Add(dateReader.GetDateTime(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public void enterAttendance(string course, string studentId, string firstName, string lastName, string date)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();
            
            try
            {
                if (course == "ECNG 3034")
                {                               
                    MySqlCommand insertAttendance = new MySqlCommand("Insert into ecng3034attendance (student_id,first_name,last_name,date) VALUES('" + studentId + "','" + firstName + "','" + lastName + "','" + date + "')", Connection);
                    insertAttendance.ExecuteNonQuery();
                }
                else if (course == "ECNG 6706")
                {                        
                    MySqlCommand insertAttendance = new MySqlCommand("Insert into ecng6706attendance (student_id,first_name,last_name,date) VALUES('" + studentId + "','" + firstName + "','" + lastName + "','" + date + "')", Connection);
                    insertAttendance.ExecuteNonQuery();
                }
                else if (course == "ECNG 7000")
                {
                    //MySqlCommand insertAttendance = new MySqlCommand("Insert into ecng7000attendance (id, student_id,first_name,last_name,attendance,date) VALUES('" + (getEcng7000AttndTotalRows()+1).ToString() + "','" + studentId + "','" + firstName + "','" + lastName + "','" + attendance + "','" + date + "')", Connection);                
                    MySqlCommand insertAttendance = new MySqlCommand("Insert into ecng7000attendance (student_id,first_name,last_name,date) VALUES('" + studentId + "','" + firstName + "','" + lastName + "','" + date + "')", Connection);
                    insertAttendance.ExecuteNonQuery();
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public int getAttndByDate(string course, string date)
        {
            int count = 0;

            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand countSelect;
                if (course == "ECNG 3034")
                {
                    countSelect = new MySqlCommand("Select count(date) from ecng3034attendance where date ='" + date + "'", Connection);
                }
                else if (course == "ECNG 6706")
                {
                    countSelect = new MySqlCommand("Select count(date) from ecng6706attendance where date ='" + date + "'", Connection);
                }
                else if (course == "ECNG 7000")
                {
                    countSelect = new MySqlCommand("Select count(date) from ecng7000attendance where date ='" + date + "'", Connection);
                }
                else
                {
                    countSelect = new MySqlCommand("Select count(date) from ecng3034attendance where date ='" + date + "'", Connection);
                }

                count = int.Parse(countSelect.ExecuteScalar().ToString());                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            return count;
        }

        public int getAttndByStudent(string course, string fromDate, string toDate, string studentId)
        {
            int count = 0;

            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand countSelect;
                if (course == "ECNG 3034")
                {
                    countSelect = new MySqlCommand("Select count(student_id) from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "' and student_id = '" + studentId + "'", Connection);
                }
                else if (course == "ECNG 6706")
                {
                    countSelect = new MySqlCommand("Select count(student_id) from ecng6706attendance where date between '" + fromDate + "' and '" + toDate + "' and student_id = '" + studentId + "'", Connection);
                }
                else if (course == "ECNG 7000")
                {
                    countSelect = new MySqlCommand("Select count(student_id) from ecng7000attendance where date between '" + fromDate + "' and '" + toDate + "' and student_id = '" + studentId + "'", Connection);
                }
                else
                {
                    countSelect = new MySqlCommand("Select count(student_id) from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "' and student_id = '" + studentId + "'", Connection);
                }

                count = int.Parse(countSelect.ExecuteScalar().ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            return count;
        }

        public int getNoCourseStudents(string course)
        {
            int count = 0;

            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand countSelect = new MySqlCommand("Select count(student_id) from coursesinfo where course ='" + course + "'", Connection);                
                count = int.Parse(countSelect.ExecuteScalar().ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            return count;
        }

        public void getDatesBySelection(string course, string fromDate, string toDate, List<DateTime> dateList)
        {
            if (Connection.State.Equals(ConnectionState.Closed))
                Connection.Open();

            try
            {
                MySqlCommand dateSelect;
                if (course == "ECNG 3034")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "' order by date", Connection);
                }
                else if (course == "ECNG 6706")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng6706attendance where date between '" + fromDate + "' and '" + toDate + "' order by date", Connection);
                }
                else if (course == "ECNG 7000")
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng7000attendance where date between '" + fromDate + "' and '" + toDate + "' order by date", Connection);
                }
                else
                {
                    dateSelect = new MySqlCommand("Select distinct date from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "' order by date", Connection);
                }

                MySqlDataReader dateReader = dateSelect.ExecuteReader();

                while (dateReader.Read())
                {
                    for (int i = 0; i < dateReader.FieldCount; i++)
                    {
                        if (dateReader.GetFieldType(i) == typeof(DateTime))
                        {
                            dateList.Add(dateReader.GetDateTime(i));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                RefreshDBConnection();
            }
        }

        public DataTable getAttndDataTable(string course, string fromDate, string toDate)
        {           
            attendanceDataTable = new DataTable();
            if (course == "ECNG 3034")
            {
                attendanceDataAdapter = new MySqlDataAdapter("Select * from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "'", Connection);                                                           
            }
            else if (course == "ECNG 6706")
            {
                attendanceDataAdapter = new MySqlDataAdapter("Select * from ecng6706attendance where date between '" + fromDate + "' and '" + toDate + "'", Connection);
            }
            else if (course == "ECNG 7000")
            {
                attendanceDataAdapter = new MySqlDataAdapter("Select * from ecng7000attendance where date between '" + fromDate + "' and '" + toDate + "'", Connection);
            }
            else
            {
                attendanceDataAdapter = new MySqlDataAdapter("Select * from ecng3034attendance where date between '" + fromDate + "' and '" + toDate + "'", Connection);
            }            
            MySqlCommandBuilder CommandBuilder = new MySqlCommandBuilder(attendanceDataAdapter);
            attendanceDataAdapter.Fill(attendanceDataTable);            
            return attendanceDataTable;
        }        

    }
}
