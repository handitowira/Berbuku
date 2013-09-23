<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of option_m
 * @copyright (c) 2013, Project Work 2013
 * @author HANDITO
 */
class Option_m extends MY_Model {

    public function __construct() {
        parent::__construct();
        parent::set_table('option', 'id_option');
    }

}

/* End of file option_m.php */
/* Location: ./application/models/option_m.php */