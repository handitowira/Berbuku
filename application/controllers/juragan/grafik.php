<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of grafik
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class grafik extends MY_Controller {

    //put your code here
    private $judul = 'Grafik';

    public function __construct() {
        parent::__construct();
        parent::default_meta();
        parent::set_judul($this->judul);
        backButtonHandle();
        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        parent::_view('grafik/grafik_statis', $this->data);
    }

    public function logout() {
        $this->autentifikasi->logout();
        redirect(site_url());
    }

}

?>
