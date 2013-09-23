<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of pengaturan
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class Pengaturan extends MY_Controller {

    private $judul = 'Pengaturan';

    public function __construct() {
        parent::__construct();
        parent::set_judul($this->judul);
        parent::default_meta();
        backButtonHandle();
        $this->load->model('option_m');

        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        $old_data = $this->option_m->get_by(array('nama_opsi' => 'store_option'));

        $isi_data = unserialize($old_data->value_opsi);

        $this->data->slogan = $isi_data['slogan'];
        $this->data->sambutan = $isi_data['sambutan'];


        $data = array(
            'slogan' => $this->input->post('slogan'),
            'sambutan' => $this->input->post('sambutan'));
        $insert_data = array('value_opsi' => serialize($data));
        if (isset($_POST['submit'])) {
            $this->option_m->update_by(array('nama_opsi' => 'store_option'), $insert_data);
            redirect(site_url('admin/pengaturan'));
        }

        parent::_view('pengaturan/form', $this->data);
    }

}

/* End of file pengaturan.php */
/* Location: ./application/controllers/juragan/pengaturan.php */