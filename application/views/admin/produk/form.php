<style type="text/css">
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
    echo form_fieldset('Penambahan Buku', 'class="produk"');
    echo '<div class="col-left">';
    echo form_open(site_url(uri_string()));
    echo form_label('Kode');
    echo form_input('kode', @$kode, 'class="input-text"');
    echo form_label('Judul Buku');
    echo form_input('nama_produk', @$nama_produk, 'class="input-text"');
    echo form_label('Penerbit');
    echo form_input('penerbit', @$penerbit, 'class="input-text"');
    echo form_label('Penulis');
    echo form_input('penulis', @$penulis, 'class="input-text"');
    echo form_label('Harga');
    echo form_input('harga', @$harga, 'class="input-text"');
    echo form_label('Stok');
    echo form_input('stok', @$stok, 'class="input-text"');
    echo form_label('Kategori');
    echo form_dropdown('kategori', $list_kategori, @$kategori);
    echo '</div><div class="col-right">';
    echo form_label('Berat Buku (gr)');
    echo form_input('berat', @$berat, 'class="input-text"');
    echo form_label('Jenis Cover');
    echo form_input('jenis_cover', @$jenis_cover, 'class="input-text"');
    echo form_label('Bahasa Buku');
    echo form_input('bahasa', @$bahasa, 'class="input-text"');
    echo form_label('Jumlah Halaman');
    echo form_input('jml_halaman', @$jml_halaman, 'class="input-text"');
    echo form_label('Ukuran buku(cm)');
    echo form_input('ukuran', @$ukuran, 'class="input-text"');
    echo form_label('Tanggal Terbit');
    echo form_input('terbit', @$terbit, 'class="input-text"');
    echo '</div><div class="clear"></div><div class="col-down">';
    echo form_label('Sinopsis');
    echo form_textarea('deskripsi', @$deskripsi, 'style="width:300px;height:100px;"');
    echo '</div>';
    echo '</div><div class="clear"></div><div class="col-down">';
    echo form_submit('submit', 'Submit');
    echo form_close();
    echo '</div>';
    echo form_fieldset_close();
    echo '</div>';
}
?>