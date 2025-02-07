<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Dosis&family=M+PLUS+Code+Latin&family=Open+Sans:wght@300&family=Zen+Kurenaido&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="style.css">
    <title>Dashboard Admin</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #4d4d4d;">
        
            <span style="font-size: 40px; color: white;">
                <i class="fas fa-store"></i>
            </span>
            <a class="navbar-brand text-light" href="../index.php">&nbsp;Let's Connect</a>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item" style="background-color: #111111;">
                        <a class="nav-link text-light" aria-current="page" href="./index.php">Dashboard</a>
                    </li>
                   
                    <li class='nav-item'>
                        <a class='nav-link text-light' href='./add.php'>Add Product</a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link text-light' href='./edit.php'>Edit Product</a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link text-light' href='./delete.php'>Delete Product</a>
                    </li>
                
                    <li class='nav-item'>
                         <a class='nav-link text-light' href='./pending.php'>Pending Product</a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link text-light' href='./add_stuff.php'>Add Admin</a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link text-light' href='./manage_order.php'>Manage Order</a>
                    </li>

                </ul>
                <form class="">
                    <a href="./profile.php" class="btn btn-light mx-2" type="submit">Profile</a>
                    <a href="../logout.php" class="btn btn-danger text-light" type="submit">Logout</a>
                </form>
    </nav>



    <div class="container my-5 text-center">
        <h2>
            Welcome Back
        </h2>
        <hr>
        <div class="row my-5">
            <div class="col-lg-6">
                <a href="./add.php" style="text-decoration: none;">
                    <div class="card text-dark bg-light mb-3" style="width: auto;">
                        <div class="card-header">Add Product</div>
                        <div class="card-body">
                            <span style="font-size: 50px; color: #111111;">
                                <i class="fas fa-plus-square"></i>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="./edit.php" style="text-decoration: none;">
                    <div class="card text-dark bg-light mb-3" style="width: auto;">
                        <div class="card-header">Edit Product</div>
                        <div class="card-body">
                            <span style="font-size: 50px; color: #111111;">
                                <i class="fas fa-edit"></i>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="./delete.php" style="text-decoration: none;">
                    <div class="card text-dark bg-light mb-3" style="width: auto;">
                        <div class="card-header">Delete Product</div>
                        <div class="card-body">
                            <span style="font-size: 50px; color: #111111;">
                                <i class="fas fa-trash-alt"></i>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
               <a href='#' style='text-decoration: none;'>
                    <div class='card text-dark bg-light mb-3' style='width: auto;'>
                        <div class='card-header'>Pending Product</div>
                        <div class='card-body'>
                            <span style='font-size: 50px; color: #111111;'>
                                    <i class='fas fa-history'></i>
                                </span>
                            </div>
                        </div>
                    </a>
            </div>
        </div>

        <hr style="margin-top: 50px;">
    </div>





 
</body>

</html>