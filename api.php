<?php

if(count($_POST) > 0)
{
    $text =  $_POST['text'];
    $string = "mysql:host=localhost;dbname=lets_connect";

    try{
        $con = new PDO($string,"root","");

    }catch(PDOException $e){
        die($e->getMessage());
    }

    $text = addslashes($text);
    $stm = $con->query("select * from product_details where model like '$text%' ");
    $result = $stm->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}