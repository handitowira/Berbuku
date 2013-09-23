<style>
    .formnew{
        background-color: #D5EAF1;
        width: 415px;
        height: 440px;
        border-radius: 20px;
        padding: 20px;
        box-shadow: 3px 3px 3px grey;
    }
    .formnew input[type='text'], .formnew input[type='password'], .formnew textarea{
        height: 25px;
        width: 270px;
        background-color: #ECF5FF;
        border: 2px solid #5776B6;
        border-radius: 5px 5px 5px 5px;
        resize: none;
        padding-left: 5px;
    }

    .formnew input[type='text']:focus, .formnew input[type='password']:focus, .formnew textarea:focus{
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
<h2 style="font-size: 2em; text-shadow: 2px 2px 5px grey;"><b>Form Edit Profil</b></h2>
<font style="font-size: 1.3em">Data yang anda isikan haruslah valid karena akan digunakan sebagai alamat pengiriman pesanan.</font>
<br/>
<?php
if (@$sukses) {
    echo @$sukses;
}
?>
<?php echo validation_errors(); ?>
<br />
<div class="formnew">
    <?php echo form_open(site_url(uri_string()), 'class="order"'); ?>
    <?php echo form_label('Nama Depan'); ?>
    <?php echo form_input('nama_depan', $nama_depan); ?>
    <?php echo form_label('Nama Belakang'); ?>
    <?php echo form_input('nama_belakang', $nama_belakang); ?>
    <?php echo form_label('Alamat'); ?>
    <?php echo form_textarea('alamat', $alamat, 'style="width:400px;height:150px;"'); ?>
    <?php echo form_label('Kode Pos'); ?>
    <?php echo form_input('kode_pos', $kode_pos); ?>
    <?php echo form_label('Telephone'); ?>
    <?php echo form_input('phone', $phone); ?>
    <?php echo form_submit('submit', 'Simpan'); ?>
    <?php echo form_close(); ?>
</div>