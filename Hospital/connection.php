<?php
    $servername = "localhost";
    $username = "root";
    $password = "PUC@1234";
    $dbname = "hospital";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Conexão falhou: ${$conn->connect_error}");
    }
    
    echo "Connection established."
    
?>