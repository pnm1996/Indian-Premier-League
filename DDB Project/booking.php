<?php 
require 'config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Booking</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">     
        <style>
        #question{
        font-family: "Times New Roman";
        color: black;
        text-decoration: underline;
        font-weight: bold;
        font-size: 25px;
      }
        #ans{
        font-family: "Times New Roman";
        color: black;
        font-style: italic;
        font-size: 20px;  
      }
      #sub{
                margin-left: 45%; 
                background-color: green;
                font-size: 24px;
				border-radius: 5px;
				padding:8px;
				text-decoration:none;
            }
		#sign-out {
			margin-left : 90%;
			text-decoration:none;
			font-size:20px;
		}
        </style>
    </head>
    <body>
	<p>  City Stadium Year of Establishment Capacity Ticket Price </p>
                <?php 
                    $res = mysqli_query($connect,"select * from booking") or die("Connection Error");
                    $rows = mysqli_num_rows($res); 
                    $i=1;
               while($result=mysqli_fetch_array($res))
                { ?>     
                    <div>
                    <p> <?php echo $i?>. <?php echo $result['city'];?> <?php echo $result['stadium'];?> <?php echo $result['year_establishment'];?> <?php echo $result['capacity'];?> <?php echo $result['ticket_price'];?></p>
                    </div> 
                   <?php $i++;} ?>
				   
                   <a href="ddbproj.php">GO BACK</a>                   
    </body>
</html>