<div id="sidebar">
    <ul>
        <li>
            {sidebar_data}
        </li>
    </ul>
    <br/>
    <div id="you">
        <b>Identitas Pengunjung</b>
        <br/>
        <br/>
        <a href="http://www.wieistmeineip.de/cometo/?en">
            <img src="http://www.wieistmeineip.de/ip-address/" border="0" width="125" height="125" alt="IP" />
        </a>
    </div>
    <br/>
    <div id="you-bot">
        <b>Jumlah Pengunjung</b>
        <br/>
        <br/>
        <?php
        //Easy Counter code begins
        $ec_username = 'handito'; // <--- your username
        if (!$ec_fsock = fsockopen('www.easycounter.com', 80, $errno, $errstr, 2)) {
            echo '<img src="../images/error.png">';
        } else {
            fputs($ec_fsock, "GET /php.counter.php?username=" . urlencode($ec_username) . " HTTP/1.0\r\n" . "Host:www.easycounter.com\r\n\r\n");
            $ec_buffer = '';
            while (!feof($ec_fsock))
                $ec_buffer .= fgets($ec_fsock, 1024);
            echo substr($ec_buffer, strpos($ec_buffer, "\n\r\n") + 3);
            fclose($ec_fsock);
        }
        ?>
    </div>
    <br/>
    <div id="you-bot-2">
        <b>Ikuti kami di</b>
        <br/>
        <br/>
        <div id="sosmed">
            <a href="https://www.facebook.com" target="_blank"><img src="<?php echo base_url(); ?>template/palmtree/images/facebook.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="https://www.twitter.com" target="_blank"><img src="<?php echo base_url(); ?>template/palmtree/images/twitter.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://www.plus.google.com" target="_blank"><img src="<?php echo base_url(); ?>template/palmtree/images/google+.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://www.instagram.com" target="_blank"><img src="<?php echo base_url(); ?>template/palmtree/images/insta.png" /></a>
        </div>
    </div>
    <br/>
    <div id="side-map">
        <b>Kunjungi Gerai Kami</b>
        <br/>
        <br/>
        <div id="googleMap" style="width:210px;height:120px;"></div>
    </div>
</div>
<script
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD1M1nYie09vxgSpksHy-MRA8hNEOmv400&sensor=false">
</script>

<script>
    var myCenter = new google.maps.LatLng(-7.977909, 112.65699);
    var marker;

    function initialize()
    {
        var mapProp = {
            center: myCenter,
            zoom: 15,
            disableDefaultUI: true,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        marker = new google.maps.Marker({
            position: myCenter,
            animation: google.maps.Animation.BOUNCE
        });

        marker.setMap(map);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>