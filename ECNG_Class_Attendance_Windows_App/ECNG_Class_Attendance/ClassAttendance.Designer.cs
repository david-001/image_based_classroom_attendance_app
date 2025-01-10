namespace ECNG_Class_Attendance
{
    partial class ClassAttendance
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ClassAttendance));
            this.btnFaceRecognition = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnStudentInfo = new System.Windows.Forms.Button();
            this.btnUpdateAttendance = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.listBoxCourses = new System.Windows.Forms.ListBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnGetAttndTable = new System.Windows.Forms.Button();
            this.btnGetAttndOffenders = new System.Windows.Forms.Button();
            this.txtBoxAttndReq = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnGetStuAttnd = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnGetAttendance = new System.Windows.Forms.Button();
            this.fromDTPicker = new System.Windows.Forms.DateTimePicker();
            this.toDTPicker = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnFaceRecognition
            // 
            this.btnFaceRecognition.Location = new System.Drawing.Point(108, 513);
            this.btnFaceRecognition.Name = "btnFaceRecognition";
            this.btnFaceRecognition.Size = new System.Drawing.Size(104, 23);
            this.btnFaceRecognition.TabIndex = 0;
            this.btnFaceRecognition.Text = "Face Recognition";
            this.btnFaceRecognition.UseVisualStyleBackColor = true;
            this.btnFaceRecognition.Click += new System.EventHandler(this.btnFaceRecognition_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(435, 258);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            // 
            // btnStudentInfo
            // 
            this.btnStudentInfo.Location = new System.Drawing.Point(27, 513);
            this.btnStudentInfo.Name = "btnStudentInfo";
            this.btnStudentInfo.Size = new System.Drawing.Size(75, 23);
            this.btnStudentInfo.TabIndex = 4;
            this.btnStudentInfo.Text = "Student Info";
            this.btnStudentInfo.UseVisualStyleBackColor = true;
            this.btnStudentInfo.Click += new System.EventHandler(this.btnStudentInfo_Click);
            // 
            // btnUpdateAttendance
            // 
            this.btnUpdateAttendance.Location = new System.Drawing.Point(266, 195);
            this.btnUpdateAttendance.Name = "btnUpdateAttendance";
            this.btnUpdateAttendance.Size = new System.Drawing.Size(156, 23);
            this.btnUpdateAttendance.TabIndex = 5;
            this.btnUpdateAttendance.Text = "Update Attendance Records";
            this.btnUpdateAttendance.UseVisualStyleBackColor = true;
            this.btnUpdateAttendance.Click += new System.EventHandler(this.btnUpdateAttendance_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(263, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Select course:";
            // 
            // listBoxCourses
            // 
            this.listBoxCourses.FormattingEnabled = true;
            this.listBoxCourses.Location = new System.Drawing.Point(266, 29);
            this.listBoxCourses.Name = "listBoxCourses";
            this.listBoxCourses.Size = new System.Drawing.Size(156, 160);
            this.listBoxCourses.TabIndex = 7;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnGetAttndTable);
            this.groupBox1.Controls.Add(this.btnGetAttndOffenders);
            this.groupBox1.Controls.Add(this.txtBoxAttndReq);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.btnGetStuAttnd);
            this.groupBox1.Controls.Add(this.btnUpdateAttendance);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.listBoxCourses);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.btnGetAttendance);
            this.groupBox1.Controls.Add(this.fromDTPicker);
            this.groupBox1.Controls.Add(this.toDTPicker);
            this.groupBox1.Location = new System.Drawing.Point(12, 276);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(435, 229);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Attendance";
            // 
            // btnGetAttndTable
            // 
            this.btnGetAttndTable.Location = new System.Drawing.Point(132, 180);
            this.btnGetAttndTable.Name = "btnGetAttndTable";
            this.btnGetAttndTable.Size = new System.Drawing.Size(120, 38);
            this.btnGetAttndTable.TabIndex = 12;
            this.btnGetAttndTable.Text = "Get Attendance Record Table";
            this.btnGetAttndTable.UseVisualStyleBackColor = true;
            this.btnGetAttndTable.Click += new System.EventHandler(this.btnGetAttndTable_Click);
            // 
            // btnGetAttndOffenders
            // 
            this.btnGetAttndOffenders.Location = new System.Drawing.Point(132, 138);
            this.btnGetAttndOffenders.Name = "btnGetAttndOffenders";
            this.btnGetAttndOffenders.Size = new System.Drawing.Size(120, 36);
            this.btnGetAttndOffenders.TabIndex = 13;
            this.btnGetAttndOffenders.Text = "Get Attendance Offenders";
            this.btnGetAttndOffenders.UseVisualStyleBackColor = true;
            this.btnGetAttndOffenders.Click += new System.EventHandler(this.btnGetAttndOffenders_Click);
            // 
            // txtBoxAttndReq
            // 
            this.txtBoxAttndReq.Location = new System.Drawing.Point(154, 110);
            this.txtBoxAttndReq.Name = "txtBoxAttndReq";
            this.txtBoxAttndReq.Size = new System.Drawing.Size(98, 20);
            this.txtBoxAttndReq.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 112);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(125, 13);
            this.label7.TabIndex = 9;
            this.label7.Text = "Attendance Requirement";
            // 
            // btnGetStuAttnd
            // 
            this.btnGetStuAttnd.Location = new System.Drawing.Point(15, 180);
            this.btnGetStuAttnd.Name = "btnGetStuAttnd";
            this.btnGetStuAttnd.Size = new System.Drawing.Size(111, 38);
            this.btnGetStuAttnd.TabIndex = 8;
            this.btnGetStuAttnd.Text = "Get Student Attendance";
            this.btnGetStuAttnd.UseVisualStyleBackColor = true;
            this.btnGetStuAttnd.Click += new System.EventHandler(this.btnGetStuAttnd_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 76);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(23, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "To:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 29);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(33, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "From:";
            // 
            // btnGetAttendance
            // 
            this.btnGetAttendance.Location = new System.Drawing.Point(15, 138);
            this.btnGetAttendance.Name = "btnGetAttendance";
            this.btnGetAttendance.Size = new System.Drawing.Size(111, 36);
            this.btnGetAttendance.TabIndex = 1;
            this.btnGetAttendance.Text = "Get Class Attendance";
            this.btnGetAttendance.UseVisualStyleBackColor = true;
            this.btnGetAttendance.Click += new System.EventHandler(this.btnGetAttendance_Click);
            // 
            // fromDTPicker
            // 
            this.fromDTPicker.Location = new System.Drawing.Point(48, 29);
            this.fromDTPicker.Name = "fromDTPicker";
            this.fromDTPicker.Size = new System.Drawing.Size(204, 20);
            this.fromDTPicker.TabIndex = 0;
            // 
            // toDTPicker
            // 
            this.toDTPicker.Location = new System.Drawing.Point(48, 76);
            this.toDTPicker.Name = "toDTPicker";
            this.toDTPicker.Size = new System.Drawing.Size(204, 20);
            this.toDTPicker.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(380, 232);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "David Akim";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(298, 251);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(142, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = " © 2016 All Rights Reserved";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial Black", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Blue;
            this.label6.Location = new System.Drawing.Point(43, 23);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(373, 38);
            this.label6.TabIndex = 11;
            this.label6.Text = "ECNG Class Attendance";
            // 
            // ClassAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(461, 548);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnStudentInfo);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnFaceRecognition);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "ClassAttendance";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.Text = "ECNG Class Attendance";
            this.Load += new System.EventHandler(this.ClassAttendance_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnFaceRecognition;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnStudentInfo;
        private System.Windows.Forms.Button btnUpdateAttendance;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox listBoxCourses;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker fromDTPicker;
        private System.Windows.Forms.DateTimePicker toDTPicker;
        private System.Windows.Forms.Button btnGetAttendance;
        private System.Windows.Forms.Button btnGetStuAttnd;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtBoxAttndReq;
        private System.Windows.Forms.Button btnGetAttndOffenders;
        private System.Windows.Forms.Button btnGetAttndTable;
    }
}

