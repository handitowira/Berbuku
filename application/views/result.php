<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<center>
    <h2>Result</h2>
    <br/>
    <table style="border: 2px solid blue;">
        <tr style="font-weight: bold; background-color: #8FBBEF; text-align: center">
            <td>Judul Buku</td>
            <td>Tanggal Terbit</td>
            <td>Penerbit</td>
            <td>Penulis</td>
            <td>Ukuran Buku</td>
            <td>Bahasa</td>
        </tr>
        <?php foreach ($tampil as $row): ?>
            <tr>
                <td><a href="http://localhost/Berbuku.com/index.php/produk/novel_remaja/<?php echo $row->url_produk; ?>/"><?php echo $row->nama_produk; ?></a></td>
                <td><?php echo $row->terbit; ?></td>
                <td><?php echo $row->penerbit; ?></td>
                <td><?php echo $row->penulis; ?></td>
                <td><?php echo $row->ukuran; ?></td>
                <td><?php echo $row->bahasa; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</center>