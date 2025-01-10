package com.classattendance.ecng.ecngclassattendance;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Environment;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemSelectedListener;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.w3c.dom.Text;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.spec.EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;

public class MainActivity extends AppCompatActivity{

    private Spinner spinner;
    private Button buttonTakePic;
    private Button buttonUpload;
    private Button buttonSelectDate;
    private Button buttonSelectPhoto;
    private TextView dateTxt;
    private ImageView imageView;
    private Bitmap bitmap;
    private Bitmap bitmap_disp;
    private int TAKE_PHOTO_REQUEST = 1;
    private int SELECT_PHOTO_REQUEST = 2;
    private int DATE_PICKER = 3;
    private String courseCode;
    private File ecngAlbumDir;
    private String imgFileName;
    private File albumFile;
    private File imgFile;
    private String dateString;
    private String dateString1;
    private String timeString;
    private String timeString1;
    private int year;
    private int month;
    private int day;
    private String currentPhotoPath;
    private String UPLOAD_URL = "http://192.168.0.4:80/ECNG/upload.php";//"http://simplylearn.heliohost.org/ECNG/upload.php"; //"http://192.168.0.4:80/ECNG/upload.php";
    private String KEY_IMAGE = "encoded_string";
    private String KEY_NAME = "image_name";
    private String KEY_COURSE = "course";
    private String KEY_DATE = "attend_date";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        spinner = (Spinner) findViewById(R.id.spinnerEcngCourses);
        // Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,R.array.ecngCoursesArray, android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        spinner.setAdapter(adapter);
        spinner.setOnItemSelectedListener(new OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view,
                                       int position, long id) {
                //Log.v("item", (String) parent.getItemAtPosition(position));
                courseCode = (String) parent.getItemAtPosition(position);

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        buttonTakePic = (Button) findViewById(R.id.btnTakePhoto);
        buttonSelectPhoto = (Button) findViewById(R.id.btnSelectPhoto);
        buttonUpload = (Button) findViewById(R.id.btnUploadPhoto);
        imageView  = (ImageView) findViewById(R.id.imageView);
        buttonSelectDate = (Button) findViewById(R.id.btnSelectDate);
        dateTxt = (TextView) findViewById(R.id.dateTxtView);

        // Get current date by calender
        Calendar c = Calendar.getInstance();
        year  = c.get(Calendar.YEAR);
        month = c.get(Calendar.MONTH);
        day   = c.get(Calendar.DAY_OF_MONTH);

        // Show current date
        dateTxt.setText(new StringBuilder()
                // Month is 0 based, just add 1
                .append(year).append("-").append(month + 1).append("-")
                .append(day).append(" "));

        // Set on-click listeners for
        buttonSelectDate.setOnClickListener(new View.OnClickListener() {
            @SuppressWarnings("deprecation")
            public void onClick(View v) {
                showDialog(DATE_PICKER);
            }
        });

        buttonSelectPhoto.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatchSelectPhotoIntent();
            }
        });

        buttonTakePic.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatchTakePhotoIntent();
            }
        });

        buttonUpload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                uploadImage();
            }
        });

    }

    private File getEcngAlbumDir() {
        ecngAlbumDir = new File (Environment.getExternalStorageDirectory() + "/ECNG_Attendance");
        File storageDir = null;
        Toast toast;

        if (Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
            storageDir = ecngAlbumDir;
            if (storageDir != null) {
                if (! storageDir.mkdirs()) {
                    if (! storageDir.exists()){
                        toast = Toast.makeText(this, "Failed to create directory.", Toast.LENGTH_LONG);
                        toast.show();
                        return null;
                    }
                }
            }
        } else {
            toast = Toast.makeText(this, "External storage is not mounted READ/WRITE.", Toast.LENGTH_LONG);
            toast.show();
        }
        return storageDir;
    }

    private File getImageFile() throws IOException {
        // Create an image file name
        albumFile = getEcngAlbumDir();

        // Set name of file
        dateString = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        dateString1 = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        timeString = new SimpleDateFormat("HH-mm-ss").format(new Date());
        imgFileName = courseCode + "_" + dateString1 + "_" + timeString;

        //imgFile = File.createTempFile(imgFileName, ".jpg", albumFile);
        imgFile = new File(albumFile, imgFileName + ".jpg");
        currentPhotoPath = imgFile.getAbsolutePath();
        return imgFile;
    }

    private void setPhoto() {

        bitmap = BitmapFactory.decodeFile(currentPhotoPath);
		/* Scale the target bitmap if it is too large */
		/* Get the size of the ImageView */
        int targetWidth = imageView.getWidth();
        int targetHeight = imageView.getHeight();

		/* Get the size of the image */
        BitmapFactory.Options bmOptions = new BitmapFactory.Options();
        bmOptions.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(currentPhotoPath, bmOptions);
        int photoWidth = bmOptions.outWidth;
        int photoHeight = bmOptions.outHeight;

		/* Figure out which way needs to be reduced less */
        int scaleFactor = 1;
        if ((targetWidth > 0) || (targetHeight > 0)) {
            scaleFactor = Math.min(photoWidth/targetWidth, photoHeight/targetHeight);
        }

		/* Set bitmap options to scale the image decode target */
        bmOptions.inJustDecodeBounds = false;
        bmOptions.inSampleSize = scaleFactor;

		/* Decode the JPEG file into a Bitmap */
        bitmap_disp = BitmapFactory.decodeFile(currentPhotoPath, bmOptions);

		/* Associate the Bitmap to the ImageView */
        imageView.setImageBitmap(bitmap_disp);
        imageView.setVisibility(View.VISIBLE);

    }


    private void dispatchTakePhotoIntent() {
        Intent takePicIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        File file = null;
        try {
            file = getImageFile();
            takePicIntent.putExtra(MediaStore.EXTRA_OUTPUT, Uri.fromFile(file));
        } catch (IOException e) {
            e.printStackTrace();
        }
        startActivityForResult(takePicIntent, TAKE_PHOTO_REQUEST);
    }

    private void dispatchSelectPhotoIntent() {
        Intent selectPicIntent = new Intent(Intent.ACTION_PICK, android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        selectPicIntent.setType("image/*");
        //currentPhotoPath = selectedImage.getPath();
        //Log.v("path", currentPhotoPath);
        startActivityForResult(Intent.createChooser(selectPicIntent, "Select image to upload."), SELECT_PHOTO_REQUEST);
    }

    public String getEncodedImage(Bitmap bmp){
        ByteArrayOutputStream byteoutputstream = new ByteArrayOutputStream();
        bmp.compress(Bitmap.CompressFormat.JPEG, 100, byteoutputstream);
        byte[] imageBytes = byteoutputstream.toByteArray();
        String encodedImage = Base64.encodeToString(imageBytes, Base64.DEFAULT);
        //Log.v("img1", encodedImage);
        return encodedImage;
    }

    @SuppressWarnings("deprecation")
    protected Dialog onCreateDialog(int id) {
        if (id == DATE_PICKER) {
            return new DatePickerDialog(this, pickerListener, year, month, day);
        }
        else
            return null;
    }


    private DatePickerDialog.OnDateSetListener pickerListener = new DatePickerDialog.OnDateSetListener() {

        // when dialog box is closed, below method will be called.
        @Override
        public void onDateSet(DatePicker view, int selectedYear,int selectedMonth, int selectedDay) {
        year  = selectedYear;
        month = selectedMonth;
        day   = selectedDay;

        // Show selected date
        dateTxt.setText(new StringBuilder().append(year).append("-").append(month + 1).append("-").append(day).append(" "));

        }
    };

    private boolean isNetworkConnected(){
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(MainActivity.CONNECTIVITY_SERVICE);
        return connectivityManager.getActiveNetworkInfo() != null;
    }

    private void uploadImage(){
        if (isNetworkConnected()) {
            if (bitmap!=null) {
                //Show dialog
                final ProgressDialog loading = ProgressDialog.show(this, "Uploading...", "Please wait...", false, false);

                StringRequest stringRequest = new StringRequest(Request.Method.POST, UPLOAD_URL,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String s) {
                                //Disimissing the progress dialog
                                loading.dismiss();
                                //Showing toast message of the response
                                Toast.makeText(MainActivity.this, s, Toast.LENGTH_LONG).show();
                            }
                        },
                        new Response.ErrorListener() {
                            @Override
                            public void onErrorResponse(VolleyError volleyError) {
                                //Dismissing the progress dialog
                                loading.dismiss();

                                //Showing toast
                                Toast.makeText(MainActivity.this, volleyError.getMessage().toString(), Toast.LENGTH_LONG).show();
                            }
                        }) {
                    @Override
                    protected Map<String, String> getParams() throws AuthFailureError {
                        //Converting Bitmap to String
                        String image = getEncodedImage(bitmap);

                        //Getting Image Name
                        //String name = editTextName.getText().toString().trim();
                        String name = imgFileName;
                        String course = courseCode;
                        String date = dateString;

                        //Creating parameters
                        Map<String, String> params = new Hashtable<String, String>();

                        //Adding parameters
                        params.put(KEY_IMAGE, image);
                        params.put(KEY_NAME, name);
                        params.put(KEY_COURSE, course);
                        params.put(KEY_DATE, date);

                        //Log.v("param1", params.toString());
                        //returning parameters
                        return params;
                    }
                };

                //Creating a Request Queue
                RequestQueue requestQueue = Volley.newRequestQueue(this);

                //Adding request to the queue
                requestQueue.add(stringRequest);
            }
            else
            {
                Toast.makeText(MainActivity.this, "No image was taken or selected.", Toast.LENGTH_LONG).show();
            }
        }
        else
        {
            Toast.makeText(MainActivity.this, "No internet connection.", Toast.LENGTH_LONG).show();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == TAKE_PHOTO_REQUEST && resultCode == RESULT_OK) {
            setPhoto();
        }
        else if (requestCode == SELECT_PHOTO_REQUEST && resultCode == RESULT_OK) {
            Uri selectedImg = data.getData();
            String[] filePathCol = {MediaStore.Images.Media.DATA};

            Cursor cursor = getContentResolver().query(selectedImg, filePathCol, null, null, null);
            cursor.moveToFirst();

            int colIndex = cursor.getColumnIndex(filePathCol[0]);
            currentPhotoPath = cursor.getString(colIndex);
            cursor.close();
            // Set name of file
            timeString1 = new SimpleDateFormat("HH:mm:ss").format(new Date());
            dateString = year + "-" + (month + 1) + "-" + day + " " + timeString1;
            dateString1 = year + "-" + (month + 1) + "-" + day;
            timeString = new SimpleDateFormat("HH-mm-ss").format(new Date());
            imgFileName = courseCode + "_" + dateString1 + "_" + timeString;
            setPhoto();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        return super.onOptionsItemSelected(item);
    }
}
