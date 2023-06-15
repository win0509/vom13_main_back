<?php

  header('Access_Control-Allow-Origin: *'); // 크로스 오리진 허용
  header('Content-Type: application/json'); // 데이터 형식 json
  header('Access-Control-Allow-Methods: PUT'); // 허용 메서드
  header('Access-Control-Allow-Headers: Access_Control-Allow_headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-Width');

  include $_SERVER["DOCUMENT_ROOT"].'/connect/db_conn.php';
  include $_SERVER["DOCUMENT_ROOT"].'/baexang_back/comment/cmt.php';

  $msg = [];

  $update_comment = new Comment($db);
  $data = json_decode(file_get_contents('php://input')); 

  session_start();
  if(isset($_SESSION['useridx'])){
    $useridx = $_SESSION['useridx'];
  } else {
    $useridx = '';
  }

  if($useridx == ''){
    $msg = ['msg' => '잘못된 접근 입니다.'];
  } else {
    $cmt_idx = $_GET['cmt_idx'];

    // 가공된 데이터 DAO 클래스로 전달
    $update_comment->cmt_idx = $cmt_idx;
    $update_comment->cmt_cont = $data->cmt_cont;
    $update_comment->cmt_star = $data->cmt_star;

    if(!$update_comment->update_cmt()){
      $msg = ['msg' => '업데이트에 실패했습니다.'];
    } else {
      $msg = ['msg' => '업데이트가 완료되었습니다.'];
    }
  }

  echo json_encode($msg);
?>