<?php


?>

<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/3299f686b9.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dosis&family=M+PLUS+Code+Latin&family=Open+Sans:wght@300&family=Zen+Kurenaido&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="style.css">
    <title>Add admin</title>
</head>

<body>
    <div class="container">
        <div class="d-grid gap-2 col-6 mx-auto my-5 px-3">
            <?php
            
            include_once 'dashboard/db.php';

            if(!isset($_POST['user_role'])){
                header("Location: register.php?error=Select role");
                exit();
            }

            $user = $_POST['user_name'];
            $pass = $_POST['user_pass'];
            $fname = $_POST['user_fname'];
            $email = $_POST['user_email'];
            $phone = $_POST['user_phone'];
            $role = $_POST['user_role'];

            if(empty($user)){
                header("Location: register.php?error=Enter username");
                exit();
            }
            if(empty($pass)){
                header("Location: register.php?error=Enter password");
                exit();
            }
            if(empty($fname)){
                header("Location: register.php?error=Enter Fullname");
                exit();
            }
            if(empty($email)){
                header("Location: register.php?error=Enter Email");
                exit();
            }
            if(empty($phone)){
                header("Location: register.php?error=Enter Phone");
                exit();
            }


 
                
            $sql = "INSERT INTO users (username,password, full_name,email,phone,power) VALUES ('$user','$pass','$fname','$email','$phone','$role')";

             if (mysqli_query($conn, $sql)) {
                 echo "<div class='alert alert-success' role='alert'>
                 Registration Successfull.
                </div>";

            } else {
                echo "Error: " . $sql . ":-" . mysqli_error($conn);
                echo "
                <div class='alert alert-danger' role='alert'>
                      Error!
                  </div>";
                
            }


            ?>
            <a class="my-5 mx-auto btn btn-outline-dark " href="./login.php" style="width: 200px; font-size:25px">Go Back</a>
        </div>
    </div>    
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

   
</body>

</html>