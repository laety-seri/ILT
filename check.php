<?php
include("connection.php");

if(isset($_POST['champ1'])) {
           
      
    $champ1=$_POST['champ1'];
    //$langue_start=$_POST['langue_start'];
   // $langue_end=$_POST['langue_end'];
    

    $checkdata=" SELECT * FROM data WHERE texte1='$champ1' ";


    $query = mysqli_query($con, $checkdata);
    $count = mysqli_num_rows($query);
    $row = mysqli_fetch_array($query);
    
    if($count>0){
        echo "<h5><font color = 'green'>" .$row['texte2'] . "<h5>";
       
        echo "<audio controls>" ;
            echo " <source src=" . $row['audio'] . " type='audio/mpeg' >" ;
        echo "</audio>";                

    } else {
        echo"<h5> <font color = 'red'> Traduction non disponible <br><br> <a href='suggestions.php'>Soumettre une proposition de traduction</a></h5>";
    }
    exit();
}

?>