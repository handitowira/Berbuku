<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of profile_m
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
class Profile_m extends MY_Model {

    public function __construct() {
        parent::__construct();
        parent::set_table('user_data', 'id_user_data');
    }

}

/* End of file profile_m.php */
/* Location: ./application/models/profile_m.php */