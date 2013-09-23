<style type="text/css">
    .formnew{
        background-color: #D5EAF1;
        padding-top: 10px;
        height: 420px;
        border-radius: 20px;
    }
    .formnew textarea{
        resize: none;
        width: 315px;
        height: 100px;
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
<?php
if (@$sukses) {
    echo '<p class="msg done">' . @$sukses . '</p>';
    ?>
    <script type="text/javascript">
        (function($) {
            $(function() {
                parent.jQuery.colorbox.close();
                return false;
            });
        })(jQuery);
    </script>
    <?php
} else {
    echo '<div class="formnew">';
    echo validation_errors();
    echo form_fieldset('Penambahan Kategori');
    echo form_open(site_url(uri_string()));
    echo form_label('Kode');
    echo form_input('kode', @$kode, 'class="input-text"');
    echo form_label('Kategori');
    echo form_input('kategori', @$kategori, 'class="input-text"');
    echo form_label('Parent');
    echo form_dropdown('parent', $list_kategori, @$parent);
    echo form_label('Deskripsi');
    echo form_textarea('deskripsi', @$deskripsi);
    echo form_submit('submit', 'Submit', 'class="input-submit"');
    echo form_close();
    echo form_fieldset_close();
    echo '</div>';
}
?>