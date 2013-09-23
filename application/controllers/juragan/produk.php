<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of produk
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
error_reporting('0');

class Produk extends MY_Controller {

    private $judul = 'Buku';
    private $rules = array(
        array(
            'field' => 'kode',
            'label' => 'Kode',
            'rules' => 'utf8'
        ),
        array(
            'field' => 'ukuran',
            'label' => 'Ukuran',
            'rules' => 'utf8|max_length[7]'
        ),
        array(
            'field' => 'deskripsi',
            'label' => 'Deskripsi',
            'rules' => 'utf8'
        ),
        array(
            'field' => 'nama_produk',
            'label' => 'Nama Kategori',
            'rules' => 'required|utf8'
        ),
        array(
            'field' => 'harga',
            'label' => 'Harga',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'harga_baru',
            'label' => 'Harga Baru',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'stok',
            'label' => 'Stok',
            'rules' => 'required|numeric'
        ),
        array(
            'field' => 'terbit',
            'label' => 'Terbit',
            'rules' => 'utf8'
        ),
        array(
            'field' => 'penulis',
            'label' => 'Penulis',
            'rules' => 'required|min_length[3]|max_length[300]'
        ),
        array(
            'field' => 'penerbit',
            'label' => 'Penerbit',
            'rules' => 'required|min_length[3]|max_length[300]'
        ),
        array(
            'field' => 'jml_halaman',
            'label' => 'Jumlah Halaman',
            'rules' => 'numeric'
        ),
        array(
            'field' => 'berat',
            'label' => 'Berat Buku',
            'rules' => 'numeric|min_length[3]|max_length[300]'
        ),
        array(
            'field' => 'jenis_cover',
            'label' => 'Jenis Cover',
            'rules' => 'alpha|min_length[3]|max_length[300]'
        ),
        array(
            'field' => 'bahasa',
            'label' => 'Bahasa',
            'rules' => 'alpha'
        )
    );

    public function __construct() {
        parent::__construct();
        parent::set_judul($this->judul);
        parent::default_meta();
        backButtonHandle();
        $this->load->model('produk_m');
        $this->load->model('kategori_m');

        $this->template->set_js('jcrop')->set_css('jcrop');
        $this->data->metadata = $this->template->get_metadata();
        $this->data->judul = $this->template->get_judul();
    }

    public function index() {
        $this->data->produk = $this->produk_m->get_all();

        parent::_view('produk/list', $this->data);
    }

    public function tambah() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<p class="msg warning">', '</p>');

        foreach ($this->kategori_m->kategori as $key => $val) {
            $this->data->list_kategori[$val['id_kategori']] = $val['nama_kategori'];
        }

        $this->form_validation->set_rules($this->rules);

        if ($this->form_validation->run()) {
            $data = array(
                'kode_produk' => $this->input->post('kode'),
                'nama_produk' => $this->input->post('nama_produk'),
                'penulis' => $this->input->post('penulis'),
                'penerbit' => $this->input->post('penerbit'),
                'terbit' => $this->input->post('terbit'),
                'jml_halaman' => $this->input->post('jml_halaman'),
                'berat' => $this->input->post('berat'),
                'ukuran' => $this->input->post('ukuran'),
                'jenis_cover' => $this->input->post('jenis_cover'),
                'bahasa' => $this->input->post('bahasa'),
                'url_produk' => underscore($this->input->post('nama_produk')),
                'kategori_id' => $this->input->post('kategori'),
                'harga_jual' => $this->input->post('harga'),
                'stok' => $this->input->post('stok'),
                'deskripsi_produk' => $this->input->post('deskripsi'),
            );
            if ($this->produk_m->insert($data)) {
                $this->data->sukses = 'Data Berhasil di tambahkan';
            }
        }

        $this->data->kode = set_value('kode');
        $this->data->nama_produk = set_value('nama_produk');
        $this->data->penulis = set_value('penulis');
        $this->data->penerbit = set_value('penerbit');
        $this->data->nama_terbit = set_value('terbit');
        $this->data->jml_halaman = set_value('jml_halaman');
        $this->data->berat = set_value('berat');
        $this->data->ukuran = set_value('ukuran');
        $this->data->jenis_cover = set_value('jenis_cover');
        $this->data->bahasa = set_value('bahasa');
        $this->data->deskripsi = set_value('deskripsi');
        $this->data->harga = set_value('harga');
        $this->data->stok = set_value('stok');
        $this->data->kategori = $this->input->post('kategori');

        parent::_modal('produk/form', $this->data);
    }

    public function ubah($id = 0) {
        $id OR redirect(site_url('admin/produk'));

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<p class="msg warning">', '</p>');

        foreach ($this->kategori_m->kategori as $key => $val) {
            $this->data->list_kategori[$val['id_kategori']] = $val['nama_kategori'];
        }

        $data_lama = $this->produk_m->get($id);
        $this->data->gambar = $this->produk_m->get_gambar($id);

        $this->form_validation->set_rules($this->rules);

        if ($this->form_validation->run()) {
            $data = array(
                'kode_produk' => $this->input->post('kode'),
                'nama_produk' => $this->input->post('nama_produk'),
                'penulis' => $this->input->post('penulis'),
                'penerbit' => $this->input->post('penerbit'),
                'terbit' => $this->input->post('terbit'),
                'jml_halaman' => $this->input->post('jml_halaman'),
                'berat' => $this->input->post('berat'),
                'ukuran' => $this->input->post('ukuran'),
                'jenis_cover' => $this->input->post('jenis_cover'),
                'bahasa' => $this->input->post('bahasa'),
                'url_produk' => underscore($this->input->post('nama_produk')),
                'kategori_id' => $this->input->post('kategori'),
                'harga_jual' => $this->input->post('harga'),
                'harga_baru' => $this->input->post('harga_baru'),
                'stok' => $this->input->post('stok'),
                'deskripsi_produk' => $this->input->post('deskripsi')
            );
            if ($this->produk_m->update($id, $data)) {
                $this->data->sukses = 'Data Berhasil di ubah';
                redirect(site_url('admin/produk'));
            }
        }

        if (!$this->input->post('submit')) {
            $this->data->id = $data_lama->id_produk;
            //ID di ata hanya digunakan untuk inisiasi halaman penambahan gambar
            $this->data->kode = $data_lama->kode_produk;
            $this->data->nama_produk = $data_lama->nama_produk;
            $this->data->penulis = $data_lama->penulis;
            $this->data->penerbit = $data_lama->penerbit;
            $this->data->terbit = $data_lama->terbit;
            $this->data->jml_halaman = $data_lama->jml_halaman;
            $this->data->berat = $data_lama->berat;
            $this->data->ukuran = $data_lama->ukuran;
            $this->data->jenis_cover = $data_lama->jenis_cover;
            $this->data->bahasa = $data_lama->bahasa;
            $this->data->kategori = $data_lama->kategori_id;
            $this->data->harga = $data_lama->harga_jual;
            $this->data->harga_baru = $data_lama->harga_baru;
            $this->data->stok = $data_lama->stok;
            $this->data->deskripsi = $data_lama->deskripsi_produk;
        } else {
            $this->data->kode = set_value('kode');
            $this->data->nama_produk = set_value('nama_produk');
            $this->data->penulis = set_value('penulis');
            $this->data->penerbit = set_value('penerbit');
            $this->data->terbit = set_value('terbit');
            $this->data->jml_halaman = set_value('jml_halaman');
            $this->data->berat = set_value('berat');
            $this->data->ukuran = set_value('ukuran');
            $this->data->jenis_cover = set_value('jenis_cover');
            $this->data->bahasa = set_value('bahasa');
            $this->data->kategori = $this->input->post('kategori');
            $this->data->harga = set_value('harga');
            $this->data->harga_baru = set_value('harga_baru');
            $this->data->stok = set_value('stok');
            $this->data->deskripsi = set_value('deskripsi');
        }

        parent::_view('produk/detil', $this->data);
    }

    public function hapus($id = 0) {
        $id OR redirect(site_url('admin/produk'));

        $this->produk_m->delete($id);

        redirect(site_url('admin/produk'));
    }

    public function aktifasi($id = 0, $aktif = 0) {
        $id OR redirect(site_url('admin/produk'));

        $this->produk_m->update($id, array('status_produk' => $aktif));

        redirect(site_url('admin/produk'));
    }

    public function set_default($id = 0, $id_foto = 0) {
        $id OR redirect(site_url('admin/produk'));

        $this->produk_m->set_default($id, $id_foto);

        redirect(site_url('admin/produk/gambar/' . $id));
    }

    public function hapus_foto($id = 0, $id_foto = 0) {
        $id OR redirect(site_url('admin/produk'));

        $this->produk_m->hapus_foto($id_foto);

        redirect(site_url('admin/produk/gambar/' . $id));
    }

    public function gambar($id = 0) {
        $id OR redirect(site_url('admin/produk'));
        $this->data->produk = $this->produk_m->get($id);
        $this->data->gambar = $this->produk_m->get_gambar($id);

        $this->load->library('jcrop');

        $prefix = md5($this->data->produk->url_produk);
        $this->data->prefix = $prefix;
        $this->data->target_w = 200;
        $this->data->target_h = 200;
        $setdata = array(
            'prefix' => $prefix,
            'folder' => 'uploads/produk/',
            'thumb_folder' => 'uploads/produk/thumb/',
            'target_w' => $this->data->target_w,
            'target_h' => $this->data->target_h,
            'create_thumb' => TRUE
        );
        $this->jcrop->set_data($setdata);
        $action_form = site_url($this->uri->uri_string());


        //Upload Process
        if (isset($_POST[$prefix . 'submit'])) {
            $this->jcrop->uploading();
            $this->data->status = $status;
        }

        //Saving data
        if (isset($_POST[$prefix . 'save'])) {

            $this->jcrop->produce($pic_loc, $pic_path, $thumb_loc, $thumb_path);
            $input = array('produk_id' => $this->data->produk->id_produk,
                'image' => $pic_path,
                'thumb' => $thumb_path);

            $this->produk_m->tambah_gambar($input);

            //$this->hotels->update($id,$input);
            redirect(site_url('admin/produk/ubah/' . $id));
        }

        //Cancel uploading image
        if (isset($_POST[$prefix . 'cancel'])) {
            $this->jcrop->cancel();
        }

        //Cek if image has uploaded
        if ($this->jcrop->is_uploaded($thepicture, $orig_w, $orig_h, $ratio)) {
            $this->data->orig_w = $orig_w;
            $this->data->orig_h = $orig_h;
            $this->data->ratio = $ratio;
            $this->data->thepicture = $thepicture;
            $this->data->form = $this->jcrop->show_form($action_form, TRUE);
        } else {
            $this->data->form = $this->jcrop->show_form($action_form);
        }
        parent::_view('produk/gambar', $this->data);
    }

}

/* End of file produk.php */
/* Location: ./application/controllers/juragan/produk.php */