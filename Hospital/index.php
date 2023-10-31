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
    <center>
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>CIP</th>
                <th colspan=2>Ações</th>
            </tr>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
            ?>
                    <tr>
                        <td>
                            <a href="users_user.php?id=<?php echo $row['ID_Enfermeiro'] ?>">
                                <?php echo $row["ID_Enfermeiro"] ?>
                            </a>
                        </td>
                        <td><?php echo $row["Nome_Enfermeiro"] ?></td>
                        <td><?php echo $row["CIP"] ?></td>
                        <td>
                            <a href='user_edit.php?id=<?php echo $row['ID_Enfermeiro'] ?>'>
                                Editar
                            </a>
                        </td>
                        <td onclick="excluir(<?php echo $row['ID_Enfermeiro'] ?>)"><a href="#">Excluir</a></td>
                    </tr>
            <?php
                }
            }
            ?>
        </table>
    </center>
</body>

</html>