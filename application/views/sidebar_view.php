<style type="text/css">
    .i1{
        height: 25px;
        width: 210px;
        background-color: #ECF5FF;
        border: 2px solid #5776B6;
        border-radius: 5px 5px 5px 5px;
        resize: none;
        padding-left: 5px;
    }
    .i1:focus{
        color: black;
        font-weight: bold;
        border: 2px solid red;
        background-color: #FCC33B;
        resize: none;
        box-shadow: inset 3px 3px 3px grey;
        text-shadow: 1px 1px 3px white;
        padding-left: 5px;
    }
    .b1{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #FCC33B;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .b1:hover{
        height: 30px;
        width: 100px;
        font-weight: bold;
        background-color: #ECF5FF;
        border-color: #5776B6;
        border-radius: 5px 5px 5px 5px;
    }
    .berdasar{
        background-color: #ECF5FF;
        box-shadow: inset 2px 2px 2px grey;
        border: 2px solid #33508A;
        border-radius: 5px;
        clip:rect(2px 49px 19px 2px);
        z-index:2; 
    }
</style>
<li>
    <br/>
    <h2><?php echo 'Cari buku :'; ?></h2>
    <b>Berdasarkan : </b><select class="berdasar">
        <option value="1">Judul</option>
        <option value="2">Penulis</option>
        <option value="3">Penerbit</option>
    </select>
    <br/>
    <br/>
    <form action ="<?php print site_url(); ?>/store/cari" method=POST>
        <input type="text" name="cari" class="i1"/>
        <br/>
        <br/>
        <b><input type="submit" value="cari" class="b1"/></b>
    </form>
</li>
<li>
    <h2>Keranjang Belanja</h2>
    <?php if ($cart == array()): ?>
        <div class="note-cart">Keranjang Anda Kosong</div>
    <?php else: ?>
        <ul>
            <?php foreach ($cart as $item): ?>
                <li><?php echo $item['name'] . " (" . $item['qty'] . ")"; ?></li>
            <?php endforeach; ?>
        </ul>
        <a href="<?php echo site_url('store/hapus_cart'); ?>" class="clear">Hapus Isi</a>
        <a href="<?php echo site_url('store/checkout'); ?>" class="checkout">Check Out</a>
    <?php endif; ?>
</li>
<li>
    <h2>Kategori Buku</h2>
    <?php echo $kategori; ?>
    <hr/>
</li>