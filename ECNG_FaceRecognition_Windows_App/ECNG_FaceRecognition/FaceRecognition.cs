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

namespace ECNG_FaceRecognition
{
    public partial class FaceRecognition : Form
    {
        // declare variables
        private CascadeClassifier haar;       // the viola-jones classifier (detector)
        //private CascadeClassifier haar_eyes;
        private DatabaseOperations faceDB;
        Image<Bgr, Byte> imageFrame;                            
        private List<Bitmap> extFaces;
        private int faceNo = 0;
        //private Bitmap[] ExtEyes;
        //private int eyeNo = 0;             
        private List<int> faceIds;        
        private List<string> firstNames;
        private List<string> lastNames;
        private List<string> studentIds;
        private List<Image> trainingImgs;        
        private List<Image<Bgr, Byte>> trainingImages;
        private List<Image<Gray, byte>> trainingGrayImages;
        private List<Bitmap> recognizedImages;
        double minDist;
        private List<double> minDistVec;
        

        public FaceRecognition()
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
                extFaces = new List<Bitmap>();
                extFaces = DetectFaces(imageFrame);
                if (extFaces.Count > 0)
                {
                    MessageBox.Show("Total faces detected: " + extFaces.Count, "Face detection");

                    //Imagebox showing extracted faces       
                    pbDetectedFace.Image = extFaces[0];

                    //Imagebox showing rectangles drawn around faces
                    LoadedImgBox.Image = imageFrame.ToBitmap();
                    recognizedImages = null;
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
            double ScaleFactor = 1.1; //1.25;
            int MinNeighbors = 5; //6;

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

        private void btnRecognizeFace_Click(object sender, EventArgs e)
        {
            recognizedImages = new List<Bitmap>();
            firstNames = new List<string>();
            lastNames = new List<string>();
            studentIds = new List<string>();
            minDistVec = new List<double>();
            if (extFaces != null)
            {
                FaceRecognizer recognizer;
                Image<Bgr, Byte> inputImg;
                int rIndex;
                //Create blank image     
                Bitmap blankImg = new Bitmap("Unknown.bmp");

                // Train face recognizer based on selected radio button
                if (rbtnEigenFace.Checked)
                {
                    //recognizer = new EigenFaceRecognizer(80, double.PositiveInfinity);
                    recognizer = new EigenFaceRecognizer(160, 15530);
                    //recognizer = new EigenFaceRecognizer(160, double.PositiveInfinity);
                    lbFR.Text = "Eigenface Method";                                                            
                }
                else if (rbtnFisherFace.Checked)
                {
                    //recognizer = new FisherFaceRecognizer(0, 3500);
                    recognizer = new FisherFaceRecognizer(160, 14217); 
                    //recognizer = new FisherFaceRecognizer(16, 14217);
                    lbFR.Text = "Fisherface Method";                    
                }
                else if (rbtnLBPH.Checked)
                {
                    //recognizer = new LBPHFaceRecognizer(1, 8, 8, 8, 100);    
                    recognizer = new LBPHFaceRecognizer(1, 8, 8, 8, 477);
                    lbFR.Text = "LBPH Method";                    
                }
                else
                {
                    //recognizer = new EigenFaceRecognizer(80, double.PositiveInfinity); 
                    recognizer = new EigenFaceRecognizer(160, 15530);
                    //recognizer = new EigenFaceRecognizer(16, 15530);
                    lbFR.Text = "Eigenface Method";                    
                }
                recognizer.Train(trainingGrayImages.ToArray(), faceIds.ToArray());                    

                for (int i = 0; i < extFaces.Count; i++)
                {
                    inputImg = new Image<Bgr, Byte>(extFaces[i]);
                    rIndex = Recognize(inputImg, recognizer);
                    minDistVec.Add(minDist);
                    if (rIndex == -1)
                    {
                        recognizedImages.Add(blankImg);                            
                        studentIds.Add("Unknown");
                        firstNames.Add("Unknown");
                        lastNames.Add("Unknown");
                    }
                    else
                    {
                        recognizedImages.Add(trainingImages[rIndex].ToBitmap());
                        faceDB.getStudentIds(faceIds[rIndex], studentIds);                           
                        faceDB.getFirstNames(studentIds[i], firstNames);                                                      
                        faceDB.getLastNames(studentIds[i], lastNames);                           
                    }                    
                    inputImg.Dispose();                    
                }
                recognizer.Dispose();

                // Set the student id, first name, last name and image to the first recognized student
                faceNo = 0;                    
                lbStudentId.Text = studentIds[faceNo];
                lbFirstName.Text = firstNames[faceNo];
                lbLastName.Text = lastNames[faceNo];
                pbRecognizedFace.Image = recognizedImages[faceNo];
                lbMinDist.Text = minDistVec[faceNo].ToString();              
                MessageBox.Show("Face Recognition Complete");                
            }
        }
        
        public int Recognize(Image<Bgr, Byte> input_image, FaceRecognizer fr)
        {
            int recognizedIndex;

            //Convert image to gray scale and perform histogram equalization
            Image<Gray, byte> grayImg = input_image.Convert<Gray, byte>();
            Image<Gray, byte> grayImg1 = grayImg.Resize(280, 280, Emgu.CV.CvEnum.INTER.CV_INTER_CUBIC);  
            //Image<Gray, byte> grayImg1 = grayImg.Resize(500, 500, Emgu.CV.CvEnum.INTER.CV_INTER_CUBIC);
            grayImg1._EqualizeHist();            

            FaceRecognizer.PredictionResult FRresult = fr.Predict(grayImg1);
            minDist =  FRresult.Distance;                        

            if (FRresult.Label == -1)
            {
                recognizedIndex = -1;                
            }
            else
            {
                recognizedIndex = FRresult.Label - 1;                
            }
            
            grayImg.Dispose();
            grayImg1.Dispose();
            return recognizedIndex;
        }

        private void btnFirst_Click(object sender, EventArgs e)
        {
            if (extFaces != null)
            {
                if (recognizedImages != null)
                {
                    faceNo = 0;
                    pbDetectedFace.Image = extFaces[faceNo];                    
                    lbStudentId.Text = studentIds[faceNo];
                    lbFirstName.Text = firstNames[faceNo];
                    lbLastName.Text = lastNames[faceNo];
                    pbRecognizedFace.Image = recognizedImages[faceNo];
                    lbMinDist.Text = minDistVec[faceNo].ToString();
                }
            }
        }

        private void btnPrev_Click(object sender, EventArgs e)
        {
            if (extFaces != null)
            {
                if (recognizedImages != null)
                {
                    if (faceNo > 0)
                    {
                        faceNo--;
                        pbDetectedFace.Image = extFaces[faceNo];                        
                        lbStudentId.Text = studentIds[faceNo];
                        lbFirstName.Text = firstNames[faceNo];
                        lbLastName.Text = lastNames[faceNo];
                        pbRecognizedFace.Image = recognizedImages[faceNo];
                        lbMinDist.Text = minDistVec[faceNo].ToString();
                    }
                }
            }
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (extFaces != null)
            {
                if (recognizedImages != null)
                {
                    if (faceNo < extFaces.Count - 1)
                    {
                        faceNo++;
                        pbDetectedFace.Image = extFaces[faceNo];                        
                        lbStudentId.Text = studentIds[faceNo];
                        lbFirstName.Text = firstNames[faceNo];
                        lbLastName.Text = lastNames[faceNo];
                        pbRecognizedFace.Image = recognizedImages[faceNo];
                        lbMinDist.Text = minDistVec[faceNo].ToString();
                    }
                }
            }
        }

        private void btnLast_Click(object sender, EventArgs e)
        {
            if (extFaces != null)
            {
                if (recognizedImages != null)
                {
                    faceNo = extFaces.Count - 1;
                    pbDetectedFace.Image = extFaces[faceNo];                    
                    lbStudentId.Text = studentIds[faceNo];
                    lbFirstName.Text = firstNames[faceNo];
                    lbLastName.Text = lastNames[faceNo];
                    pbRecognizedFace.Image = recognizedImages[faceNo];
                    lbMinDist.Text = minDistVec[faceNo].ToString();
                }
            }
        }

        private void FaceRecognition_Load(object sender, EventArgs e)
        {
            haar = new CascadeClassifier("haarcascade_frontalface_default.xml");
            faceDB = new DatabaseOperations();
            try
            {
                faceDB.ConnectToDatabase();
                //MessageBox.Show("Successfully connected to database.");
            }
            catch (Exception ex)
            {
                MessageBox.Show("No internet connection.");
            }
            //recognizedImages = new List<Bitmap>();
            
            trainingImgs = new List<Image>();
            trainingImages = new List<Image<Bgr, Byte>>();
            trainingGrayImages = new List<Image<Gray, byte>>();
            faceIds = new List<int>();            

            //Perform Database operations
            faceDB.RefreshDBConnection();
            faceDB.getIds(faceIds);
            faceDB.getTrainingImages(trainingImgs);

            // Get training images              
            for (int i = 0; i < trainingImgs.Count(); i++)
            {
                trainingImages.Add(new Image<Bgr, byte>(new Bitmap(trainingImgs[i])));
                trainingGrayImages.Add(trainingImages[i].Convert<Gray, byte>());
                trainingGrayImages[i]._EqualizeHist();
            }
        }
    }
}
