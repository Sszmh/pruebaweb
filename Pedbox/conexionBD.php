<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "reddit_db";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
} 
else {
    echo "Conexión exitosa!";
}


$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, "https://www.reddit.com/reddits.json");
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);


curl_setopt($curl, CURLOPT_USERAGENT, "User-Agent");

$reddit_data_json = curl_exec($curl);

if (curl_errno($curl)) {
    die("Error en la solicitud cURL: " . curl_error($curl));
}

curl_close($curl);
$reddit_data = json_decode($reddit_data_json, true);


foreach ($reddit_data['data']['children'] as $subreddit) {
    $title = $conn->real_escape_string($subreddit['data']['display_name']);
    $url = $conn->real_escape_string($subreddit['data']['url']);
    $subscribers = $subreddit['data']['subscribers'];

    $sql = "INSERT INTO topics (title, url, subscribers) VALUES ('$title', '$url', $subscribers)";
    $conn->query($sql);
}

$conn->close();
?>

