<?php 
require 'config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Result</title>
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
	<p>  No. Name Jersey No. Status Price </p>
                <?php 
					$opt = mysqli_query($connect,"OPTIMIZE TABLE srh");
                    $res = mysqli_query($connect,"select name,jersey_no,status,price from srh") or die("Connection Error");
                    $rows = mysqli_num_rows($res); 
                    $i=1;
               while($result=mysqli_fetch_array($res))
                { ?>     
                    <div>
                    <p> <?php echo $i?>. <?php echo $result['name'];?> <?php echo $result['jersey_no'];?> <?php echo $result['status'];?> <?php echo $result['price'];?></p>
                    </div> 
                   <?php $i++;} ?>
				   
                   <a href="ddbproj.php">GO BACK</a>                   
    </body>
</html>