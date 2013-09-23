<style>
    .formnew{
        background-color: #D5EAF1;
        width: 275px;
        height: 190px;
        border-radius: 20px;
        padding: 20px;
        box-shadow: 3px 3px 3px grey;
    }
    .formnew input[type='text'], .formnew input[type='password']{
        height: 25px;
        width: 270px;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
        padding-left: 5px;
    }

    .formnew input[type='text']:focus, .formnew input[type='password']:focus{
        color: black;
        font-weight: bold;
        border: 2px solid red;
        background-color: #FCC33B;
        resize: none;
        box-shadow: inset 3px 3px 3px grey;
        text-shadow: 1px 1px 3px white;
        padding-left: 5px;
    }

    .formnew input[type=submit]{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #FCC33B;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .formnew input[type=submit]:hover{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .formnew input[type=submit]:active{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
        box-shadow: inset 3px 3px 3px grey;
    }
</style>
<?php if ($this->session->flashdata('pesan')): ?>
    <?php echo $this->session->flashdata('pesan'); ?>
<?php else: ?>
    <h2 style="font-size: 2em; text-shadow: 2px 2px 5px grey;"><b>Silakan Login</b></h2>
    <?php
    if (@$error) {
        echo @$error;
    }
    ?>
    <?php echo validation_errors(); ?>
    <br />
    <div class="formnew">
        <?php echo form_open(site_url(uri_string()), 'class="order"'); ?>
        <?php echo form_label('Username'); ?>
        <br/>
        <?php echo form_input('username'); ?>
        <?php echo form_label('Password'); ?>
        <br/>
        <?php echo form_password('password'); ?>    
        <br/>
        <?php echo form_submit('submit', 'Login'); ?>
        <?php echo form_close(); ?>
    </div>
    <br />
    <br />
    <font style="font-size: 1.3em">Anda belum memiliki akun? Silakan daftar <a href="<?php echo site_url('user/register'); ?>"><b>disini</b></a>.</font>
<?php endif ?>