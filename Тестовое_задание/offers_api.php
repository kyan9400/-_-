<?php
$host = '127.0.0.1';
$user = 'root';
$password = '';
$database = 'offer_management';
$port = 3307;

try {
    $mysqli = new mysqli($host, $user, $password, $database, $port);
    if ($mysqli->connect_error) {
        throw new Exception('Database connection error: ' . $mysqli->connect_error);
    }

    $result = $mysqli->query('SELECT * FROM offers');
    $offers = $result->fetch_all(MYSQLI_ASSOC);

    echo json_encode($offers);

} catch (Exception $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
