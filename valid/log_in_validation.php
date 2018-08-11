<?php

// define variables and set to empty values
$email = $password = "";

$email = test_input($_POST["email"]);
$password = test_input($_POST["password"]);

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if(isset($_SESSION["id"])){
    header("Location: index.php");
}

if(isset($_POST["login"])){

    if(!empty($_POST["email"]) && !empty($_POST["password"])) {
        $email=($_POST["email"]);
        $password = md5($_POST["password"]);
        $query = $conn->query("SELECT * FROM users WHERE email ='$email' AND password = '$password'");
        $count = $query->rowcount();
        $row = $query->fetch();
        if($count!=0)
       // {
          //  while($row=mysqli_fetch_assoc($query))
            {
                $dbemail = $row["email"];
                $dbpassword = $row['password'];

            $_SESSION['id'] = $row['id'];
            header('location:index.php');
        }
            if($email == $dbemail && $password == $dbpassword)
            {
                $_SESSION['session_email']=$email;

                header("Location: index.php");
            }
        } else {

            echo  "Invalid email or password!";
        }
    } else {
        
        $message = "All fields are required!";
    }
 
?>
