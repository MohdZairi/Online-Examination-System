<?php

include_once 'dbConnection.php';

    if(isset($_POST['register_form']))
    {
        $name=  $_POST['name'];
        $college= $_POST['college'];
        $gender =$_POST['gender'];
        $phone=$_POST['phone'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $email = stripslashes($email);
        $email = addslashes($email);
        $password = stripslashes($password); 
        $password = addslashes($password);

        $result = mysqli_query($con,"SELECT email FROM user WHERE email = '$email'");
        if(mysqli_num_rows($result)>0)
        {
            header("Location: index.php?error=This email ".$email." is already taken");
        }
        else
        {
            $result2 = mysqli_query($con,"INSERT INTO user(name,gender,college,email,phone,password) VALUES('$name','$gender','$college','$email','$phone','$password')");

            if($result2)
            {
                header("Location: index.php");
                exit();
            }
            else
            {
                header("Location : index.php?error=Unknown error has occured");
            }
 
        }

        
    }
    
?>