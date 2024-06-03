<?php
require_once 'library.php';

$jadwal =[];
if(isset($_GET['param'])) {
  $id_dokter = addslashes($_GET['param']);
  $jadwal = get_all("jadwal", "hari", true, "id_dokter='$id_dokter'");
}

if($jadwal) resp_success($jadwal);
else resp_failed();
