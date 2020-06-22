<?php
    $host = 'localhost';
    $user = 'root';
    $password = '';
    $database = 'clientlist';

    $link = mysqli_connect($host, $user, $password, $database) or die ('ERROR : The script could not be connected to the database !');
?>