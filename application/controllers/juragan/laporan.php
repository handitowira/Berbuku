<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of laporan
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class Laporan extends MY_Controller {

    private $judul = 'Laporan';

    public function __construct() {
        parent::__construct();
        parent::set_judul($this->judul);
        parent::default_meta();
        backButtonHandle();
        $this->load->model('order_m');
        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        $this->data->laporan = $this->order_m->get_laporan();
        parent::_view('laporan/list', $this->data);
    }

    public function detail($id = 0) {
        if ($this->input->post('submit')) {
            $this->order_m->update_by(array('id_order' => $id), array('status_order' => $this->input->post('status')));
            $this->data->sukses = 'Data berhasil diperbaharui';
        } else {
            $this->data->detail = $this->order_m->get_record(array('id_order' => $id), true);
        }

        parent::_modal('laporan/detail', $this->data);
    }

}

/* End of file laporan.php */
/* Location: ./application/controllers/juragan/laporan.php */