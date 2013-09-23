<div class="form-login">
    <div class="login-left">
        <b>LOGIN ACCESS</b>
        <div class="login-icon"></div>
    </div>
    <div class="login-right">
        <div class="form-login-wrapper">
            <div class="formnew">
                <?php echo form_open('login'); ?>
                <?php echo form_label('Username', 'username'); ?>
                <?php echo form_input('username'); ?>
                <?php echo form_label('Password', 'password'); ?>
                <?php echo form_password('password'); ?>
                <?php echo '<br/><br/>' . form_submit('submit', 'login'); ?>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>