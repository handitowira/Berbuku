<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of mytext_helper
 *
 * @author HANDITO
 */
if (!function_exists('highlight_array_phrase')) {

    function highlight_array_phrase($str, $words, $tag_open = '<strong>', $tag_close = '</strong>') {
        if ($str == '') {
            return '';
        }

        $str = ' ' . $str . ' ';
        foreach ($words as $phrase) {
            if ($phrase != '') {
                $str = preg_replace('/(' . preg_quote($phrase, '/') . ')/i', $tag_open . "\\1" . $tag_close, $str);
            }
        }
        return trim($str);
    }

}

if (!function_exists('cmp')) {

    function cmp($x, $y) {
        if (strlen($x) == strlen($y)) {
            return 0;
        }
        return (strlen($x) < srtlen($y)) ? -1 : 1;
    }

}
?>
