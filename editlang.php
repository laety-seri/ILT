<?php
session_start();
?>

<?php
include("connection.php");

if (isset($_GET['id'])){

$id = $_GET['id'];
$query = "SELECT * FROM langues WHERE id = $id";
$result = mysqli_query($con, $query);
if (mysqli_num_rows($result) == 1) {
	$row = mysqli_fetch_array($result);
    $langue = $row['langue'];
	$date = date("Y-m-d h:i:s");
}
 
}

if (isset($_POST['Modifier'])){
    $id = $_GET['id'];
    $langue = $_POST['langue'];
	$date = date("Y-m-d h:i:s");

	$query = "UPDATE langues SET langue = '$langue', datec = '$date' WHERE id = $id";
	mysqli_query($con, $query);
	header("Location: dbd.php");

}
?>


<!DOCTYPE html>
<html>
    <head>
        <title>Modifier une langue</title>
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

                    <form id="myForm" action="editlang.php?id=<?php echo $_GET['id']; ?>" method="POST">

                    <center><h3>Modifier une langue</h3></center><br>
                    <div class="row">
                        <div class="col form-group">
                        <label class="font-weight-bold">Langue</label>
                        <input type="text" value="<?php echo $langue; ?>" class="form-control" id="langue" placeholder="Modifier la langue" name="langue">
                        </div>
                    </div>
                    <input type="submit" name= "Modifier" class="btn bg-success text-dark" id="Modifier" value="Modifier">
                    </form>

                </div> 
            </div>

        </div>
    </body>
</html>
