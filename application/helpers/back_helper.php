<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of back_helper
 * @copyright (c) 2013, Project Work 20
 * @author HANDITO
 */
function backButtonHandle() {
    $CI = & get_instance();
    $CI->load->library(array('output'));
    $CI->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
    $CI->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
    $CI->output->set_header('Pragma: no-cache');
    $CI->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
}

/* End of file back_helper.php */
/* Location: ./application/helpers/back_helper.php */