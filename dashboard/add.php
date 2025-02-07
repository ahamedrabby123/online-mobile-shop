<?php
    include "../auth.php";
    if($_SESSION['role']!="seller" && $_SESSION['role']!="admin"){
        echo "<script>top.window.location = './index.php?error=Access denied'</script>";
    }
?>

<!doctype html>
<html lang="en">

<head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

    <link rel="stylesheet" href="style.css">
    <title>Add Product</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #4d4d4d;">
        <div class="container-fluid">
            <span style="font-size: 40px; color: white;">
                <i class="fas fa-store"></i>
            </span>
            <a class="navbar-brand text-light" href="../index.php">&nbsp;Let's Connect</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-light" aria-current="page" href="./index.php">Dashboard</a>
                    </li>
                    <li class="nav-item" style="background-color: #111111;">
                        <a class="nav-link text-light" href="./add.php">Add Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="./edit.php">Edit Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="./delete.php">Delete Product</a>
                    </li>
                
                    <?php

                    if($_SESSION['role']=="admin"){
                        echo "<li class='nav-item'>
                                <a class='nav-link text-light' href='./pending.php'>Pending Product</a>
                            </li>
                            <li class='nav-item'>
                                <a class='nav-link text-light' href='./add_stuff.php'>Add Stuff</a>
                            </li>
                            <li class='nav-item'>
                                <a class='nav-link text-light' href='./manage_order.php'>Manage Order</a>
                            </li>
                            ";
                    }

                    ?>


                </ul>
                <form class="d-flex">
                    <a href="./profile.php" class="btn btn-light mx-2" type="submit">Profile</a>
                    <a href="../logout.php" class="btn btn-danger text-light" type="submit">Logout</a>
                </form>
            </div>
        </div>
    </nav>

    <div class="container text-center  px-5 mb-3">
        <h2 class="mb-3 mt-2">Add Product</h2>

        <form action="op_insert.php" method = "post">

            
            <input class="form-control my-3" type="text" placeholder="Phone Model" name="x0">
            <input class="form-control my-3" type="text" placeholder="Brand" name="xbrand">
            <input class="form-control my-3" type="text" placeholder="Display" name="x1">
            <input class="form-control my-3" type="text" placeholder="Processor" name="x2">
            <input class="form-control my-3" type="text" placeholder="Front Camera" name="x3">
            <input class="form-control my-3" type="text" placeholder="Rear Camera" name="x4">

            <input class="form-control my-3" type="text" placeholder="Storage" name="x5">
            <input class="form-control my-3" type="text" placeholder="Battery" name="x6">
            <input class="form-control my-3" type="text" placeholder="Ram" name="x7">
            <input class="form-control my-3" type="text" placeholder="Color" name="x8">
            <input class="form-control my-3" type="text" placeholder="Connectivity" name="x9">
            <input class="form-control my-3" type="text" placeholder="SIM Card" name="x10">
            <input class="form-control my-3" type="text" placeholder="Sensors" name="x11">



            <div class="input-group mb-3">
                <label class="input-group-text">Phone Image</label>
                <input type="text" class="form-control" name="x12" placeholder="link">
                
            </div>

            <div class="input-group flex-nowrap">
                <label class="input-group-text">BDT</label>
                <input type="text" class="form-control" placeholder="Price"name="x13">
               
            </div>
           
            <br>
            <div class="col-6 mx-auto">
                <button name= "submit" type="submit" class="btn btn-dark" style="font-size : 20px;">Sumbit</button>
            </div>

        </form>
    </div>




</body>

</html>