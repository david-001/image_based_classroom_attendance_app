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
using Emgu.CV.CvEnum;


namespace ECNG_FaceDetection
{
    public partial class FaceDetectionForm : Form
    {
        // declare public variables
        //private Capture capture;        //takes images from camera as image frames
        //private bool captureInProgress; // checks if capture is executing
        private CascadeClassifier haar;       // the viola-jones classifier (detector)        
        private List<Bitmap> extFaces;        
        Image<Bgr, Byte> imageFrame;        
        //private int faceNo = 0;

        public FaceDetectionForm()
        {
            InitializeComponent();
        }

        //private void ProcessFrame(object sender, EventArgs arg)
        //{
        //    imageFrame = capture.QueryFrame();
        //    LoadedImgBox.Image = imageFrame.ToBitmap(); //Load capture stream into imagebox
        //}

        //private void ReleaseData()
        //{
        //    if (capture != null)
        //        capture.Dispose();
        //}

        private void btnLoadImg_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                Image inputImg = Image.FromFile(openFileDialog1.FileName);
                imageFrame = new Image<Bgr, byte>(new Bitmap(inputImg));
                LoadedImgBox.Image = imageFrame.ToBitmap();
                
            }
        }

        private void btnDetectFace_Click(object sender, EventArgs e)
        {
            if (imageFrame != null)
            {
                //Detect Faces
                extFaces = new List<Bitmap>();
                extFaces = DetectFaces(imageFrame);                
                if (extFaces.Count > 0)
                {
                    MessageBox.Show("Total faces detected: " + extFaces.Count, "Face detection");                    

                    //Imagebox showing rectangles drawn around faces
                    LoadedImgBox.Image = imageFrame.ToBitmap();                    
                    //imageFrame.Dispose();
                    //imageFrame = null;                                                        
                }
                else
                {
                    MessageBox.Show("No faces detected.", "Face Detection");
                }                
            }
            else
            {
                MessageBox.Show("The image needs to be loaded or reloaded.", "Face detection");
            }
        }

        public List<Bitmap> DetectFaces(Image<Bgr, Byte> img)
        {
            // Sets the parameters in the haar function
            // Original
            int WindowSize = 24;
            double ScaleFactor = 1.1;
            int MinNeighbors = 5;

            // Modified
            //int WindowSize = 24;
            //double ScaleFactor = 1.25;
            //int MinNeighbors = 6;

            //List of extracted faces
            List<Bitmap> extractedFaces = new List<Bitmap>();

            // Extracted face variable
            Bitmap extractedFace;

            //Variables to extract faces
            Bitmap bmpInput = img.ToBitmap();
            Graphics faceCanvas;

            //Convert the image to gray scale
            Image<Gray, byte> grayframe = img.Convert<Gray, byte>();            

            //Detect faces from the gray scale image and store into array of type var
            Rectangle[] faces = haar.DetectMultiScale(grayframe, ScaleFactor, MinNeighbors, new Size(WindowSize, WindowSize), Size.Empty);            

            grayframe.Dispose();

            if (faces.Length > 0)
            {
                //Draw a green rectangle on each detected face in image
                for (int i = 0; i < faces.Length; i++)
                {
                    img.Draw(faces[i], new Bgr(Color.Green), 10);

                    //Set size of extracted face
                    extractedFace = new Bitmap(faces[i].Width, faces[i].Height);

                    //Get the extracted face
                    faceCanvas = Graphics.FromImage(extractedFace);
                    faceCanvas.DrawImage(bmpInput, 0, 0, faces[i], GraphicsUnit.Pixel);
                    extractedFaces.Add(extractedFace);
                }
            }

            return extractedFaces;
        }        

        private void FaceDetectionForm_Load(object sender, EventArgs e)
        {
            haar = new CascadeClassifier("haarcascade_frontalface_default.xml");            
        }

        //private void btnStartCam_Click(object sender, EventArgs e)
        //{
            
        //    if (capture == null)
        //    {
        //        try
        //        {
        //            capture = new Capture();
        //        }
        //        catch (NullReferenceException excpt)
        //        {
        //            MessageBox.Show(excpt.Message);
        //        }
        //    }

        //    if (capture != null)
        //    {
        //        if (captureInProgress)
        //        {  //if camera is getting frames then stop the capture and set button Text
        //            // "Start" for resuming capture
        //            btnStartCam.Text = "Start Camera"; //
        //            Application.Idle -= ProcessFrame;
        //        }
        //        else
        //        {
        //            //if camera is NOT getting frames then start the capture and set button
        //            // Text to "Stop" for pausing capture
        //            btnStartCam.Text = "Stop Camera";
        //            Application.Idle += ProcessFrame;
        //        }

        //        captureInProgress = !captureInProgress;
        //    }
        //}
    }
}
