<?php
session_start();

define(DBHOST, '127.0.0.1');
define(DBUSER, 'dbuser');
define(DBPASS, 'dbpass');
define(DBNAME, 'dbname');

if(!$link = @mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME))
die(mysqli_connect_error());

function db_query($sql) {
  global $link;

  if(!$result=@mysqli_query($link, $sql))
  die(mysqli_error($link));

  return $result;
}

function get_all($table, $sort_by=false, $ascending=true, $where=false) {
  $sql = "SELECT * FROM $table";
  if($where) $sql .= " WHERE $where";
  if($sort_by) {
    $sql .= " ORDER BY $sort_by";
    if($ascending) $sql .= " ASC";
    else $sql .= " DESC";
  }
  $result = db_query($sql);
  $return = [];
  while($row=mysqli_fetch_assoc($result)) $return[] = $row;
  return $return;
}

function get_one($table, $where) {
  $sql = "SELECT * FROM $table WHERE $where";
  $result = db_query($sql);
  if($row=mysqli_fetch_assoc($result)) return $row;
  else return [];
}

function resp_success($array) {
  resp_header();
  echo json_encode(['status'=>1, 'data'=>$array]);
}

function resp_failed() {
  resp_header();
  echo json_encode(['status'=>0]);
}

function resp_header()
{
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json; charset=UTF-8');
}