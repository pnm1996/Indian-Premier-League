<?php
//require 'config.php';
$connect=mysqli_connect("localhost","root","","ipl") or die("Connection Error");//
$name=$_POST['name'];
$type=$_POST['type'];
$base_price=$_POST['base_price'];
$runs=$_POST['runs'];
$wickets=$_POST['wickets'];
/*$d=$_POST['4'];
$answer=$_POST['ans'];
$explanation=$_POST['explanation'];
$subject=$_POST['subject']; */

//$connect=mysqli_connect("localhost","root","","ipl") or die("Connection Error");
//echo " ".$name;
$query=mysqli_query($connect,"lock table players write");

/*$d=$_POST['4'];
$answer=$_POST['ans'];
$explanation=$_POST['explanation'];
$subject=$_POST['subject']; */

//$connect=mysqli_connect("localhost","root","","ipl") or die("Connection Error");
//echo " ".$name;
sleep(10); //waits for 10 seconds
if($runs==0)
$result=mysqli_query($connect,"INSERT INTO `players` (`name`,`type`,`base_price`,`wickets`) VALUES ('$name','$type','$base_price','$wickets')" );	
else if($wickets==0)
$result=mysqli_query($connect,"INSERT INTO `players` (`name`,`type`,`base_price`,`wickets`) VALUES ('$name','$type','$base_price','$wickets')" );
else	
$result=mysqli_query($connect,"INSERT INTO `players` (`name`,`type`,`base_price`,`runs`,`wickets`) VALUES ('$name','$type','$base_price','$runs','$wickets')" );
$query=mysqli_query($connect,"unlock tables");
header("location:ddbproj.php");
?>