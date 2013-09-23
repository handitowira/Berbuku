<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of dashboard
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class Dashboard extends MY_Controller {

    private $judul = 'Dashboard';

    public function __construct() {
        parent::__construct();
        parent::default_meta();
        parent::set_judul($this->judul);
        backButtonHandle();
        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        $this->data->word = 'My Name is Admin';
        parent::_view('page', $this->data);
    }

    public function logout() {
        $this->autentifikasi->logout();
        redirect(site_url());
    }

}

/* End of file dashboard.php */
/* Location: ./application/controller/juragan/dashboard.php */