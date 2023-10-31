<?php
include("./connection.php");
include("./menu.php");
$sql = "SELECT ID_Enfermeiro, Nome_Enfermeiro, CIP FROM enfermeiro";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php		
    $id = $_GET['id'];
	if (!$conn) {
	die("<strong> Falha de conexão: </strong>" . mysqli_connect_error());
	}
    $sql = "SELECT ID_Enfermeiro, Nome_Enfermeiro, CIP FROM enfermeiro WHERE ID_Enfermeiro = $id";

    //Inicio DIV form
    echo "<div class='w3-responsive w3-card-4'>";
    if ($result = mysqli_query($conn, $sql)) {
        if(mysqli_num_rows($result) == 1){
            $row = mysqli_fetch_assoc($result);
            
            $id = $row['ID_Enfermeiro'];
            $nome           = $row['Nome_Enfermeiro'];
            $cip            = $row['CIP'];
               
            $optionsEspec = array();
            
            if ($result = mysqli_query($conn, $sql)) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $selected = "";
                    if ($row['ID_Enfermeiro'] == $id)
                        $selected = "selected";
                    array_push($optionsEspec, "\t\t\t<option " . $selected . " value='". $row["ID_Enfermeiro"]."'>".$row["Nome_Enfermeiro"]."</option>\n");
                }
            }

        }
    }
    echo $id. $nome. $cip
            ?>
</body>
</html>