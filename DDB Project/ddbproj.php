<!DOCTYPE html>
<html lang="en">
<head>
<title>ipl</title>
<body>
<h1 align="center">IPL MANAGEMENT SYSTEM</h1>
<form action="player.php" method="post">
 <fieldset>
  <legend><b>PLAYER:</b></legend>
  Name: <input type="text" name="name" required><br><br>
  Type:<br>
  <input type="radio" name="type" value="Batsman" checked> Batsman<br>
  <input type="radio" name="type" value="Bowler"> Bowler<br>
  <input type="radio" name="type" value="All-Rounder"> All-Rounder <br><br>
  Base-Price: <input type="number" name="base_price" required><br><br>
  Runs: <input type="number" name="runs"><br><br>
  Wickets: <input type="number" name="wickets"><br><br>
  <input type="submit" value="Submit"><br>
  <br><br><br>
 </fieldset>
 </form>
 <br><br><br>
<form action="sponsor.php" method="post">
 <fieldset>
  <legend><b>SPONSOR:</b></legend>
  Name: <input type="text" name="name" required><br><br>
  Mode: <input type="text" name="mode" required><br><br>
  Amount: <input type="number" name="amount" required><br><br>
  <input type="submit" value="Submit"><br> 
 </fieldset>
 </form>
 <br><br><br><br>
 <p><b>TEAM COMPOSITIONS:</b></p>
 <hr>
 <a href="mi.php"> <input type="button" value="Mumbai Indians"></a><br><br>
 <a href="kkr.php"> <input type="button" value="Kolkata Knightriders"></a><br><br>
 <a href="rcb.php"> <input type="button" value="Royal Challengers Bangalore"></a><br><br>
 <a href="srh.php"> <input type="button" value="Sunrisers Hyderabad"></a><br><br>
 <p><b>BOOKING DETAILS:</b></p>
 <hr>
 <p>To get information regarding the venues and the ticket prices and availability of the tickets click here:<br><br>
 <a href="booking.php"> <input type="button" value="Get info of the venues">  </a>
</body>
</html>