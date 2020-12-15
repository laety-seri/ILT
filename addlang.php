<?php
session_start();
?>

<!DOCTYPE html>
<html>
    <head>
    <title>Ajouter une langue</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/7cb0e7c261.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container center-div">
            <div class="container row d-flex flex-row justify-content-center mb-8">
                <div class="admin-form shadow p-5">
                    <form id="" action="" method="POST">
                        <center><h3>Enregistrer une langue</h3></center><br>
                        <div class="col form-group">
                        <input type="text" class="form-control" id="langue" placeholder="Saisir la langue" name="langue" required>
                        </div>
                        <input type="submit" value="Enregistrer" name="Enregistrer" class="btn btn-success">
                    </form>
                </div>
            </div>
        </div>

        <?php include('connection.php'); 

if(isset($_POST['Enregistrer'])){
  
    $langue = $_POST['langue'];
    $date = date("Y-m-d h:i:s");
    
    $sql = "INSERT INTO langues (langue, datec) VALUES ('$langue', '$date')";

    if(mysqli_query($con, $sql)) {
    echo '<script language="Javascript">';
            echo 'document.location.replace("./dbd.php")';
            echo '</script>';

        echo 'TEXTE ENREGISTRE';
    } else {
    echo "";
    }

}else{
    echo "";
    }
mysqli_close($con);

?>

</body>
</html>