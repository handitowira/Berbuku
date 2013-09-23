<style type="text/css">
    .sinopsis{
        font-size: 1.3em;
        text-align: justify;
        width: 445px;
    }
</style>
<?php foreach ($produk as $item): ?>
    <div class="image-section">
        <div class="image-wrap">
            <div class="image-iner">
                <?php if (@$item->thumb == ''): ?>
                    <div class="no-image">
                        <span>Belum ada Gambar</span>
                    </div>
                <?php else: ?>
                    <a href="<?php echo base_url() . @$item->image; ?>" class="image-thumb" >
                        <img id="image1" src="<?php echo base_url() . $item->thumb ?>" border="0" />
                    </a>
                <?php endif; ?>
                <?php if ($item->stok == 0): ?>
                    <div class="trans">
                        <span>Stok Habis</span>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <div class="thumb-wrap">
            <?php foreach ($item->picture as $key => $pic): ?>
                <img src="<?php echo base_url() . $pic['thumb']; ?>" width="40px" />
            <?php endforeach; ?>
        </div>
        <div class="meta-produk">
            <div class="stok">
                <!--<span class="stok">Stok</span><?php echo $item->stok; ?>-->
            </div>
            <?php if ($item->harga_baru != 0): ?>
                <div class="harga-lama">
                    <span class="harga">Harga Lama</span>Rp. <?php echo $item->harga_jual ?>
                </div>
                <div class="harga-jual">
                    <span class="harga">Harga Baru</span>Rp. <?php echo $item->harga_baru ?>
                </div>
            <?php else: ?>
                <div class="harga-jual">
                    <span class="harga">Harga</span>Rp. <?php echo $item->harga_jual ?>
                </div>
            <?php endif; ?>
        </div>
        <?php if ($item->stok != 0): ?>
            <div class="button-wrap">
                <?php
                echo form_open(site_url('store/add_cart'));
                echo form_hidden('id', $item->id_produk);
                echo form_hidden('kode', $item->kode_produk);
                echo form_hidden('name', $item->nama_produk);
                echo form_hidden('url', uri_string());
                if ($item->harga_baru != 0) {
                    echo form_hidden('price', $item->harga_baru);
                } else {
                    echo form_hidden('price', $item->harga_jual);
                }
                echo form_label('Jumlah Beli');
                echo form_input('qty', '1');
                echo '<br/>';
                echo '<br/>';
                echo form_submit('submit', 'Pesan Sekarang');
                echo form_close();
                ?>
            </div>
        <?php endif; ?>
    </div>
    <div class="desc-section">
        <div class="produk-name" style="text-align: center;">
            <h2> ++ <b><?php echo $item->nama_produk; ?></b> ++ </h2>
            <br>
            <table id="tabel-data" style="text-align: left;">
                <tr>
                    <td> Penulis </td>
                    <td><?php echo null_to_default($item->penulis); ?></td>
                </tr>
                <tr>
                    <td> Penerbit </td>
                    <td><?php echo null_to_default($item->penerbit); ?></td>
                </tr>
                <tr>
                    <td> Tanggal Terbit </td>
                    <td><?php echo null_to_default($item->terbit); ?></td>
                </tr>
                <tr>
                    <td> Jumlah Halaman </td>
                    <td><?php echo null_to_default($item->jml_halaman); ?></td>
                </tr>
                <tr>
                    <td> Berat Buku (gr)  </td>
                    <td><?php echo null_to_default($item->berat); ?> </td>
                </tr>
                <tr>
                    <td> Jenis Cover</td>
                    <td><?php echo null_to_default($item->jenis_cover); ?></td>
                </tr>
                <tr>
                    <td> Ukuran Buku (cm)</td>
                    <td><?php echo null_to_default($item->ukuran); ?></td>
                </tr>
                <tr>
                    <td> Text Bahasa </td>
                    <td><?php echo null_to_default($item->bahasa); ?></td>
                </tr>
            </table>
        </div>
        <div>
            <br/>
            <br/>
            <center><b>~ Sinopsis Buku ~</b></center>
            <br/>
            <div class="sinopsis">
                <?php echo $item->deskripsi_produk; ?>
            </div>
            </p>
        </div>
    </div>
<?php endforeach; ?>
<div>
    <link rel="stylesheet" href="<?php echo base_url(); ?>asset/css/multizoom.css" type="text/css" />
    <script type="text/javascript" src="<?php echo base_url(); ?>asset/js/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>asset/js/multizoom.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('#image1').addimagezoom({// single image zoom
                zoomrange: [3, 10],
                magnifiersize: [300, 300],
                magnifierpos: 'right',
                cursorshade: true,
                largeimage: '<?php echo base_url() . @$item->image; ?>' //<-- No comma after last option!
            });
        });
    </script>
</div>