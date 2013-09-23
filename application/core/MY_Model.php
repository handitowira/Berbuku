<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of My_Model
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
class MY_Model extends CI_Model {

    private $table;
    private $pk;

    public function __construct() {
        parent::__construct();
    }

    public function set_table($table = '', $pk = '') {
        $this->table = $table;
        $this->pk = $pk;
        return $this;
    }

    public function get_all() {
        return $this->_get()->result();
    }

    public function get_array() {
        return $this->_get()->result_array();
    }

    public function get($id = '0') {
        $this->db->where($this->pk, $id);
        return $this->_get()->row();
    }

    public function get_by($param) {
        if (is_array($param)) {
            $this->db->where($param);
            return $this->_get()->row();
        }
        return FALSE;
    }

    public function get_many_by($param) {
        if (is_array($param)) {
            $this->db->where($param);
            return $this->get_all();
        }
        return FALSE;
    }

    public function insert($data = array()) {
        if ($this->db->insert($this->table, $data)) {
            return $this->db->insert_id();
        }
        return false;
    }

    public function delete($id = 0) {
        if ($this->db->delete($this->table, array($this->pk => $id))) {
            return true;
        }
        return false;
    }

    public function update($id = 0, $data = array()) {
        $this->db->where(array($this->pk => $id));
        if ($this->db->update($this->table, $data)) {
            return true;
        }
        return false;
    }

    public function update_by($where = array(), $data = array()) {
        $this->db->where($where);
        if ($this->db->update($this->table, $data)) {
            return true;
        }
        return false;
    }

    protected function _get() {
        return $this->db->get($this->table);
    }

}

/* End of file MY_Model.php */
/* Location: ./application/core/MY_Model.php */