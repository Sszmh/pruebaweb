<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "reddit_db";

function get_all_topics($conn) {
    $sql = "SELECT * FROM topics";
    $result = $conn->query($sql);
    $topics = array();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $topics[] = $row;
        }
    }

    return $topics;
}

function get_topic_by_id($conn, $topic_id) {
    $sql = "SELECT * FROM topics WHERE id = $topic_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return null;
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");


if ($_SERVER["REQUEST_METHOD"] === "GET") {
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Verificar la conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    $topic_id = isset($_GET['id']) ? $_GET['id'] : null;

    if ($topic_id !== null) {
        $topic = get_topic_by_id($conn, $topic_id);
        if ($topic !== null) {
            echo json_encode($topic);
        } else {
            echo json_encode(array('message' => 'Topic not found'));
            http_response_code(404);
        }
    } else {
        $topics = get_all_topics($conn);
        echo json_encode(array('topics' => $topics));
    }

    $conn->close();
}
?>
