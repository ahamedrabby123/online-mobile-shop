<?php
  if(isset($_GET)){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Integartion (Stripe)</title>
    <link rel="stylesheet" href="./css/_style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<button type="button" onclick="goback()" class="back">Go Back</button> 
<div class="row">
    <div class="col-md-6">
        <div class="form-container">
            <form autocomplete="off" action="checkout-charge.php" method="POST">
                <div>
                    <input type="text" name="c_name" required/>
                    <label>Customer Name</label>
                </div>
                <div>
                    <input type="text" name="address" required/>
                    <label>Address</label>
                </div>
                <div>
                    <input type="number" id="ph" name="phone" pattern="\d{10}" maxlength="10" required/>
                    <label>Contact number</label>
                </div>
                
                <input type="hidden" name="price" value="<?php echo (int)$_GET['price'] ?>">
               
               
                    
                
                <script
                src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                data-key="pk_test_51N9pLtFm1dxI5Ce5NFBqMnzFamDhBBi0QxkTYbYO8nY35BFhtR05WGSnquztSy1DK3VTpHb744xuQxpgi1SuUMCI008ffahKAk"
                data-amount="<?php echo ((int)$_GET['price']*100)?>"
                data-name=""
                
              
                
                
                data-currency="bdt"
                data-locale="auto">
                </script>
            </form>
        </div>
    

<?php
  }
?>
<script>
    function goback(){
        window.history.go(-1);
    }

    $('#ph').on('keypress',function(){
         var text = $(this).val().length;
         if(text > 9){
              return false;
         }else{
            $('#ph').text($(this).val());
         }
         
    });
</script>
</body>
</html>