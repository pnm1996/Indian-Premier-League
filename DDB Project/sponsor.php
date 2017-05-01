<?php
//require 'config.php';
$name=$_POST['name'];
$mode=$_POST['mode'];
$amount=$_POST['amount'];
/*$d=$_POST['4'];
$answer=$_POST['ans'];
$explanation=$_POST['explanation'];
$subject=$_POST['subject']; */

$connect=mysqli_connect("localhost","root","","ipl") or die("Connection Error");
//echo " ".$name;
$result=mysqli_query($connect,"INSERT INTO `sponsors` (`name`,`mode`,`amount`) VALUES ('$name','$mode','$amount')");
header("location:ddbproj.php");
?>
