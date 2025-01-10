<?php

	if($_SERVER['REQUEST_METHOD']=='POST'){

		define('HOST','localhost');
		define('USER','root');
		define('PASS','');
		define('DB','dakim_ecng_database');
		
		$con = mysqli_connect(HOST,USER,PASS,DB) or die('unable to connect to db');

		$encoded_string = $_POST["encoded_string"];
		$course_name = $_POST["course"];
		$image_name = $_POST["image_name"];
		$attend_date = $_POST["attend_date"];
	
		$path = "AttendanceImages/$image_name.jpg";
		$actualpath = "http://192.168.0.4:80/ECNG/$path";
		$sql = "INSERT INTO attendanceimage (course,date,path) VALUES ('$course_name','$attend_date','$actualpath')";
			
		if(mysqli_query($con,$sql))
		{
			file_put_contents($path,base64_decode($encoded_string));
			echo "Successfully Uploaded";
		}
		mysqli_close($con);
	}
	else
	{
		echo "Error";
	}

?>