<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of nonull_helper
 *
 * @author HANDITO
 */
if (!function_exists('null_to_default')) {

    function null_to_default($value) {
        $default = "<em>- Data belum tersedia -</em>";
        if ($value == NULL) {
            return $default;
        } else {
            return $value;
        }
    }

}

if (!function_exists('dnull_to_default')) {

    function dnull_to_default($value) {
        $default = "<em>- Data belum tersedia -</em>";
        if ($value == "0000-00-00") {
            return $default;
        } else {
            return FALSE;
        }
    }

}

if (!function_exists('rnull_to_default')) {

    function rnull_to_default($value) {
        $default = "<em>- Data belum tersedia. -</em>";
        if (count($value == 0)) {
            return $default;
        } else {
            return $value;
        }
    }

}
?>
