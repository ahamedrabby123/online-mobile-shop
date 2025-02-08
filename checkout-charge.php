<?php
    include("./config.php");
    // include_once("C:\xampp\htdocs\mobile_shop\product_details.php");

    $token = $_POST["stripeToken"];
    $amount= $_POST["price"]; 
    $charge=\Stripe\Charge::create([
      "amount" => str_replace(",","",$amount) * 100,
      "currency" => 'bdt',
      "description"=>"",
      "source"=> $token,
    ]);

    if($charge){
      echo ("successful");
    }
?>