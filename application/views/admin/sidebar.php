<!-- Aside (Left Column) -->
<div id="aside" class="box">

    <div class="padding box">

        <!-- Logo (Max. width = 200px)-->
        <p id="logo"><a href="http://localhost/Berbuku.com/"><img src="<?php echo base_url() . 'asset/images/1.png'; ?>" alt="Our logo" title="Visit Site" draggable="false"/></a></p>

        <!-- Search 
        <form action="#" method="get" id="search">
                <fieldset>
                        <legend>Search</legend>

                        <p><input type="text" size="17" name="" class="input-text" />&nbsp;<input type="submit" value="OK" class="input-submit-02" /><br />
                        <a href="javascript:toggle('search-options');" class="ico-drop">Advanced search</a></p>

                        
                        <div id="search-options" style="display:none;">

                                <p>
                                        <label><input type="checkbox" name="" checked="checked" /> Option I.</label><br />
                                        <label><input type="checkbox" name="" /> Option II.</label><br />
                                        <label><input type="checkbox" name="" /> Option III.</label>
                                </p>

                        </div> 

                </fieldset>
        </form>
        -->
        <!-- Create a new project
        <p id="btn-create" class="box"><a href="#"><span>Create a new project</span></a></p>
        -->
    </div> <!-- /padding -->

    <ul class="box">
        <li><?php echo anchor(site_url('admin'), 'Dashboard'); ?></li>
        <li><?php echo anchor(site_url('admin/kategori'), 'Kategori'); ?></li>
        <li><?php echo anchor(site_url('admin/produk'), 'Buku'); ?></li>
        <li><?php echo anchor(site_url('admin/user'), 'User'); ?></li>
        <li><?php echo anchor(site_url('admin/laporan'), 'Laporan'); ?></li>
        <!--<li><?php echo anchor(site_url('admin/grafik'), 'Grafik'); ?></li>-->
        <li><?php echo anchor(site_url('admin/pengaturan'), 'Pengaturan'); ?></li>
        <!--
<li><a href="#">Lorem ipsum</a></li>
        <li><a href="#">Lorem ipsum</a></li>
        <li id="submenu-active"><a href="#">Active Page</a>
                <ul>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                </ul>
        </li>
        <li><a href="#">Lorem ipsum</a></li>
        <li><a href="#">Lorem ipsum</a>
                <ul>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                        <li><a href="#">Lorem ipsum</a></li>
                </ul>
</li>
        <li><a href="#">Lorem ipsum</a></li>
        -->
    </ul>

</div> <!-- /aside -->
<hr class="noscreen" />

<!-- Content (Right Column) -->
<div id="content" class="box">