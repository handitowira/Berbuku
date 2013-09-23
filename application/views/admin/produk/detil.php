<style type="text/css">
    .formnew textarea{
        resize: none;
        width: 400px;
        height: 150px;
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
<h1><?php echo $judul ?></h1>
<div id="menu" class="box">
    <ul class="box f-right">
        <li><a href="<?php echo site_url('admin/produk/tambah') ?>" id="add">
                <span><strong>Tambah Buku Baru</strong></span>
            </a></li>
    </ul>
</div>
<h3 class="tit"><?php echo $nama_produk; ?></h3>
<div class="detil-left">
    <div class="picture-wrap">
        <div class="picture-inner">
            <?php if (@$gambar): ?>
                <?php
                $i = true;
                foreach (@$gambar as $item):
                    ?>
                    <?php if (@$item->default): ?>
                        <?php $i = false; ?>
                        <a href="<?php echo base_url() . @$item->image; ?>" class="image-thumb" >
                            <img src="<?php echo base_url() . @$item->thumb; ?>" />
                        </a>
                    <?php endif; ?>
                <?php endforeach; ?>
                <?php if ($i): ?>
                    <div class="no-image"><span>
                            <a href="<?php echo site_url('admin/produk/gambar/' . $id); ?>">No Default Picture</a>
                        </span></div>
                <?php endif; ?>
                <?php foreach (@$gambar as $item): ?>
                    <?php if (!@$item->default): ?>
                        <a href="<?php echo base_url() . @$item->image; ?>" class="image-thumb" >
                            <img src="<?php echo base_url() . @$item->thumb; ?>" width="30px" />
                        </a>
                    <?php endif; ?>
                <?php endforeach; ?>
                <br />
                <a href="<?php echo site_url('admin/produk/gambar/' . $id); ?>">Tambah Gambar</a>
            <?php else: ?>
                <div class="no-image"><span>
                        <a href="<?php echo site_url('admin/produk/gambar/' . $id); ?>">Tambah Gambar</a>
                    </span></div>
            <?php endif; ?>
        </div>
    </div>
</div>
<div class="detil-right">
    <?php
    echo '<div class="formnew">';
    echo validation_errors();
    echo form_open(site_url(uri_string()));
    echo form_fieldset('Data Buku', 'class="produk"');
    echo '<div class="col-left">';
    echo form_label('Kode');
    echo form_input('kode', @$kode, 'class="input-text"');
    echo form_label('Nama Produk');
    echo form_input('nama_produk', @$nama_produk, 'class="input-text"');
    echo form_label('Tanggal Terbit');
    echo form_input('terbit', @$terbit, 'class="input-text"');
    echo form_label('Penulis');
    echo form_input('penulis', @$penulis, 'class="input-text"');
    echo form_label('Penerbit');
    echo form_input('penerbit', @$penerbit, 'class="input-text"');
    echo form_label('Jumlah Halaman');
    echo form_input('jml_halaman', @$jml_halaman, 'class="input-text"');
    echo '</div><div class="col-right">';
    echo form_label('Ukuran buku(cm)');
    echo form_input('ukuran', @$ukuran, 'class=input-text');
    echo form_label('Berat buku(gr)');
    echo form_input('berat', @$berat, 'class="input-text"');
    echo form_label('Jenis Cover');
    echo form_input('jenis_cover', @$jenis_cover, 'class="input-text"');
    echo form_label('Bahasa');
    echo form_input('bahasa', @$bahasa, 'class="input-text"');
    echo form_label('Stok');
    echo form_input('stok', @$stok, 'class="input-text"');
    echo form_label('Kategori');
    echo form_dropdown('kategori', $list_kategori, @$kategori);
    echo '</div><div class="clear"></div>';
    echo form_fieldset_close();
    echo form_fieldset('Harga', 'class="produk"');
    echo '<div class="col-left">';
    echo form_label('Harga Jual');
    echo form_input('harga', @$harga, 'class="input-text"');
    echo '</div><div class="col-right">';
    echo form_label('Harga Baru');
    echo form_input('harga_baru', @$harga_baru, 'class="input-text"');
    echo '</div><div class="clear"></div>';
    echo form_fieldset_close();
    echo form_fieldset('Sinopsis', 'class="produk"');
    echo form_textarea('deskripsi', @$deskripsi);
    echo form_fieldset_close();
    echo form_submit('submit', 'Submit', 'class="input-submit"');
    echo form_close();
    echo '</div>';
    ?>
</div>
<div class="clear"></div>

<script type="text/javascript">
    jQuery(function($) {
        $("#add").colorbox({
            width: "500", height: "500", iframe: true,
            onClosed: function() {
                location.reload();
            }
        });
        $(".image-thumb").colorbox();
    });
</script>