namespace ECNG_Class_Attendance
{
    partial class FaceRecognition
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FaceRecognition));
            this.btnDetectFace = new System.Windows.Forms.Button();
            this.btnLoadImg = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.LoadedImgBox = new System.Windows.Forms.PictureBox();
            this.pbDetectedFace = new System.Windows.Forms.PictureBox();
            this.btnRecognizeFace = new System.Windows.Forms.Button();
            this.pbRecognizedFace = new System.Windows.Forms.PictureBox();
            this.btnFirst = new System.Windows.Forms.Button();
            this.btnPrev = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.btnLast = new System.Windows.Forms.Button();
            this.rbtnEigenFaces = new System.Windows.Forms.RadioButton();
            this.rbtnFisherFaces = new System.Windows.Forms.RadioButton();
            this.rbtnLBPH = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.lbMinDist = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lbFR = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lbLastName = new System.Windows.Forms.Label();
            this.lbFirstName = new System.Windows.Forms.Label();
            this.lbStudentId = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.LoadedImgBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbDetectedFace)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbRecognizedFace)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnDetectFace
            // 
            this.btnDetectFace.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnDetectFace.Location = new System.Drawing.Point(93, 467);
            this.btnDetectFace.Name = "btnDetectFace";
            this.btnDetectFace.Size = new System.Drawing.Size(75, 25);
            this.btnDetectFace.TabIndex = 1;
            this.btnDetectFace.Text = "Detect Face";
            this.btnDetectFace.UseVisualStyleBackColor = true;
            this.btnDetectFace.Click += new System.EventHandler(this.btnDetectFace_Click);
            // 
            // btnLoadImg
            // 
            this.btnLoadImg.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnLoadImg.Location = new System.Drawing.Point(12, 467);
            this.btnLoadImg.Name = "btnLoadImg";
            this.btnLoadImg.Size = new System.Drawing.Size(75, 25);
            this.btnLoadImg.TabIndex = 2;
            this.btnLoadImg.Text = "Load Image";
            this.btnLoadImg.UseVisualStyleBackColor = true;
            this.btnLoadImg.Click += new System.EventHandler(this.btnLoadImg_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // LoadedImgBox
            // 
            this.LoadedImgBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.LoadedImgBox.Location = new System.Drawing.Point(12, 12);
            this.LoadedImgBox.Name = "LoadedImgBox";
            this.LoadedImgBox.Size = new System.Drawing.Size(540, 440);
            this.LoadedImgBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.LoadedImgBox.TabIndex = 3;
            this.LoadedImgBox.TabStop = false;
            // 
            // pbDetectedFace
            // 
            this.pbDetectedFace.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pbDetectedFace.Location = new System.Drawing.Point(18, 31);
            this.pbDetectedFace.Name = "pbDetectedFace";
            this.pbDetectedFace.Size = new System.Drawing.Size(100, 100);
            this.pbDetectedFace.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pbDetectedFace.TabIndex = 4;
            this.pbDetectedFace.TabStop = false;
            // 
            // btnRecognizeFace
            // 
            this.btnRecognizeFace.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnRecognizeFace.Location = new System.Drawing.Point(174, 467);
            this.btnRecognizeFace.Name = "btnRecognizeFace";
            this.btnRecognizeFace.Size = new System.Drawing.Size(95, 25);
            this.btnRecognizeFace.TabIndex = 5;
            this.btnRecognizeFace.Text = "Recognize Face";
            this.btnRecognizeFace.UseVisualStyleBackColor = true;
            this.btnRecognizeFace.Click += new System.EventHandler(this.btnRecognizeFace_Click);
            // 
            // pbRecognizedFace
            // 
            this.pbRecognizedFace.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pbRecognizedFace.Location = new System.Drawing.Point(136, 31);
            this.pbRecognizedFace.Name = "pbRecognizedFace";
            this.pbRecognizedFace.Size = new System.Drawing.Size(100, 100);
            this.pbRecognizedFace.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pbRecognizedFace.TabIndex = 6;
            this.pbRecognizedFace.TabStop = false;
            // 
            // btnFirst
            // 
            this.btnFirst.Location = new System.Drawing.Point(62, 137);
            this.btnFirst.Name = "btnFirst";
            this.btnFirst.Size = new System.Drawing.Size(25, 25);
            this.btnFirst.TabIndex = 8;
            this.btnFirst.Text = "|<";
            this.btnFirst.UseVisualStyleBackColor = true;
            this.btnFirst.Click += new System.EventHandler(this.btnFirst_Click);
            // 
            // btnPrev
            // 
            this.btnPrev.Location = new System.Drawing.Point(93, 137);
            this.btnPrev.Name = "btnPrev";
            this.btnPrev.Size = new System.Drawing.Size(25, 25);
            this.btnPrev.TabIndex = 9;
            this.btnPrev.Text = "<";
            this.btnPrev.UseVisualStyleBackColor = true;
            this.btnPrev.Click += new System.EventHandler(this.btnPrev_Click);
            // 
            // btnNext
            // 
            this.btnNext.Location = new System.Drawing.Point(136, 137);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(25, 25);
            this.btnNext.TabIndex = 10;
            this.btnNext.Text = ">";
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // btnLast
            // 
            this.btnLast.Location = new System.Drawing.Point(167, 137);
            this.btnLast.Name = "btnLast";
            this.btnLast.Size = new System.Drawing.Size(25, 25);
            this.btnLast.TabIndex = 11;
            this.btnLast.Text = ">|";
            this.btnLast.UseVisualStyleBackColor = true;
            this.btnLast.Click += new System.EventHandler(this.btnLast_Click);
            // 
            // rbtnEigenFaces
            // 
            this.rbtnEigenFaces.AutoSize = true;
            this.rbtnEigenFaces.Checked = true;
            this.rbtnEigenFaces.Location = new System.Drawing.Point(11, 21);
            this.rbtnEigenFaces.Name = "rbtnEigenFaces";
            this.rbtnEigenFaces.Size = new System.Drawing.Size(117, 17);
            this.rbtnEigenFaces.TabIndex = 13;
            this.rbtnEigenFaces.TabStop = true;
            this.rbtnEigenFaces.Text = "Eigenfaces Method";
            this.rbtnEigenFaces.UseVisualStyleBackColor = true;
            // 
            // rbtnFisherFaces
            // 
            this.rbtnFisherFaces.AutoSize = true;
            this.rbtnFisherFaces.Location = new System.Drawing.Point(11, 44);
            this.rbtnFisherFaces.Name = "rbtnFisherFaces";
            this.rbtnFisherFaces.Size = new System.Drawing.Size(118, 17);
            this.rbtnFisherFaces.TabIndex = 14;
            this.rbtnFisherFaces.TabStop = true;
            this.rbtnFisherFaces.Text = "Fisherfaces Method";
            this.rbtnFisherFaces.UseVisualStyleBackColor = true;
            // 
            // rbtnLBPH
            // 
            this.rbtnLBPH.AutoSize = true;
            this.rbtnLBPH.Location = new System.Drawing.Point(11, 67);
            this.rbtnLBPH.Name = "rbtnLBPH";
            this.rbtnLBPH.Size = new System.Drawing.Size(92, 17);
            this.rbtnLBPH.TabIndex = 15;
            this.rbtnLBPH.TabStop = true;
            this.rbtnLBPH.Text = "LBPH Method";
            this.rbtnLBPH.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbtnEigenFaces);
            this.groupBox1.Controls.Add(this.rbtnFisherFaces);
            this.groupBox1.Controls.Add(this.rbtnLBPH);
            this.groupBox1.Location = new System.Drawing.Point(567, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(286, 101);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Face Recognition Methods";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.lbMinDist);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.lbFR);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.lbLastName);
            this.groupBox2.Controls.Add(this.lbFirstName);
            this.groupBox2.Controls.Add(this.lbStudentId);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.pbDetectedFace);
            this.groupBox2.Controls.Add(this.btnNext);
            this.groupBox2.Controls.Add(this.pbRecognizedFace);
            this.groupBox2.Controls.Add(this.btnPrev);
            this.groupBox2.Controls.Add(this.btnLast);
            this.groupBox2.Controls.Add(this.btnFirst);
            this.groupBox2.Location = new System.Drawing.Point(567, 134);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(286, 318);
            this.groupBox2.TabIndex = 18;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Detected and Recognized Faces";
            // 
            // lbMinDist
            // 
            this.lbMinDist.AutoSize = true;
            this.lbMinDist.Location = new System.Drawing.Point(151, 284);
            this.lbMinDist.Name = "lbMinDist";
            this.lbMinDist.Size = new System.Drawing.Size(27, 13);
            this.lbMinDist.TabIndex = 20;
            this.lbMinDist.Text = "N/A";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(15, 284);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 13);
            this.label4.TabIndex = 21;
            this.label4.Text = "Minimum Distance:";
            // 
            // lbFR
            // 
            this.lbFR.AutoSize = true;
            this.lbFR.Location = new System.Drawing.Point(151, 176);
            this.lbFR.Name = "lbFR";
            this.lbFR.Size = new System.Drawing.Size(27, 13);
            this.lbFR.TabIndex = 19;
            this.lbFR.Text = "N/A";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(15, 176);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(133, 13);
            this.label5.TabIndex = 18;
            this.label5.Text = "Face Recognition Method:";
            // 
            // lbLastName
            // 
            this.lbLastName.AutoSize = true;
            this.lbLastName.Location = new System.Drawing.Point(151, 257);
            this.lbLastName.Name = "lbLastName";
            this.lbLastName.Size = new System.Drawing.Size(27, 13);
            this.lbLastName.TabIndex = 17;
            this.lbLastName.Text = "N/A";
            // 
            // lbFirstName
            // 
            this.lbFirstName.AutoSize = true;
            this.lbFirstName.Location = new System.Drawing.Point(151, 230);
            this.lbFirstName.Name = "lbFirstName";
            this.lbFirstName.Size = new System.Drawing.Size(27, 13);
            this.lbFirstName.TabIndex = 16;
            this.lbFirstName.Text = "N/A";
            // 
            // lbStudentId
            // 
            this.lbStudentId.AutoSize = true;
            this.lbStudentId.Location = new System.Drawing.Point(151, 203);
            this.lbStudentId.Name = "lbStudentId";
            this.lbStudentId.Size = new System.Drawing.Size(27, 13);
            this.lbStudentId.TabIndex = 15;
            this.lbStudentId.Text = "N/A";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 257);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Last Name:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 230);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "First Name:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 203);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 12;
            this.label1.Text = "Student ID:";
            // 
            // FaceRecognition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(864, 502);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnRecognizeFace);
            this.Controls.Add(this.LoadedImgBox);
            this.Controls.Add(this.btnLoadImg);
            this.Controls.Add(this.btnDetectFace);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FaceRecognition";
            this.Text = "Face Recognition";
            this.Load += new System.EventHandler(this.FaceRecognition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.LoadedImgBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbDetectedFace)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbRecognizedFace)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnDetectFace;
        private System.Windows.Forms.Button btnLoadImg;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.PictureBox LoadedImgBox;
        private System.Windows.Forms.PictureBox pbDetectedFace;
        private System.Windows.Forms.Button btnRecognizeFace;
        private System.Windows.Forms.PictureBox pbRecognizedFace;
        private System.Windows.Forms.Button btnFirst;
        private System.Windows.Forms.Button btnPrev;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.Button btnLast;
        private System.Windows.Forms.RadioButton rbtnEigenFaces;
        private System.Windows.Forms.RadioButton rbtnFisherFaces;
        private System.Windows.Forms.RadioButton rbtnLBPH;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbStudentId;
        private System.Windows.Forms.Label lbLastName;
        private System.Windows.Forms.Label lbFirstName;
        private System.Windows.Forms.Label lbFR;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lbMinDist;
        private System.Windows.Forms.Label label4;
    }
}

