<h2 style="font-size: 2em; text-shadow: 2px 2px 5px grey;"><b>Riwayat Belanja</b></h2>
<p style="font-size: 1.3em">Berikut ini adalah riwayat belanja anda di toko kami</p>
<?php if ($order == array()): ?>
    <div class="note-cart">Anda Belum pernah berbelanja di sini</div>
<?php else: ?>
    <table class="user-record" cellspacing="0" cellpadding="3px">
        <tr>
            <th>Order ID</th>
            <th>Tanggal Belanja</th>
            <th>Jumlah Item</th>
            <th>Total Belanja</th>
            <th>Status</th>
        </tr>
        <?php foreach ($order as $item): ?>
            <tr>
                <td><?php echo $item['id_order']; ?></td>
                <td><?php echo $item['tanggal_masuk']; ?></td>
                <td><?php echo $item['total_item']; ?></td>
                <td> Rp. <?php echo $this->cart->format_number($item['total_biaya']); ?></td>
                <td><?php echo $item['status_order_text']; ?></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="4">Detail</td>
            </tr>
            <?php foreach ($item['detail'] as $detail): ?>
                <tr>
                    <td></td>
                    <td><?php echo $detail['nama_produk']; ?></td>
                    <td><?php echo $detail['kuantitas']; ?></td>
                    <td>Rp. <?php echo $this->cart->format_number($detail['subtotal']); ?></td>
                </tr>
            <?php endforeach; ?>
        <?php endforeach; ?>
    </table>
<?php endif; ?>