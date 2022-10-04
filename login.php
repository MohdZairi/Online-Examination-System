<?php
session_start();
include_once 'dbConnection.php';

    if(isset($_POST['login_form']))
    {
        
        $email = $_POST['email'];
        $password = $_POST['password'];
        $email = stripslashes($email);
        $email = addslashes($email);
        $password = stripslashes($password); 
        $password = addslashes($password);

        //search from table user
        $result = mysqli_query($con,"SELECT * FROM user WHERE email = '$email' AND password = '$password'");
        $count=mysqli_num_rows($result);
        if($count == 1)
        {
            $row = mysqli_fetch_array($result);
            $_SESSION['name']=$row['name'];
            $_SESSION['email']=$row['email'];
            

            if($row['privilege']=='user')
            {
                header("location:account.php?q=1");
            }
            else
            {
                $_SESSION['login']= true;
                header("location:dash.php?errorlogin=Username Or Password Wrong.");
                exit();
            }

        }
        else
        {
            header("location:index.php");
        }
    }
    
?>