<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of user
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting(0);

class User extends CI_Controller {

    private $rules = array(
        array(
            'field' => 'username',
            'label' => 'Username',
            'rules' => 'alpha_numeric|required|max_length[15]|min_length[6]'
        ),
        array(
            'field' => 'email',
            'label' => 'Email',
            'rules' => 'valid_email|required'
        ),
        array(
            'field' => 'password',
            'label' => 'Password',
            'rules' => 'alpha_numeric|required|max_length[20]|min_length[6]'
        ),
        array(
            'field' => 'conf_password',
            'label' => 'Confirm Password',
            'rules' => 'alpha_numeric|required|max_length[20]|matches[password]'
        )
    );
    private $edit_rules = array(
        array(
            'field' => 'username',
            'label' => 'Username',
            'rules' => 'alpha_numeric|required|max_length[15]|min_length[6]'
        ),
        array(
            'field' => 'email',
            'label' => 'Email',
            'rules' => 'valid_email|required'
        ),
        array(
            'field' => 'new_password',
            'label' => 'Password Baru',
            'rules' => 'alpha_numeric|required|max_length[20]|min_length[6]'
        ),
        array(
            'field' => 'conf_password',
            'label' => 'Confirm Password',
            'rules' => 'alpha_numeric|required|max_length[20]|matches[new_password]'
        )
    );
    private $login_rules = array(
        array(
            'field' => 'username',
            'label' => 'Username',
            'rules' => 'alpha_numeric|required|max_length[15]|min_length[6]'
        ),
        array(
            'field' => 'password',
            'label' => 'Password',
            'rules' => 'alpha_numeric|required|max_length[20]|min_length[6]'
        )
    );
    private $profile_rules = array(
        array(
            'field' => 'nama_depan',
            'label' => 'Nama Depan',
            'rules' => 'alpha|required'
        ),
        array(
            'field' => 'nama_belakang',
            'label' => 'Nama Belakang',
            'rules' => 'alpha'
        ),
        array(
            'field' => 'alamat',
            'label' => 'Alamat',
            'rules' => 'utf8|required|max_length[200]'
        ),
        array(
            'field' => 'phone',
            'label' => 'Telephone',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'kode_pos',
            'label' => 'Kode Pos',
            'rules' => 'numeric'
        )
    );

    public function __construct() {
        parent::__construct();
        backButtonHandle();
        $this->load->model('option_m');
        $option = $this->option_m->get_by(array('nama_opsi' => 'store_option'));
        foreach (unserialize($option->value_opsi) as $key => $val) {
            $this->data->$key = $val;
        }

        $this->template->set_template('palmtree');
        $this->template->set_css(array('store'));
        $this->load->model('kategori_m');
        $this->load->model('user_m');

        $this->load->library('form_validation');

        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');

        $this->data->kategori = $this->kategori_m->kategori_menu_list;
        $this->data->cart = $this->cart->contents();

        $is_active = $this->autentifikasi->sudah_login();
        $is_allow = $this->autentifikasi->role(array('user', 'admin'));
        $this->data->logged_in = $is_active && $is_allow;
    }

    public function index() {
        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('front', $this->data);
    }

    public function login() {
        $this->form_validation->set_rules($this->login_rules);
        if ($this->form_validation->run()) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            if (!$this->autentifikasi->login($username, $password)) {
                $this->session->set_flashdata('pesan', '<div class="error">Login gagal</div>');
                redirect(site_url('user/login', 'refresh'));
            } else {
                $this->session->set_flashdata('pesan', '<div class="sukses">Anda telah berhasil login, selamat berbelanja.</div>');
                redirect(site_url());
            }
        }

        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('user_login', $this->data);
    }

    public function logout() {
        $this->autentifikasi->logout();
        redirect(site_url('user/login'));
    }

    public function register() {
        $this->form_validation->set_rules($this->rules);
        if ($this->form_validation->run()) {
            $username = $this->input->post('username');
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            if (!$this->autentifikasi->tambah($username, $email, $password, 'user')) {
                $this->data->error = '<div class="error">Username telah digunakan</div>';
            } else {
                $this->data->sukses = '<div class="sukses">Proses registrasi berhasil</div>';
            }
        }

        $this->data->username = set_value('username');
        $this->data->email = set_value('email');

        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('register', $this->data);
    }

    public function profile() {
        $this->load->model('profile_m');

        $data = $this->profile_m->get_by(array('user_id' => $this->session->userdata('user_id')));

        $this->form_validation->set_rules($this->profile_rules);
        if ($this->form_validation->run()) {
            $insert = array('nama_depan' => $this->input->post('nama_depan'),
                'nama_belakang' => $this->input->post('nama_belakang'),
                'alamat' => $this->input->post('alamat'),
                'kode_pos' => $this->input->post('kode_pos'),
                'phone' => $this->input->post('phone'));
            if ($data) {
                if ($this->profile_m->update($data->id_user_data, $insert)) {
                    redirect(site_url('user/profile'));
                }
            } else {
                $insert['user_id'] = $this->session->userdata('user_id');
                if ($this->profile_m->insert($insert)) {
                    redirect(site_url('user/profile'));
                }
            }
        }

        if ($data) {
            $this->data->nama_depan = $data->nama_depan;
            $this->data->nama_belakang = $data->nama_belakang;
            $this->data->alamat = $data->alamat;
            $this->data->kode_pos = $data->kode_pos;
            $this->data->phone = $data->phone;
        } else {
            $this->data->nama_depan = set_value('nama_depan');
            $this->data->nama_belakang = set_value('nama_belakang');
            $this->data->alamat = set_value('alamat');
            $this->data->kode_pos = set_value('kode_pos');
            $this->data->phone = set_value('phone');
        }

        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('profile', $this->data);
    }

    public function edit() {
        $id = $this->session->userdata('user_id');
        $level = $this->session->userdata('level');

        $data = $this->user_m->get($id);

        $this->form_validation->set_rules($this->edit_rules);
        if ($this->form_validation->run()) {
            $username = $this->input->post('username');
            $email = $this->input->post('email');
            $password = $this->input->post('new_password');

            if (!$this->autentifikasi->ubah($id, $username, $email, $password, $level)) {
                $this->data->error = '<div class="error">Username telah digunakan</div>';
            } else {
                $this->data->sukses = '<div class="sukses">Proses registrasi berhasil</div>';
            }
        }

        if ($data) {
            $this->data->username = $data->username;
            $this->data->email = $data->email;
        } else {
            $this->data->username = set_value('username');
            $this->data->email = set_value('email');
        }

        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('edit', $this->data);
    }

    public function record() {
        $this->load->model('order_m');
        $id = $this->session->userdata('user_id');

        $this->data->order = $this->order_m->get_record(array('user_id' => $id));

        $this->template->set_judul('Berbuku.com')
                ->set_css('style')
                ->set_parsial('sidebar', 'sidebar_view', $this->data)
                ->set_parsial('topmenu', 'top_view', $this->data)
                ->render('record', $this->data);
    }

}

/* End of file user.php */
/* Location: ./application/controllers/user.php */