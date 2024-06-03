<?php
require_once 'library.php';

$dokter = [];
if(isset($_GET['param'])) {
  $id_poliklinik = addslashes($_GET['param']);
  $dokter = get_all("dokter", "nama", true, "id_poliklinik='$id_poliklinik'");
}

if($dokter) resp_success($dokter);
else resp_failed();
