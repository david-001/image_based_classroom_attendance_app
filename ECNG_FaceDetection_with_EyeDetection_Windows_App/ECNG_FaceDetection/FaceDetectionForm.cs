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
        private CascadeClassifier haar;       // the viola-jones classifier (detector)     
        private CascadeClassifier haar_eyes;
        private List<Bitmap> extFaces;
        private List<Rectangle> extEyes;
        Image<Bgr, Byte> imageFrame;        
        //private int faceNo = 0;

        public FaceDetectionForm()
        {
            InitializeComponent();
        }        

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
            int WindowSize = 24;
            double ScaleFactor = 1.1; //1.25;
            int MinNeighbors = 5; //6;

            //List of extracted faces
            List<Bitmap> extractedFaces = new List<Bitmap>();

            // Extracted face variable
            Bitmap extractedFace;

            //Variables to extract faces
            Bitmap bmpInput = img.ToBitmap();
            Graphics faceCanvas;

            //Convert the image to gray scale
            Image<Gray, byte> grayframe = img.Convert<Gray, byte>();

            //Perform histogram equalization
            //grayframe._EqualizeHist();

            int count = 0;            

            //Detect faces from the gray scale image and store into array of type var
            Rectangle[] faces = haar.DetectMultiScale(grayframe, ScaleFactor, MinNeighbors, new Size(WindowSize, WindowSize), Size.Empty);
            Rectangle[] eyes = haar_eyes.DetectMultiScale(grayframe, ScaleFactor, MinNeighbors, new Size(20, 20), Size.Empty);

            grayframe.Dispose();

            if (faces.Length > 0)
            {
                for (int i = 0; i < faces.Length; i++)
                {
                    if (eyes.Length > 0)
                    {
                        for (int j = 0; j < eyes.Length; j++)
                        {
                            if (eyes[j].X > faces[i].X && (eyes[j].X + eyes[j].Width) < (faces[i].X + faces[i].Width) && eyes[j].Y > faces[i].Y && (eyes[j].Y + eyes[j].Height) < (faces[i].Y + faces[i].Height))
                            {
                                count = count + 1;                                                            
                            }                            
                        }                        
                        if (count > 0)
                        {
                            img.Draw(faces[i], new Bgr(Color.Green), 10);

                            //Set size of extracted face
                            extractedFace = new Bitmap(faces[i].Width, faces[i].Height);

                            //Get the extracted face
                            faceCanvas = Graphics.FromImage(extractedFace);
                            faceCanvas.DrawImage(bmpInput, 0, 0, faces[i], GraphicsUnit.Pixel);
                            extractedFaces.Add(extractedFace);
                            count = 0;                            
                        }
                    }
                }
            }
            return extractedFaces;
        }        

        private void FaceDetectionForm_Load(object sender, EventArgs e)
        {
            haar = new CascadeClassifier("haarcascade_frontalface_default.xml");
            haar_eyes = new CascadeClassifier("haarcascade_eye.xml");
        }

        
    }
}
