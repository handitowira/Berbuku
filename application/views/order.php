<style type="text/css">
    .peringatan{
        width: auto;
        height: 48px;
        background-color: #FFF0F0;
        border: 2px solid #EB6146;
        font-weight: bold;
        padding: 10px;
        color: black;
    }
</style>
<?php if (!$logged_in): ?>
    Anda Harus Login terlebih dahulu untuk melakukan langkah berikutnya.
<?php else: ?>
    <?php if ($this->session->flashdata('pesan')): ?>
        <?php echo $this->session->flashdata('pesan'); ?>
    <?php else: ?>
        <div class="peringatan">
            Keterangan : Untuk mempermudah proses verifikasi pembayaran anda mohon untuk menambahkan digit nomor id anda kedalam jumlah uang transder di bank
            'contoh, nomor id : 231 dengan biaya pembelian sejumlah Rp 50.000, maka anda diharapkan mengirim sejumlah uang Rp 50.231'
        </div>
        <br/>
        <br/>
        <h2>Catatan Belanja</h2>
        <?php echo form_open(site_url(uri_string()), 'class="order"'); ?>
        <table cellpadding="6" cellspacing="1" style="width:100%" border="0">
            <tr>
                <th>Judul Buku</th>
                <th align="center">QTY</th>
                <th style="text-align:right">Harga Satuan</th>
                <th style="text-align:right">Sub-Total</th>
            </tr>
            <?php
            $i = 1;
            $total_item = 0;
            ?>
            <?php foreach ($this->cart->contents() as $items): ?>
                <?php echo form_hidden($i . '[rowid]', $items['rowid']); ?>
                <tr>
                    <td>
                        <?php echo $items['name']; ?>
                        <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>
                            <p>
                                <?php foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>
                                    <strong><?php echo $option_name; ?>:</strong> <?php echo $option_value; ?><br />
                                <?php endforeach; ?>
                            </p>
                        <?php endif; ?>
                    </td>
                    <td align="center"><?php echo $items['qty']; ?></td>
                    <td style="text-align:right"><?php echo $this->cart->format_number($items['price']); ?></td>
                    <td style="text-align:right">Rp. <?php echo $this->cart->format_number($items['subtotal']); ?></td>
                </tr>
                <?php
                $i++;
                $total_item = $total_item + $items['qty'];
                ?>
            <?php endforeach; ?>
            <tr>
                <td></td>
                <td></td>
                <td style="text-align:right; background-color: #FFF0F0;"><strong>Total</strong></td>
                <td style="text-align:right; background-color: #FFF0F0;"><strong>Rp. <?php echo $this->cart->format_number($this->cart->total()); ?></strong></td>
            </tr>
        </table>
        <br/>
        <b style="text-decoration: underline">Nomor Id Anda :</b>
        <?php
        $text = '0123457';
        $panjang = 3;
        $txtlen = strlen($text) - 1;
        $result = '';
        for ($i = 1; $i <= $panjang; $i++) {
            $result .= $text[rand(0, $txtlen)];
        }
        //masih dalam proses pengembangan untuk nomer id nya :)
        echo ' '.$result;
        ?>
        <br/>
        <br/>
        <br/>
        <h2>Alamat Pengiriman</h2>
        <?php
        echo form_hidden('total_item', $total_item);
        echo form_label('Nama Depan');
        echo form_input('nama_depan', $nama_depan);
        echo form_label('Nama Belakang');
        echo form_input('nama_belakang', $nama_belakang);
        echo form_label('Alamat');
        echo form_textarea('alamat', $alamat, 'style="width:400px;height:150px;"');
        echo form_label('Kode Pos');
        echo form_input('kode_pos', $kode_pos);
        echo form_label('Telephone');
        echo form_input('phone', $phone);
        echo form_submit('submit', 'Pesan Sekarang');
        ?>
    <?php endif; ?>
<?php endif; ?>