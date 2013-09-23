<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of login
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class Login extends CI_Controller {

    private $rule = array(
        array(
            'field' => 'username',
            'label' => 'Username',
            'rules' => 'required',
        ),
        array(
            'field' => 'password',
            'label' => 'Password',
            'rules' => 'required',
        )
    );

    public function __construct() {
        parent::__construct();
        backButtonHandle();
        $this->load->model('option_m');
        $this->load->helper('back_helper');
        $option = $this->option_m->get_by(array('nama_opsi' => 'store_option'));
        foreach (unserialize($option->value_opsi) as $key => $val) {
            $this->data->$key = $val;
        }

        $this->template->use_asset()->set_judul('Form Login')->set_css('login');

        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $this->load->library('form_validation');
        $this->form_validation->set_rules($this->rule);
        if ($this->form_validation->run()) {
            $this->autentifikasi->login($username, $password);
            redirect(site_url('admin'));
        }

        $this->_view('login', $this->data);
    }

    private function _view($filename, $data) {
        $this->load->view('admin/header', $data);
        $this->load->view($filename, $data);
        $this->load->view('admin/footer', $data);
    }

}

/* End of file login.php */
/* Location: ./application/controllers/login.php */