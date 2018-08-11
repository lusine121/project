<?php
session_start();
?>

<?php
include_once "components/db_functions.php";
include_once "valid/log_in_validation.php";
?>

<?php
include_once "layouts/header.php";
include_once "layouts/left-sidebar.php";
?>

<div class="col-md-8 right">

  <div class="container">
    <form method="post" action="log_in.php">
        <!-- Form Name -->
        <h2 class="m_top">Log In</h2>

        <!-- Email input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="E-mail">E-mail:</label>
            <div class="col-md-6">
                <input name="sign_email" class="form-control input-md" id="E-mail" type="text" placeholder="abc@mail.ru" value = "<?php echo isset($_POST['email'])?$_POST['email']:''?>"
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

        <div class="form-group">
            <label class="col-md-4 control-label" for="checkbox">Remember me</label>
            <div class="col-md-6">
                <input name="checkbox" class=" input-md" id="checkbox" type="checkbox">
            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <div class="col-md-6">
                <button name="singlebutton" class="btn btn-primary login_bottom_margin" id="singlebutton">Log in</button>
            </div>
        </div>
    </form>
  </div>
</div>

</div>
</div>

<?php
require_once "layouts/footer.php";
?>