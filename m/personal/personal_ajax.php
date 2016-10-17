<?php
define('IN_QISHI', true);
define('REQUEST_MOBILE',true);
require_once(dirname(__FILE__).'/../../include/common.inc.php');
require_once(QISHI_ROOT_PATH.'include/fun_wap.php');
require_once(QISHI_ROOT_PATH.'include/mysql.class.php');
require_once(QISHI_ROOT_PATH.'include/fun_personal.php');
$smarty->cache = false;
$db = new mysql($dbhost,$dbuser,$dbpass,$dbname);
$act = !empty($_REQUEST['act']) ? trim($_REQUEST['act']) : 'index';
if($act == 'sign')
{
    $data['uid'] = $_SESSION['uid'];
    $data['job_info_id'] = $_POST['jobInfoId'];
    $data['enroll_id'] = $_POST['enrollId'];
    $data['job_id'] = $_POST['jobId'];
    $data['sign_time'] = strtotime($_POST['signTime']);
    $data['sign_address'] = iconv("utf8", "gbk", $_POST['signAddr']);
    $data['remark'] = iconv("utf8", "gbk", $_POST['signDesc']);
    $data['sign_type'] = $_POST['type'];
    $data['sign_pic'] = 'http://www.baidu.com';
    $rst = https_request_api('/job/past', $data);
    exit($rst['msg']);
} elseif($act == 'stood') {
    $data['enroll_id']  = $_POST['eid'];
    $data['status']  = $_POST['status'];
    $rst = https_request_api('enroll/stood', $data);
    exit($rst['msg']);
} elseif($act == 'changeStatus') {
    $data['sign_ids']  = $_POST['sids'];
    $userInfo = get_user_info($_SESSION['uid']);
    $data['confirm_uid']  = $userInfo['uid'];
    $data['confirm_user_name']  = $userInfo['username'];
    $data['confirm_user_position']  = 100;
    $data['status']  = $_POST['status'];
    $rst = https_request_api('job/confirm', $data);
    exit($rst['msg']);
} elseif($act == 'leaveEarly') {
    $data['enroll_id']  = $_POST['eid'];
    $data['status']  = $_POST['status'];
    $rst = https_request_api('enroll/leaveEarly', $data);
    exit($rst['msg']);
} elseif($act == 'eveluate') {
    $data['enroll_id'] = $_POST['eid'];
    $data['uid'] = $_POST['uid'];
    $typekey = $_POST['typekey'];
    $data['evaluate_uid'] = $_SESSION['uid'];
    $_POST['content'] && $data['evaluate_content'] = iconv('utf8', 'gbk', $_POST['content']);
    $_POST['score'] && $data['score'] = $_POST['score'];
    switch($typeKey) {
        case 'punctual':
            $data['type'] = 101;
            break;
        case 'earnest':
            $data['type'] = 102;
            break;
        case 'effect':
            $data['type'] = 103;
            break;
        case 'performance':
            $data['type'] = 104;
            break;
        case 'ability':
            $data['type'] = 105;
            break;
    }
    $rst = https_request_api('/job/evaluate', $data);
    var_dump($rst);exit;
}