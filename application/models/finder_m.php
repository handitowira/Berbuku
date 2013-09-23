<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of finder_m
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
class finder_m extends CI_Model {

    //put your code here
    public function __construct() {
        parent::__construct();
    }

    public function cariData() {
        $search = $this->input->POST('cari');
        $this->db->like('nama_produk', $search);
        $this->db->or_like('penerbit', $search);
        $this->db->or_like('penulis', $search );
        $query = $this->db->get('produk');
        return $query->result();
    }

}

?>
