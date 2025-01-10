namespace ECNG_FaceDetection
{
    partial class FaceDetectionForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FaceDetectionForm));
            this.btnLoadImg = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.btnDetectFace = new System.Windows.Forms.Button();
            this.LoadedImgBox = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.LoadedImgBox)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLoadImg
            // 
            this.btnLoadImg.Location = new System.Drawing.Point(12, 427);
            this.btnLoadImg.Name = "btnLoadImg";
            this.btnLoadImg.Size = new System.Drawing.Size(75, 23);
            this.btnLoadImg.TabIndex = 0;
            this.btnLoadImg.Text = "Load Image";
            this.btnLoadImg.UseVisualStyleBackColor = true;
            this.btnLoadImg.Click += new System.EventHandler(this.btnLoadImg_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // btnDetectFace
            // 
            this.btnDetectFace.Location = new System.Drawing.Point(103, 427);
            this.btnDetectFace.Name = "btnDetectFace";
            this.btnDetectFace.Size = new System.Drawing.Size(75, 23);
            this.btnDetectFace.TabIndex = 3;
            this.btnDetectFace.Text = "Detect Face";
            this.btnDetectFace.UseVisualStyleBackColor = true;
            this.btnDetectFace.Click += new System.EventHandler(this.btnDetectFace_Click);
            // 
            // LoadedImgBox
            // 
            this.LoadedImgBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.LoadedImgBox.Location = new System.Drawing.Point(12, 12);
            this.LoadedImgBox.Name = "LoadedImgBox";
            this.LoadedImgBox.Size = new System.Drawing.Size(500, 400);
            this.LoadedImgBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.LoadedImgBox.TabIndex = 5;
            this.LoadedImgBox.TabStop = false;
            // 
            // FaceDetectionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(524, 462);
            this.Controls.Add(this.LoadedImgBox);
            this.Controls.Add(this.btnDetectFace);
            this.Controls.Add(this.btnLoadImg);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FaceDetectionForm";
            this.Text = "Face Detection";
            this.Load += new System.EventHandler(this.FaceDetectionForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.LoadedImgBox)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnLoadImg;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button btnDetectFace;       
        private System.Windows.Forms.PictureBox LoadedImgBox;
    }
}

