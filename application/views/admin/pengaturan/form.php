<style type="text/css">
    .pengaturan input[type=submit]{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #FCC33B;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .pengaturan input[type=submit]:hover{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .pengaturan input[type=submit]:active{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
        box-shadow: inset 3px 3px 3px grey;
    }
</style>
<h1><?php echo $judul ?></h1>
<div id="menu" class="box">
    <ul class="box f-right">
    </ul>
</div>
<h3 class="tit">Pengaturan Situs</h3>
<div class="pengaturan">
    <?php echo form_fieldset('&nbsp;Tentang Berbuku.com&nbsp;'); ?>
    <?php echo form_open(site_url(uri_string())); ?>
    <?php echo form_label('Slogan'); ?>
    <?php echo form_input('slogan', @$slogan, 'style="width: 260px;"'); ?>
    <?php echo form_label('Sambutan Halaman Depan'); ?>
    <?php echo form_textarea('sambutan', @$sambutan); ?>
    <?php echo form_submit('submit', 'Simpan'); ?>
    <?php echo form_close(); ?>
    <?php echo form_fieldset_close(); ?>
</div>