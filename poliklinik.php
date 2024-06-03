<?php
require_once 'library.php';

if(isset($_GET['param'])) {
  $type = addslashes($_GET['param']);
  $poliklinik = get_all("poliklinik", "type, nama", true, "type='$type'");
} else $poliklinik = get_all("poliklinik", "type, nama");

if($poliklinik) resp_success($poliklinik);
else resp_failed();
