<?php
 /*
 * 74cms 网站首页
 * ============================================================================
 * 版权所有: 骑士网络，并保留所有权利。
 * 网站地址: http://www.74cms.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
*/
error_reporting(E_ALL);
if(!file_exists(dirname(__FILE__).'/data/install.lock')) header("Location:install/index.php");
define('IN_QISHI', true);
$alias="QS_index";
require_once(dirname(__FILE__).'/include/common.inc.php');

if($_GET['iswap']!=""){
	
	$_SESSION['iswap'] = $_GET['iswap'];
}

if(browser()=="mobile" && $_SESSION['iswap']==""){
	header("location:".$_CFG['wap_domain']);
}






$redirect_to_subsite = false;
$redirect_url = '';
$redirect_disname = '';
$redirect_sitename = '';
if(intval($_CFG['subsite_id'])==0){
	$subinfo = check_subsite_url();
	if($subinfo){
		$redirect_to_subsite = true;
		$redirect_url = $subinfo['url'];
		$redirect_disname = $subinfo['disname'];
		$redirect_sitename = $subinfo['sitename'];
	}
}
$smarty->assign('redirect_to_subsite',$redirect_to_subsite);
$smarty->assign('redirect_url',$redirect_url);
$smarty->assign('redirect_disname',$redirect_disname);
$smarty->assign('redirect_sitename',$redirect_sitename);
if($mypage['caching']>0){
        $smarty->cache =true;
		$smarty->cache_lifetime=$mypage['caching'];
	}else{
		$smarty->cache = false;
	}
$cached_id=$alias.(isset($_GET['id'])?"|".(intval($_GET['id'])%100).'|'.intval($_GET['id']):'').(isset($_GET['page'])?"|p".intval($_GET['page'])%100:'');
if(!$smarty->is_cached($mypage['tpl'],$cached_id))
{
require_once(QISHI_ROOT_PATH.'include/mysql.class.php');
$db = new mysql($dbhost,$dbuser,$dbpass,$dbname);
unset($dbhost,$dbuser,$dbpass,$dbname);
$smarty->display($mypage['tpl'],$cached_id);
}
else
{
$smarty->display($mypage['tpl'],$cached_id);
}
unset($smarty);
?>
