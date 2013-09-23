<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of user_m
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
class User_m extends MY_Model {

    public function __construct() {
        parent::__construct();
        parent::set_table('user', 'id_user');
    }

    public function get_by_username($username) {
        if ($query = parent::get_by(array('username' => $username))) {
            if ($query->id_user != NULL)
                return $query;
        }
        return false;
    }

    public function cek_username($username, $self = FALSE) {
        if ($data = parent::get_by(array('username' => $username))) {
            if ($self) {
                return $data->id_user;
            } else {
                return false;
            }
        }
        return true;
    }

    public function hapus($id) {
        if (parent::delete($id)) {
            if ($this->db->table_exists('user_data')) {
                $this->db->where(array('user_id' => $id));
                $this->db->delete('user_data');
            }
            return true;
        }
        return false;
    }

}

/* End of file user_m.php */
/* Location: ./application/models/user_m.php */