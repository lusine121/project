<?php

// define variables and set to empty values
$firstname = $lastname = $email = $password = "";
 
$firstname = test_input($_POST["firstname"]);
$lastname = test_input($_POST["lastname"]);
$email = test_input($_POST["email"]);
$password = md5($_POST["password"]);

//validate firstname
if (isset($_POST["firstname"]) && empty($_POST["firstname"])){
   return "First Name can not be empty.";
   }else{
       // check if name only contains letters and whitespace
      if(!preg_match("/^[a-zA-Z'-]+$/", $firstname)){
        return "<h4>First Name is not valid! It must not contain numbers   or special characters.</h4>";
      exit;
      }   
   }
     
//validate lastname
if (isset($_POST["lastname"]) && empty($_POST["lastname"])){
    return "Last Name can not be empty.";
}  else{ 
    if(!preg_match("/^[a-zA-Z'-]+$/", $lastname)){
       return "<h4>Last Name is not valid! It must not contain numbers   or special characters.</h4>";
    exit;
  }
}

//validate email
if (isset($_POST["email"]) && empty($_POST["email"])){
    return "Email can not be empty.";
} else{  
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    return "Invalid email format"; 
  }
}

//validate password
    if (isset($_POST["password"]) && empty($_POST["password"])){
       return "Password can not be empty.";
    }  
    
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

echo "<h2>Your Input:</h2>";
print_r ($firstname);
echo "<pre>";
print_r ($lastname);
echo "<pre>";
print_r ($email);
echo "<pre>";
print_r ($password);

if(!empty($_POST["firstname"]) && !empty($_POST["lastname"]) && !empty($_POST["email"]) && !empty($_POST["password"])){
    $sql = "INSERT INTO users(firstname, lastname, email, password) VALUES('$firstname', '$lastname', '$email', '$password')";
        $res = $conn->query($sql);
        if ($res) {
            echo "Ваш акаунт успешно создан";
        }
}

?>