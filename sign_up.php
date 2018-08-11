<?php
include_once "components/db_functions.php";
include_once "valid/sign_up_validation.php";
?>

<?php
include_once "layouts/header.php";
include_once "layouts/left-sidebar.php";
?>

<div class="col-md-8 right">
   <div class="container">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        
        <!-- Form Name -->
        <h2 class="m_top">Sign Up</h2>

        <!-- firstname input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="First Name">First Name:</label>
            <div class="col-md-6">
                <input name="sign_firstname" class="form-control input-md" id="firstnameinput" type="text" placeholder="First Name" value = "<?php echo isset($_POST['firstname'])?$_POST['firstname']:''?>"
            </div>
        </div>

        <!-- lastname input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="Last Name">Last Name:</label>
            <div class="col-md-6">
                <input name="sign_lastname" class="form-control input-md" id="lastnameinput" type="text" placeholder="Last Name" value = "<?php echo isset($_POST['lastname'])?$_POST['lastname']:''?>"
            </div>
        </div>

        <!-- Email input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="Email">Email:</label>
            <div class="col-md-6">
                <input name="sign_email" class="form-control input-md" id="emailinput" type="text" placeholder="Email" value = "<?php echo isset($_POST['email'])?$_POST['email']:''?>"
            </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="passwordinput">Password:</label>
            <div class="col-md-6">
                <input name="sign_password" class="form-control input-md" id="passwordinput" type="password"
                       placeholder="Password" value = "<?php echo isset($_POST['password'])?$_POST['password']:''?>"
            </div>
        </div>
        <br />

        <!-- Button -->
        <div class="form-group">
            <div class="col-md-6">
                <button name="singlebutton" class="btn btn-primary login_bottom_margin" id="singlebutton">Registration</button>
            </div>
        </div>
    </form>
  </div>
</div>
</div>
</div>

</div>
</div>

<?php
include_once "layouts/footer.php";
?>