<?php
    require_once "stripe-php-master/init.php";

    
        $secretKey = "sk_test_51N9pLtFm1dxI5Ce5KzFE3B9XyERtI5lrPwOJfYhrLLHBQGpqsbyXD92AVJj5hNUUc0aPhPijIiYqEItzDpjPz35d006oYyiesb";
        $publishableKey = "pk_test_51N9pLtFm1dxI5Ce5NFBqMnzFamDhBBi0QxkTYbYO8nY35BFhtR05WGSnquztSy1DK3VTpHb744xuQxpgi1SuUMCI008ffahKAk";
   

    \Stripe\Stripe::setApiKey($secretKey);