<?php
/*
 * 74cms ��ҵ��Ա����
 * ============================================================================
 * ��Ȩ����: ��ʿ���磬����������Ȩ����
 * ��վ��ַ: http://www.74cms.com��
 * ----------------------------------------------------------------------------
 * �ⲻ��һ�������������ֻ���ڲ�������ҵĿ�ĵ�ǰ���¶Գ����������޸ĺ�
 * ʹ�ã�������Գ���������κ���ʽ�κ�Ŀ�ĵ��ٷ�����
 * ============================================================================
*/
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/company_common.php');

function get_area_by_id($id){
	global $db;
	$area = $db->getall("select categoryname from ".table('category_qgdistrict')." where id=".$id);
	return $area[0]["categoryname"];
}

$smarty->assign('leftmenu',"jobs");
if ($act=='jobs')
{
    $page = $_GET['page'] ? intval($_GET['page']) : 0;
    $size = $_GET['size'] ? intval($_GET['size']) : 30;
    $_GET['status'] && $status = intval($_GET['status']);
    $postData['page'] = $page;
    $postData['size'] = $size;
    $postData['status'] = $status;
    $postData['company_id'] = $company_profile['id'];
    $list = https_request_api('job/list', $postData);
//	$addjobs_save_succeed=intval($_GET['addjobs_save_succeed']);
//	$jobtype=intval($_GET['jobtype']);
//	$wheresql=" WHERE uid='{$_SESSION['uid']}' ";
//	$orderby=" order by refreshtime desc";
//	switch($jobtype){
//		case 1:
//			$tabletype="all";
//			/* ȫ��ְλ ״̬ ɸѡ*/
//			$state=intval($_GET["state"]);
//			if($state==1)
//			{	
//				$tabletype="jobs";
//			}
//			elseif($state==2)
//			{
//				$tabletype="jobs_tmp";
//				$wheresql.=" AND audit=2 ";
//			}
//			elseif($state==3)
//			{
//				$tabletype="jobs_tmp";
//				$wheresql.=" AND audit=3 ";
//			}
//			elseif($state==4)
//			{
//				$tabletype="jobs_tmp";
//				$wheresql.=" AND (display=2 or deadline<".time()." or (setmeal_deadline != 0 and setmeal_deadline< ".time().")) ";
//			}
//			$orderby=" order by display asc,audit asc";
//			break;
//			
//		case 2:
//			$tabletype="jobs_tmp";
//			$wheresql.=" AND audit=2 ";
//			break;
//		case 3:
//			$tabletype="jobs_tmp";
//			/* δ��ʾ ״̬ ɸѡ*/
//			$state=intval($_GET["state"]);
//			if($state==0)
//			{
//				$wheresql.=" AND (audit=3 or display=2 or deadline<".time()." or (setmeal_deadline != 0 and setmeal_deadline< ".time()."))";
//			}
//			elseif($state==1)
//			{
//				$wheresql.=" AND audit=3 ";
//			}
//			else
//			{
//				$wheresql.=" AND (display=2 or deadline<".time()." or (setmeal_deadline != 0 and setmeal_deadline< ".time().")) ";
//			}
//			break;
//		default:
//			$tabletype="jobs";
//			break;
//	}
	/*
		3.6 �ƹ�״̬
	*/
//	$generalize=trim($_GET['generalize']);
//	$generalize_arr = array("stick","highlight","emergency","recommend");
//	if(in_array($generalize,$generalize_arr))
//	{
//		$wheresql.=" AND $generalize<>'' ";
//	}
//	
        //require_once(QISHI_ROOT_PATH.'include/page.class.php');
//	$perpage=10;
//	if ($tabletype=="all")
//	{
//	$total_sql="SELECT COUNT(*) AS num FROM ".table('jobs').$wheresql." UNION ALL  SELECT COUNT(*) AS num FROM ".table('jobs_tmp').$wheresql;
//	}
//	else
//	{
//	$total_sql="SELECT COUNT(*) AS num FROM ".table($tabletype).$wheresql;
//	}
//	$total_val=$db->get_total($total_sql);
//        
//	$page = new page(array('total'=>$list['totalCount'], 'perpage'=>$perpage,'getarray'=>$_GET));
//	$offset=($page->nowindex-1)*$perpage;
	$smarty->assign('title','ְλ���� - ��ҵ��Ա���� - '.$_CFG['site_name']);
	$smarty->assign('act',$act);
	$smarty->assign('audit',$audit);
	$smarty->assign('total', $list['data']['totalCount']);
	$smarty->assign('jobs_total',$list['data']['totalCount']);
        $smarty->assign('jobs', $list['data']['list']);
//	if($total_val>$perpage)
//	{
//		$smarty->assign('page',$page->show(3));
//	}
//	// �����ɹ����
	$addjobs_save_succeed=intval($_GET['addjobs_save_succeed']);
        $jobs_one_tmp = https_request_api('job/info/'.$addjobs_save_succeed);
//	$jobs_one=get_jobs_one($addjobs_save_succeed);
	$smarty->assign('jobs_one',$jobs_one_tmp['data']);
//	$smarty->assign('points_rule',get_cache('points_rule'));
//	/*
//		���ҿ�ԤԼ��ְλ,�ж���Ӫģʽ
//	*/
//	if ($_CFG['operation_mode']=="3")
//	{
//		$setmeal=get_user_setmeal($_SESSION['uid']);
//		if($_CFG['setmeal_to_points']=="1")
//		{
//		$add_mode = 1;
//		}
//		else
//		{
//		$add_mode = 2;
//		}
//	}
//	elseif ($_CFG['operation_mode']=="2")
//	{
//		$add_mode = 2;
//	}
//	elseif ($_CFG['operation_mode']=="1")
//	{
//		$add_mode = 1;
//	}
//	$smarty->assign('add_mode',$add_mode);
	// ΢��Ƹ url
	$w_url=$_CFG['site_domain'].$_CFG['site_dir']."m/m-wzp.php?company_id=".$company_profile['id'];
	$smarty->assign('w_url',$w_url);
	$smarty->assign('user_points',get_user_points($_SESSION['uid']));
	$smarty->display('member_company/company_jobs.htm');
}
elseif ($act=='addjobs')
{
		$smarty->assign('user',$user);
		$smarty->assign('subsite',get_all_subsite());

		if ($cominfo_flge)
		{
			//���������зָ�
			$telarray = explode('-',$company_profile['landline_tel']);
			if(intval($telarray[0]) > 0)
			{
				$company_profile['landline_tel_first'] = $telarray[0];
			}
			if(intval($telarray[1]) > 0)
			{
				$company_profile['landline_tel_next'] = $telarray[1];
			}
			if(intval($telarray[2]) > 0)
			{
				$company_profile['landline_tel_last'] = $telarray[2];
			}
			$_SESSION['addrand']=rand(1000,5000);
			$smarty->assign('addrand',$_SESSION['addrand']);
			$smarty->assign('title','����ְλ - ��ҵ��Ա���� - '.$_CFG['site_name']);
			$smarty->assign('company_profile',$company_profile);
			if ($_CFG['operation_mode']=="3")
			{
				$setmeal=get_user_setmeal($_SESSION['uid']);
				$jobs_num= $db->get_total("select count(*) num from ".table("jobs")." where uid=$_SESSION[uid] and audit=1 and display=1 ");
				$jobs_tmp_num= $db->get_total("select count(*) num from ".table("jobs_tmp")." where uid=$_SESSION[uid] and audit=2 and display=1 ");
				$com_jobs_num=$jobs_num+$jobs_tmp_num;
				if (($setmeal['endtime']>time() || $setmeal['endtime']=="0") &&  ($com_jobs_num < $setmeal['jobs_ordinary']))
				{
				$smarty->assign('setmeal',$setmeal);
				$add_mode = 2;
				$smarty->assign('add_mode',2);
				}
				elseif($_CFG['setmeal_to_points']=="1")
				{
				$smarty->assign('points_total',get_user_points($_SESSION['uid']));
				$smarty->assign('points',get_cache('points_rule'));
				$add_mode = 1;
				$smarty->assign('add_mode',1);
				}
				else
				{
				$smarty->assign('setmeal',$setmeal);
				$add_mode = 2;
				$smarty->assign('add_mode',2);
				}

			}
			elseif ($_CFG['operation_mode']=="2")
			{
				$setmeal=get_user_setmeal($_SESSION['uid']);
				$smarty->assign('setmeal',$setmeal);
				$add_mode = 2;
				$smarty->assign('add_mode',2);
			}
			elseif ($_CFG['operation_mode']=="1")
			{
				$smarty->assign('points_total',get_user_points($_SESSION['uid']));
				$smarty->assign('points',get_cache('points_rule'));
				$add_mode = 1;
				$smarty->assign('add_mode',1);
			}
			/**
			 * 3.6�Ż�start
			 */
			if ($add_mode=='1')
			{
				$points_rule=get_cache('points_rule');
				$user_points=get_user_points($_SESSION['uid']);
				if ($points_rule['jobs_add']['type']=="2" && $points_rule['jobs_add']['value']>0)
				{
					$total=$points_rule['jobs_add']['value'];
					if ($total>$user_points)
					{
						$link[0]['text'] = "������ֵ";
						$link[0]['href'] = 'company_service.php?act=order_add';
						$link[1]['text'] = "��Ա������ҳ";
						$link[1]['href'] = 'company_index.php?act=';
						showmsg("���".$_CFG['points_byname']."���㣬���ֵ���ٷ�����",0,$link);
					}
				}
			}
			elseif ($add_mode=='2')
			{
				$link[0]['text'] = "������ͨ����";
				$link[0]['href'] = 'company_service.php?act=setmeal_list';
				$link[1]['text'] = "��Ա������ҳ";
				$link[1]['href'] = 'company_index.php?act=';
				$setmeal=get_user_setmeal($_SESSION['uid']);
				if ($setmeal['endtime']<time() && $setmeal['endtime']<>"0")
				{
					showmsg("���ķ����Ѿ����ڣ������¿�ͨ",1,$link);
				}
				/*
					��ʾ�е�ְλ(���ͨ��,�����,δ��ͣ)
				*/
				$jobs_num= $db->get_total("select count(*) num from ".table("jobs")." where uid=$_SESSION[uid] and audit=1 and display=1 ");
				$jobs_tmp_num= $db->get_total("select count(*) num from ".table("jobs_tmp")." where uid=$_SESSION[uid] and audit=2 and display=1 ");
				$com_jobs_num=$jobs_num+$jobs_tmp_num;
				if ($com_jobs_num>=$setmeal['jobs_ordinary'])
				{
					showmsg("��ǰ��ʾ��ְλ�Ѿ�������������ƣ������������ײͣ�",1,$link);
				}
			}
			/**
			 * 3.6�Ż�end
			 */

			$captcha=get_cache('captcha');
			$smarty->assign('verify_addjob',$captcha['verify_addjob']);
			$smarty->display('member_company/company_addjobs.htm');
		}
		else
		{
		$link[0]['text'] = "������ҵ����";
		$link[0]['href'] = 'company_info.php?act=company_profile';
		showmsg("Ϊ�˴ﵽ���õ���ƸЧ������������������ҵ���ϣ�",1,$link);
		}
}
elseif ($act=='addjobs_save')
{
	$captcha=get_cache('captcha');
	$postcaptcha = trim($_POST['postcaptcha']);
	if($captcha['verify_addjob']=='1' && empty($postcaptcha))
	{
		showmsg("����д��֤��",1);
 	}
	if ($captcha['verify_addjob']=='1' && strcasecmp($_SESSION['imageCaptcha_content'],$postcaptcha)!=0)
	{
		showmsg("��֤�����",1);
	}
    $add_mode=trim($_POST['add_mode']);
    $addData['job_name'] = !empty($_POST['jobs_name'])?trim($_POST['jobs_name']):showmsg('��û����дְλ���ƣ�',1);
    check_word($_CFG['filter'],$_POST['jobs_name'])?showmsg($_CFG['filter_tips'],0):'';
    $addData['job_desc'] = !empty($_POST['contents'])?trim($_POST['contents']):showmsg('��û����дְλ������',1);
    $addData['company_id'] = $company_profile['id'];
    $addData['company_name'] = $company_profile['companyname'];
    $addData['job_type'] = intval($_POST['nature']);
    $addData['category_id'] = !empty($_POST['subclass'])?intval($_POST['subclass']):showmsg('��ѡ��ְλ���',1);
    $addData['category_name'] = trim($_POST['category_cn']);
    $addData['position_high'] = trim($_POST['tag']);
    $addData['position_character'] = trim($_POST['tags']);
    $addData['sex'] = intval($_POST['sex']) == 1 ? 200 : (intval($_POST['sex']) == 2 ? 300 : 100) ;
    $addData['education'] = intval($_POST['education'])?intval($_POST['education']):'';
    $addData['experience'] = intval($_POST['experience'])?intval($_POST['experience']):'';
    $addData['min_age'] = intval($_POST['minage']);
    $addData['max_age'] = intval($_POST['maxage']);
    $addData['publish_city_id'] = !empty($_POST['subsite_id'])?intval($_POST['subsite_id']):showmsg('��ѡ�񷢲����У�',1);
    $addData['contacts_info']['contact_name'] = !empty($_POST['contact'])?trim($_POST['contact']):showmsg('��û����д��ϵ�ˣ�',1);
    check_word($_CFG['filter'],$_POST['contact'])?showmsg($_CFG['filter_tips'],0):'';
    $addData['contacts_info']['dispaly_name'] = intval($_POST['contact_show']) == 1 ? 100 : 200;
    $landline_tel[]=trim($_POST['landline_tel_first'])?trim($_POST['landline_tel_first']):"0";
    $landline_tel[]=trim($_POST['landline_tel_next'])?trim($_POST['landline_tel_next']):"0";
    $landline_tel[]=trim($_POST['landline_tel_last'])?trim($_POST['landline_tel_last']):"0";
    $addData['contacts_info']['contact_tel'] = implode('-', $landline_tel);
    $addData['contacts_info']['contact_mobile'] = !empty($_POST['telephone'])?trim($_POST['telephone']):'';
    check_word($_CFG['filter'],$_POST['telephone'])?showmsg($_CFG['filter_tips'],0):'';
    $addData['contacts_info']['dispaly_mobile'] = intval($_POST['telephone_show']) == 1 ? 100 : 200;
    $addData['contacts_info']['contact_email'] = !empty($_POST['email'])?trim($_POST['email']):showmsg('��û����д��ϵ���䣡',1);
    check_word($_CFG['filter'],$_POST['email'])?showmsg($_CFG['filter_tips'],0):'';
    $addData['contacts_info']['dispaly_email'] = intval($_POST['email_show']) == 1 ? 100 : 200;
    $addData['contacts_info']['contact_address'] = !empty($_POST['address'])?trim($_POST['address']):showmsg('��û����д��ϵ��ַ��',1);
    check_word($_CFG['filter'],$_POST['address'])?showmsg($_CFG['filter_tips'],0):'';
    $addData['receive_info']['receive_email'] = $_POST['email'];
    $addData['receive_info']['push_email'] = intval($_POST['notify']) == 1 ? 100 : 200;
    $addData['receive_info']['receive_mobile'] = $_POST['telephone_two'];
    $addData['receive_info']['push_sms'] = intval($_POST['notify_mobile']) == 1 ? 100 : 200;
    if($_POST['stations']) {
        foreach($_POST['stations'] as $sk => $sv) {
            parse_str(urldecode($sv), $stationArr);
            $stationTmp['supervisor_nums'] = $stationArr['dd_nums'];
            $stationTmp['supervisor_backup'] = $stationArr['dd_by_nums'];
            $stationTmp['supervisor_money'] = $stationArr['ddxz'];
			$stationTmp['supervisor_wage'] = $stationArr['work_xzdw_id'];	//����н�ʼ��㷽ʽID(��/��/��....).
			$stationTmp['supervisor_type'] = 0;	// 	�������㷽ʽID.(δʵ��)
            $stationTmp['parttime_nums'] = $stationArr['stations_jz_nums'];
            $stationTmp['parttime_backup'] = $stationArr['stations_jz_by_nums'];
            $stationTmp['parttime_money'] = $stationArr['jz_xz']; //��ְн��.
            $stationTmp['parttime_wage'] = 0;		//��ְн�ʼ��㷽ʽID(��/��/��....)(δʵ��)
            $stationTmp['parttime_type'] = 0;		//��ְн�ʶ������㷽ʽID.(δʵ��)
            $pTmp = explode('|', $stationArr['provinceId']);
            $stationTmp['province_id'] = $pTmp[0];
            $cTmp = explode('|', $stationArr['cityId']);
            $stationTmp['city_id'] = $cTmp[0];
            $dTmp = explode('|', $stationArr['countyId']);
            $stationTmp['district_id'] = $dTmp[0];
            $bTmp = explode('|', $stationArr['businessId']);
            $stationTmp['business_district_id'] = $bTmp[0];
            $stationTmp['address'] = iconv('utf-8', 'gbk', $stationArr['fname']);
            $stationTmp['lng'] = $stationArr['position_lng'];
            $stationTmp['lat'] = $stationArr['position_lat'];
            $stationTmp['start_date'] = strtotime($stationArr['work_start']);
            $stationTmp['end_date'] = strtotime($stationArr['work_end']);
            $stationTmp['work_start_time'] = $stationArr['work_start_time'];
            $stationTmp['work_end_time'] = $stationArr['work_end_time'];
            $stationTmp['fall_in_time'] = $stationArr['work_jh_time'];
            $stationTmp['fall_in_address'] = iconv('utf-8', 'gbk', $stationArr['work_jh_dd']);
            $addData['stations_info'][] = $stationTmp;
        }
    }
    $addRst = https_request_api('job/create', $addData);
	var_dump($addRst);
	var_dump($addData);exit;
	$pid = $addRst['data']['id'];
    header("location:?act=jobs&addjobs_save_succeed=".$pid);
}
elseif ($act=='jobs_perform')
{
	global $_CFG;
	$yid =!empty($_POST['y_id'])?$_POST['y_id']:$_GET['y_id'];
        $jobs_num=count($yid);
	if (empty($yid))
	{
            showmsg("��û��ѡ��ְλ��",1);
	}

	$refresh=!empty($_POST['refresh'])?$_POST['refresh']:$_GET['refresh'];
	$delete=!empty($_POST['delete'])?$_POST['delete']:$_GET['delete'];
	if (!empty($_REQUEST['display2']))
	{
            $update['job_id'] = $yid;
            $update['status'] = 100;
            $upRst = https_request_api('job/close', $update);
			var_dump($upRst);exit;
            if($upRst && $upRst['status'] == 'N') {
                showmsg("����ʧ�ܣ�",2);
            }
            showmsg("���óɹ���",2);
	}
	elseif ($delete)
	{
            $jobs_info_tmp = https_request_api("job/info/".$yid);
            if(empty($jobs_info_tmp['data'])) {
                showmsg("��ȡְλ��Ϣʧ�ܣ�",1);
            }
            $postData['job_ids'][] = $yid;
            $delRst = https_request_api("job/delete/", $postData);
            if($delRst && !$delRst['codes'])
            {
                    showmsg("ɾ���ɹ�����ɾ�� {$n} ��",2);
            }
            else
            {
                    showmsg("ɾ��ʧ�ܣ�",2);
            }
	}
      elseif ($refresh)
	{
		$mode = 0;
                if(is_array($yid)){
                        $yid = $yid[0];
                }
                $jobs_info_tmp = https_request_api("job/info/".$yid);
                if(empty($jobs_info_tmp['data'])) {
                    showmsg("��ȡְλ��Ϣʧ�ܣ�",1);
                }
                $duringtime=time()-$jobs_info['refurbish_time'];
                $space = $_CFG['com_pointsmode_refresh_space']*60;
                $refresh_time = $jobs_info['refurbish_time'];
                if($duringtime<=$space){
                    showmsg($_CFG['com_pointsmode_refresh_space']."�����ڲ����ظ�ˢ��ְλ��",2);
                }
                $refurData = array('job_id' => $yid);
				echo json_encode($refurData);exit;
                $jobs_info_tmp = https_request_api("job/refresh", $refurData);
                if($jobs_info_tmp['status'] == 'N') {

                        showmsg("ˢ��ְλʧ�ܣ�",2);
                }
                showmsg("ˢ��ְλ�ɹ���",2);
        }

	elseif (!empty($_REQUEST['display1']))
	{

            $update['job_id'] = $yid;
            $upRst = https_request_api('job/close', $update);
            if($upRst && $upRst['status'] == 'N') {
                showmsg("����ʧ�ܣ�",2);
            }
            showmsg("���óɹ���",2);
	}
}
//���ģʽ��  :  �ж�ˢ��ְλ�Ƿ���Ҫ���Ļ���
elseif ($act=='ajax_mode_points')
{
	//Ҫˢ�µ�ְλ��
	$length = intval($_GET['length']);
	$points_rule=get_cache('points_rule');
	$setmeal=get_user_setmeal($_SESSION['uid']);
	//�û�Ա�ײ͹��� (�ײ͹��ں���û���������)
	if($setmeal['endtime']<time() && $setmeal['endtime']<>"0")
	{
		if($_CFG['setmeal_to_points']=='1' && $points_rule['jobs_refresh']['value']>"0")
		{
			exit('ok');
		}
	}
	//��ȡ����ˢ�µ�ְλ��(���ײ�ģʽ��ˢ�µ�)
	$refresh_time = get_today_refresh_times($_SESSION['uid'],"1001",2);
	//����ʣ��ˢ��ְλ��(���ײ�ģʽ��ˢ�µ�)
	$surplus_time =  $setmeal['refresh_jobs_time'] - $refresh_time['count(*)'];
	//ˢ��ְλ�� ���� ʣ��ˢ��ְλ�� (����)
	if($setmeal['refresh_jobs_time']!=0 && ($length>$surplus_time))
	{
		if($_CFG['setmeal_to_points']=='1' && $points_rule['jobs_refresh']['value']>"0")
		{
			exit('ok');
		}
	}
	exit('no');
}
elseif ($act=='editjobs')
{
    $job_id = intval($_GET['id']);
    $jobs_info_tmp = https_request_api("job/info/".$job_id);
    if(empty($jobs_info_tmp['data'])) {
        showmsg("��ȡְλ��Ϣʧ�ܣ�",1);
    }
	$jobs=$jobs_info_tmp['data'];
	if (empty($jobs)) showmsg("��������",1);
	$jobs['contents'] = htmlspecialchars_decode($jobs['job_desc'],ENT_QUOTES);
        unset($jobs['job_desc']);

	//���������зָ�
	$telarray = explode('-',$jobs['contact_tel']);
	if(intval($telarray[0]) > 0)
	{
		$jobs['contact']['landline_tel_first'] = $telarray[0];
	}
	if(intval($telarray[1]) > 0)
	{
		$jobs['contact']['landline_tel_next'] = $telarray[1];
	}
	if(intval($telarray[2]) >= 0)
	{
		$jobs['contact']['landline_tel_last'] = $telarray[2];
	}
	if($jobs['age']){
		$jobs_age = explode("-", $jobs['age']);
		$jobs['minage'] = $jobs_age[0];
		$jobs['maxage'] = $jobs_age[1];
	}

		// ��ѯְλ����
        $tagSql = "SELECT * FROM ".table('category')." where c_alias='QS_jobtag'";
        $tagArr = $db->getall($tagSql);
        if($jobs['position_high']) {
            $jobs['position_high'] = array_flip(explode(",", $jobs['position_high']));
            foreach($tagArr as $tk => $tag) {
                if(isset($jobs['position_high'][$tag['c_id']])) {
                   $jobs['tag'][] = $tag['c_id'];
                   $jobs['tag_cn'][] = $tag['c_name'];
                }
            }
        }
        $jobs['tag'] = implode(',', $jobs['tag']);
        $jobs['tag_cn'] = implode(',', $jobs['tag_cn']);
        //ְλ��ǩ
        $tagSql = "SELECT * FROM ".table('category')." where c_alias='jobspecial'";
        $tagArr = $db->getall($tagSql);
        if($jobs['position_character']) {
            $jobs['position_character'] = array_flip(explode(",", $jobs['position_character']));
            foreach($tagArr as $tk => $tag) {
                if(isset($jobs['position_character'][$tag['c_id']])) {
                   $jobs['jobspecial'][] = $tag['c_id'];
                   $jobs['jobspecial_cn'][] = $tag['c_name'];
                }
            }
        }
        $jobs['jobspecial'] = implode(',', $jobs['jobspecial']);
        $jobs['jobspecial_cn'] = implode(',', $jobs['jobspecial_cn']);

        //ѧ��
        $tagSql = "SELECT * FROM ".table('category')." where c_alias='QS_education'";
        $tagArr = $db->getall($tagSql);
        if($jobs['education']) {
            $jobs['education_bak'] = array_flip(explode(",", $jobs['education']));
            unset($jobs['education']);
            foreach($tagArr as $tk => $tag) {
                if(isset($jobs['education_bak'][$tag['c_id']])) {
                   $jobs['education'][] = $tag['c_id'];
                   $jobs['education_cn'][] = $tag['c_name'];
                }
            }
        }
        $jobs['education'] = implode(',', $jobs['education']);
        $jobs['education_cn'] = implode(',', $jobs['education_cn']);

		// ��������
        $tagSql = "SELECT * FROM ".table('category')." where c_alias='QS_experience'";
        $tagArr = $db->getall($tagSql);
        if($jobs['experience']) {
            $jobs['experience_bak'] = array_flip(explode(",", $jobs['experience']));
            unset($jobs['experience']);
            foreach($tagArr as $tk => $tag) {
                if(isset($jobs['experience_bak'][$tag['c_id']])) {
                   $jobs['experience'][] = $tag['c_id'];
                   $jobs['experience_cn'][] = $tag['c_name'];
                }
            }
        }
        $jobs['experience'] = implode(',', $jobs['experience']);
        $jobs['experience_cn'] = implode(',', $jobs['experience_cn']);

	$smarty->assign('user',$user);
	$smarty->assign('title','�޸�ְλ - ��ҵ��Ա���� - '.$_CFG['site_name']);
	$smarty->assign('points_total',get_user_points($_SESSION['uid']));
	$smarty->assign('points',get_cache('points_rule'));
	$smarty->assign('subsite',get_all_subsite());
        foreach(get_all_subsite() as $sk => $site) {
            if($site['s_id'] == $jobs['publish_city_id']) {
                $jobs['site'] = $site;
                $jobs['subsite_id'] = $site['s_id'];
                $jobs['subsite_name'] = $site['s_sitename'];

            }
        }
        if($jobs['list']) {
            foreach($jobs['list'] as $lk => &$lv) {
                $lv['start_date'] = date('Y��m��d��', $lv['start_date']);
                $lv['end_date'] = date('Y��m��d��', $lv['end_date']);
            }
        }
	//������ӵĴ���
//	���л���λ��Ϣ
	$position_list = array();
	for($i=0;$i<count($jobs["list"]);$i++){
		$str = '';
		$jobs["list"][$i]['stations_id'] = $jobs['list'][$i]['id'];
		$str .= 'stations_id=' . $jobs['list'][$i]['id'];
		$str .= "&provinceId=".$jobs["list"][$i]['province_id'] . "||";
		$jobs["list"][$i]['provinceName'] = get_area_by_id($jobs["list"][$i]['province_id']);
		$str .= "&provinceName=" . $jobs["list"][$i]['provinceName'];

		$str .= '&cityId='.$jobs["list"][$i]["city_id"] . "||";
		$jobs["list"][$i]['cityName'] = get_area_by_id($jobs["list"][$i]['city_id']);
		$str .= '&cityName='. $jobs["list"][$i]['cityName'];

		$str .= '&countyId='.$jobs["list"][$i]["district_id"] . "||";	//3������  ������
		$jobs["list"][$i]['countyName'] = get_area_by_id($jobs["list"][$i]['district_id']);
		$str .= '&countyName='. $jobs["list"][$i]['countyName'];

		$str .= '&businessId='.$jobs["list"][$i]["business_district_id"] . "||";
		$jobs["list"][$i]['businessName'] = get_area_by_id($jobs["list"][$i]['business_district_id']);
		$str .= '&businessName='. $jobs["list"][$i]['businessName'];

		$str .= '&fname='.$jobs["list"][$i]["address"];
		$str .= '&dd_nums='.$jobs["list"][$i]['supervisor_nums'];
		$str .= '&dd_by_nums='.$jobs["list"][$i]['supervisor_backup'];
		$str .= '&ddxz='.$jobs["list"][$i]['supervisor_money'];
		$str .= '&stations_jz_nums='.$jobs["list"][$i]['parttime_nums'];
		$str .= '&stations_jz_by_nums='.$jobs["list"][$i]['parttime_backup'];
		$str .= '&jz_xz='.$jobs["list"][$i]['parttime_money'];
		$temp_time = str_replace(['��','��'],['-','-'],$jobs["list"][$i]['start_date']);
		$temp_time = rtrim($temp_time,"��");
		$str .= '&work_start='.$temp_time;

		$temp_time = str_replace(['��','��'],['-','-'],$jobs["list"][$i]['end_date']);
		$temp_time = rtrim($temp_time,"��");
		$str .= '&work_end='.$temp_time;

		$str .= '&work_start_time='.$jobs["list"][$i]['work_start_time'];
		$str .= '&work_end_time='.$jobs["list"][$i]['work_end_time'];
		$str .= '&work_jh_time='.$jobs["list"][$i]['fall_in_time'];
		$str .= '&work_jh_dd='.$jobs["list"][$i]['fall_in_address'];
		$str .= '&position_lng='.$jobs["list"][$i]['lng'];
		$str .= '&position_lat='.$jobs["list"][$i]['lat'];
		$str .= '&work_xzdw_id='.$jobs["list"][$i]['supervisor_wage'];
//		$str .= '&work_xzdw='.$jobs["list"][i];

//		���ַ�������url����

		$jobs["list"][$i]["encoded_position"] = urlencode(iconv("GBK","UTF-8",$str));
	}
	$smarty->assign('subsite_cn', $jobs['site']['s_sitename']);
	$smarty->assign('district_cn',$jobs['site']['s_districtname']);
	$smarty->assign('district',get_subsite_district($jobs['s_district']));
	$smarty->assign('jobs',$jobs);
	$smarty->display('member_company/company_editjobs.htm');
}
elseif ($act=='editjobs_save')
{
//	var_dump($_POST);exit;
	$addData['job_id'] = !empty($_POST['id'])?trim($_POST['id']):showmsg('������ְλ�����ڣ�',1);
	$addData['job_name'] = !empty($_POST['jobs_name'])?trim($_POST['jobs_name']):showmsg('��û����дְλ���ƣ�',1);
	check_word($_CFG['filter'],$_POST['jobs_name'])?showmsg($_CFG['filter_tips'],0):'';
	$addData['job_desc'] = !empty($_POST['contents'])?trim($_POST['contents']):showmsg('��û����дְλ������',1);
	$addData['job_type'] = intval($_POST['nature']);
//	$addData['company_id'] = $company_profile['id'];
//	$addData['company_name'] = $company_profile['companyname'];
	$addData['category_id'] = !empty($_POST['subclass'])?intval($_POST['subclass']):showmsg('��ѡ��ְλ���',1);
	$addData['category_name'] = trim($_POST['category_cn']);  // �ӱ༭ְλ��ģ���û�д�����
	$addData['position_high'] = trim($_POST['tag']);
	$addData['position_character'] = trim($_POST['tags']);
	$addData['sex'] = intval($_POST['sex']) == 1 ? 200 : (intval($_POST['sex']) == 2 ? 300 : 100) ;
	$addData['education'] = intval($_POST['education'])?intval($_POST['education']):'';
	$addData['experience'] = intval($_POST['experience'])?intval($_POST['experience']):'';
	$addData['min_age'] = intval($_POST['minage']);
	$addData['max_age'] = intval($_POST['maxage']);
	$addData['publish_city_id'] = !empty($_POST['subsite_id'])?intval($_POST['subsite_id']):showmsg('��ѡ�񷢲����У�',1);
	$addData['contacts_info']['contact_name'] = !empty($_POST['contact'])?trim($_POST['contact']):showmsg('��û����д��ϵ�ˣ�',1);
	check_word($_CFG['filter'],$_POST['contact'])?showmsg($_CFG['filter_tips'],0):'';
	$addData['contacts_info']['dispaly_name'] = intval($_POST['contact_show']) == 1 ? 100 : 200;
	$landline_tel[]=trim($_POST['landline_tel_first'])?trim($_POST['landline_tel_first']):"0";
	$landline_tel[]=trim($_POST['landline_tel_next'])?trim($_POST['landline_tel_next']):"0";
	$landline_tel[]=trim($_POST['landline_tel_last'])?trim($_POST['landline_tel_last']):"0";
	$addData['contacts_info']['contact_tel'] = implode('-', $landline_tel);
	$addData['contacts_info']['contact_mobile'] = !empty($_POST['telephone'])?trim($_POST['telephone']):'';
	check_word($_CFG['filter'],$_POST['telephone'])?showmsg($_CFG['filter_tips'],0):'';
	$addData['contacts_info']['dispaly_mobile'] = intval($_POST['telephone_show']) == 1 ? 100 : 200;
	$addData['contacts_info']['contact_email'] = !empty($_POST['email'])?trim($_POST['email']):showmsg('��û����д��ϵ���䣡',1);
	check_word($_CFG['filter'],$_POST['email'])?showmsg($_CFG['filter_tips'],0):'';
	$addData['contacts_info']['dispaly_email'] = intval($_POST['email_show']) == 1 ? 100 : 200;
	$addData['contacts_info']['contact_address'] = !empty($_POST['address'])?trim($_POST['address']):showmsg('��û����д��ϵ��ַ��',1);
	check_word($_CFG['filter'],$_POST['address'])?showmsg($_CFG['filter_tips'],0):'';
	$addData['receive_info']['receive_email'] = $_POST['email'];
	$addData['receive_info']['push_email'] = intval($_POST['notify']) == 1 ? 100 : 200;
	$addData['receive_info']['receive_mobile'] = $_POST['telephone'];
	$addData['receive_info']['push_sms'] = intval($_POST['notify_mobile']) == 1 ? 100 : 200;
	if($_POST['stations']) {
		foreach($_POST['stations'] as $sk => $sv) {
			parse_str(urldecode($sv), $stationArr);
			$stationTmp['job_info_id'] = $stationArr['stations_id'];
			$stationTmp['supervisor_nums'] = $stationArr['dd_nums'];
			$stationTmp['supervisor_backup'] = $stationArr['dd_by_nums'];
			$stationTmp['supervisor_money'] = $stationArr['ddxz'];
			$stationTmp['supervisor_wage'] = $stationArr['work_xzdw_id'];	//����н�ʼ��㷽ʽID(��/��/��....).
			$stationTmp['supervisor_type'] = 0;	// 	�������㷽ʽID.(δʵ��)
			$stationTmp['parttime_nums'] = $stationArr['stations_jz_nums'];
			$stationTmp['parttime_backup'] = $stationArr['stations_jz_by_nums'];
			$stationTmp['parttime_money'] = $stationArr['jz_xz']; //��ְн��.
			$stationTmp['parttime_wage'] = 0;		//��ְн�ʼ��㷽ʽID(��/��/��....)(δʵ��)
			$stationTmp['parttime_type'] = 0;		//��ְн�ʶ������㷽ʽID.(δʵ��)
			$pTmp = explode('|', $stationArr['provinceId']);
			$stationTmp['province_id'] = $pTmp[0];
			$cTmp = explode('|', $stationArr['cityId']);
			$stationTmp['city_id'] = $cTmp[0];
			$dTmp = explode('|', $stationArr['countyId']);
			$stationTmp['district_id'] = $dTmp[0];
			$bTmp = explode('|', $stationArr['businessId']);
			$stationTmp['business_district_id'] = $bTmp[0];
			$stationTmp['address'] = iconv('utf-8', 'gbk', $stationArr['fname']);
			$stationTmp['lng'] = $stationArr['position_lng'];
			$stationTmp['lat'] = $stationArr['position_lat'];
			$stationTmp['start_date'] = strtotime($stationArr['work_start']);
			$stationTmp['end_date'] = strtotime($stationArr['work_end']);
			$stationTmp['work_start_time'] = $stationArr['work_start_time'];
			$stationTmp['work_end_time'] = $stationArr['work_end_time'];
			$stationTmp['fall_in_time'] = $stationArr['work_jh_time'];
			$stationTmp['fall_in_address'] = iconv('utf-8', 'gbk', $stationArr['work_jh_dd']);
			$addData['stations_info'][] = $stationTmp;
		}
	}
	$addData['del_job_ids'] = explode(',', trim($_POST['del_stations_id'], ','));
	$addData['del_job_ids'] = array_map(function($n){return (int)$n;}, $addData['del_job_ids']);

	$addRst = https_request_api('job/update', $addData);
	echo '<pre>';
	var_dump($addData);
	var_dump($addRst);exit;
	$pid = $addRst['data']['id'];
	header("location:?act=jobs&addjobs_save_succeed=".$pid);

//	$add_mode=trim($_POST['add_mode']);
//	if ($add_mode=='1')
//	{
//					$points_rule=get_cache('points_rule');
//					$user_points=get_user_points($_SESSION['uid']);
//					if($points_rule['jobs_edit']['type']=="2" && $points_rule['jobs_edit']['value']>0)
//					{
//						$total=$points_rule['jobs_edit']['value'];
//						if ($total>$user_points)
//						{
//						$link[0]['text'] = "������һҳ";
//						$link[0]['href'] = 'javascript:history.go(-1)';
//						$link[1]['text'] = "������ֵ";
//						$link[1]['href'] = 'company_service.php?act=order_add';
//						showmsg("���".$_CFG['points_byname']."���㣬���ֵ���ٷ�����",0,$link);
//						}
//					}
//
//	}
//	elseif ($add_mode=='2')
//	{
//					$link[0]['text'] = "������ͨ����";
//					$link[0]['href'] = 'company_service.php?act=setmeal_list';
//					$link[1]['text'] = "��Ա������ҳ";
//					$link[1]['href'] = 'company_index.php?act=';
//				$setmeal=get_user_setmeal($_SESSION['uid']);
//				if ($setmeal['endtime']<time() && $setmeal['endtime']<>"0")
//				{
//					showmsg("�����ײ��Ѿ����ڣ������¿�ͨ",1,$link);
//				}
//	}
//
//	$setsqlarr['jobs_name']=!empty($_POST['jobs_name'])?trim($_POST['jobs_name']):showmsg('��û����дְλ���ƣ�',1);
//	check_word($_CFG['filter'],$_POST['jobs_name'])?showmsg($_CFG['filter_tips'],0):'';
//	$setsqlarr['nature']=intval($_POST['nature']);
//	$setsqlarr['nature_cn']=trim($_POST['nature_cn']);
//	$setsqlarr['topclass']=trim($_POST['topclass']);
//	$setsqlarr['category']=!empty($_POST['category'])?intval($_POST['category']):showmsg('��ѡ��ְλ���',1);
//	$setsqlarr['subclass']=trim($_POST['subclass']);
//	$setsqlarr['category_cn']=trim($_POST['category_cn']);
//	$setsqlarr['wage_amount']=trim($_POST['wage_amount']);
//	/* $setsqlarr['topclasss']=trim($_POST['topclasss']);
//	$setsqlarr['categorys']=!empty($_POST['categorys'])?intval($_POST['categorys']):showmsg('��ѡ����������',1);
//	$setsqlarr['subclasss']=trim($_POST['subclasss']);
//	$setsqlarr['category_cns']=trim($_POST['category_cns']); */
//	$setsqlarr['amount']=intval($_POST['amount']);
//	$setsqlarr['subsite_id']=!empty($_POST['subsite_id'])?intval($_POST['subsite_id']):showmsg('��ѡ�񷢲����У�',1);
//	$setsqlarr['district']=intval($_POST['district']);
//	$setsqlarr['sdistrict']=intval($_POST['sdistrict']);
//	$setsqlarr['district_cn']=empty($_POST['district_cn'])?trim($_POST['subsite_name']):(trim($_POST['subsite_name']).'/'.trim($_POST['district_cn']));
////	$setsqlarr['wage']=intval($_POST['wage'])?intval($_POST['wage']):showmsg('��ѡ��н�ʴ�����',1);
//	$setsqlarr['wage_cn']=trim($_POST['wage_cn']);
//	$setsqlarr['work_start']=strtotime($_POST['work_start']);
//	$setsqlarr['work_end']=strtotime($_POST['work_end']);
//	$setsqlarr['negotiable']=intval($_POST['negotiable']);
//	$setsqlarr['tag']=trim($_POST['tag']);
//	$setsqlarr['tag_cn']=trim($_POST['tag_cn']);
//	$setsqlarr['jobspecial']=trim($_POST['tags']);
//	$setsqlarr['jobspecial_cn']=trim($_POST['tag_cns']);
//	$setsqlarr['sex']=intval($_POST['sex']);
//	$setsqlarr['sex_cn']=trim($_POST['sex_cn']);
//	$setsqlarr['education']=intval($_POST['education'])?intval($_POST['education']):'';
//	$setsqlarr['education_cn']=trim($_POST['education_cn']);
//	$setsqlarr['experience']=intval($_POST['experience'])?intval($_POST['experience']):'';
//	$setsqlarr['experience_cn']=trim($_POST['experience_cn']);
//	$setsqlarr['graduate']=intval($_POST['graduate']);
//	$setsqlarr['age']=trim($_POST['minage'])."-".trim($_POST['maxage']);
//	$setsqlarr['contents']=!empty($_POST['contents'])?trim($_POST['contents']):showmsg('��û����дְλ������',1);
//	check_word($_CFG['filter'],$_POST['contents'])?showmsg($_CFG['filter_tips'],0):''; // ���ְλ�����Ƿ������д���
//	if ($add_mode=='1'){
//		$setsqlarr['setmeal_deadline']=0;
//		$setsqlarr['add_mode']=1;
//	}elseif($add_mode=='2'){
//		$setmeal=get_user_setmeal($_SESSION['uid']);
//		$setsqlarr['setmeal_deadline']=$setmeal['endtime'];
//		$setsqlarr['setmeal_id']=$setmeal['setmeal_id'];
//		$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
//		$setsqlarr['add_mode']=2;
//	}
//	// �޸�ְλ ����ʱ��Ϊ
//	$setsqlarr['deadline']=strtotime("".intval($_CFG['company_add_days'])." day");  // 15��
//	$setsqlarr['key']=$setsqlarr['jobs_name'].$company_profile['companyname'].$setsqlarr['category_cn'].$setsqlarr['district_cn'].$setsqlarr['contents'];
//	require_once(QISHI_ROOT_PATH.'include/splitword.class.php');
//	$sp = new SPWord();
//	$setsqlarr['key']="{$setsqlarr['jobs_name']} {$company_profile['companyname']} ".$sp->extracttag($setsqlarr['key']);
//	$setsqlarr['key']=$sp->pad($setsqlarr['key']);
//	if ($company_profile['audit']=="1")
//	{
//	$_CFG['audit_verifycom_editjob']<>"-1"?$setsqlarr['audit']=intval($_CFG['audit_verifycom_editjob']):'';
//	}
//	else
//	{
//	$_CFG['audit_unexaminedcom_editjob']<>"-1"?$setsqlarr['audit']=intval($_CFG['audit_unexaminedcom_editjob']):'';
//	}
//	$setsqlarr_contact['contact']=!empty($_POST['contact'])?trim($_POST['contact']):showmsg('��û����д��ϵ�ˣ�',1);
//	check_word($_CFG['filter'],$_POST['contact'])?showmsg($_CFG['filter_tips'],0):'';
//	$setsqlarr_contact['telephone']=!empty($_POST['telephone'])?trim($_POST['telephone']):'';
//	check_word($_CFG['filter'],$_POST['telephone'])?showmsg($_CFG['filter_tips'],0):'';
//	$setsqlarr_contact['address']=!empty($_POST['address'])?trim($_POST['address']):showmsg('��û����д��ϵ��ַ��',1);
//	check_word($_CFG['filter'],$_POST['address'])?showmsg($_CFG['filter_tips'],0):'';
//	$setsqlarr_contact['email']=!empty($_POST['email'])?trim($_POST['email']):showmsg('��û����д��ϵ���䣡',1);
//	check_word($_CFG['filter'],$_POST['email'])?showmsg($_CFG['filter_tips'],0):'';
//	$setsqlarr_contact['notify']=intval($_POST['notify']);//�ʼ�����
//	$setsqlarr_contact['notify_mobile']=intval($_POST['notify_mobile']);//�ֻ�����
//
//  	$setsqlarr_contact['contact_show']=intval($_POST['contact_show']);
//	$setsqlarr_contact['email_show']=intval($_POST['email_show']);
//	$setsqlarr_contact['telephone_show']=intval($_POST['telephone_show']);
//	$setsqlarr_contact['address_show']=intval($_POST['address_show']);
//	//����
//	$landline_tel[]=trim($_POST['landline_tel_first'])?trim($_POST['landline_tel_first']):"0";
//	$landline_tel[]=trim($_POST['landline_tel_next'])?trim($_POST['landline_tel_next']):"0";
//	$landline_tel[]=trim($_POST['landline_tel_last'])?trim($_POST['landline_tel_last']):"0";
//	$setsqlarr_contact['landline_tel']=implode('-', $landline_tel);
//	//�������ֻ����ٶ�ѡһ
//	if(empty($setsqlarr_contact['telephone']) && $setsqlarr_contact['landline_tel']=='0-0-0')
//	{
//		showmsg('����д�ֻ���̻�����ѡһ���ɣ�',1);
//	}
//
//	if (!$db->updatetable(table('jobs'), $setsqlarr," id='{$id}' AND uid='{$_SESSION['uid']}' ")) showmsg("����ʧ�ܣ�",0);
//	if (!$db->updatetable(table('jobs_tmp'), $setsqlarr," id='{$id}' AND uid='{$_SESSION['uid']}' ")) showmsg("����ʧ�ܣ�",0);
//	if (!$db->updatetable(table('jobs_contact'), $setsqlarr_contact," pid='{$id}' ")){
//		showmsg("����ʧ�ܣ�",0);
//	}
//	if ($add_mode=='1')
//	{
//		if ($points_rule['jobs_edit']['value']>0)
//		{
//		report_deal($_SESSION['uid'],$points_rule['jobs_edit']['type'],$points_rule['jobs_edit']['value']);
//		$user_points=get_user_points($_SESSION['uid']);
//		$operator=$points_rule['jobs_edit']['type']=="1"?"+":"-";
//		write_memberslog($_SESSION['uid'],1,9001,$_SESSION['username'],"�޸�ְλ��<strong>{$setsqlarr['jobs_name']}</strong>��({$operator}{$points_rule['jobs_edit']['value']})��(ʣ��:{$user_points})",1,1002,"�޸���Ƹ��Ϣ","{$operator}{$points_rule['jobs_edit']['value']}","{$user_points}");
//		}
//	}
//	$link[0]['text'] = "ְλ�б�";
//	$link[0]['href'] = '?act=jobs';
//	$link[1]['text'] = "�鿴�޸Ľ��";
//	$link[1]['href'] = "?act=editjobs&id={$id}";
//	$link[2]['text'] = "��Ա������ҳ";
//	$link[2]['href'] = "company_index.php";
//	//
//	$searchtab['nature']=$setsqlarr['nature'];
//	$searchtab['sex']=$setsqlarr['sex'];
//	$searchtab['topclass']=$setsqlarr['topclass'];
//	$searchtab['category']=$setsqlarr['category'];
//	$searchtab['subclass']=$setsqlarr['subclass'];
//	$searchtab['topclasss']=$setsqlarr['topclasss'];
//	$searchtab['categorys']=$setsqlarr['categorys'];
//	$searchtab['subclasss']=$setsqlarr['subclasss'];
//	$searchtab['district']=$setsqlarr['district'];
//	$searchtab['sdistrict']=$setsqlarr['sdistrict'];
//	$searchtab['education']=$setsqlarr['education'];
//	$searchtab['experience']=$setsqlarr['experience'];
//	$searchtab['wage']=$setsqlarr['wage'];
//	$searchtab['graduate']=$setsqlarr['graduate'];
//	//
//	$db->updatetable(table('jobs_search_wage'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}' ");
//	$db->updatetable(table('jobs_search_rtime'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}' ");
//	$db->updatetable(table('jobs_search_stickrtime'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}' ");
//	$db->updatetable(table('jobs_search_hot'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}' ");
//	$db->updatetable(table('jobs_search_scale'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}'");
//	$searchtab['key']=$setsqlarr['key'];
//	$searchtab['likekey']=$setsqlarr['jobs_name'].','.$company_profile['companyname'];
//	$db->updatetable(table('jobs_search_key'),$searchtab," id='{$id}' AND uid='{$_SESSION['uid']}' ");
//	unset($searchtab);
//	add_jobs_tag(intval($_POST['id']),$_SESSION['uid'],$_POST['tag'])?"":showmsg('����ʧ�ܣ�',0);
//	distribution_jobs($id,$_SESSION['uid']);
//	write_memberslog($_SESSION['uid'],$_SESSION['utype'],2002,$_SESSION['username'],"�޸���ְλ��{$setsqlarr['jobs_name']}��ְλID��{$id}");
//	showmsg("�޸ĳɹ���",2,$link);
}
elseif($act == "get_content_by_jobs_cat"){
	$id = intval($_GET['id']);
	if($id>0){
		$content = get_content_by_jobs_cat($id);
		if(!empty($content)){
			exit($content);
		}else{
			exit("-1");
		}
	}else{
		exit("-1");
	}
}
elseif($act == "get_content_by_qgdistrict_cat"){
	$id = intval($_GET['id']);
	if($id>0){
		$content = get_content_by_qgdistrict_cat($id);
		if(!empty($content)){
			exit($content);
		}else{
			exit("-1");
		}
	}else{
		exit("-1");
	}
}
//΢����Ƹ
elseif($act == 'simple_jobs')
{
	if ($cominfo_flge)
	{
		$day = intval(strtotime(date("Y-m-d")))-86400;
		//ͳ�����շ�����
		$click = $db->get_total("SELECT COUNT(*) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND click_type=1 AND addtime={$day} ");
		//ͳ�����յ�����
		$praise = $db->get_total("SELECT COUNT(*) AS num FROM ".table('company_praise')." WHERE uid={$_SESSION['uid']} AND company_id={$company_profile['id']} AND click_type=2 AND addtime={$day} ");
		//ɨ��url
		$w_url=$_CFG['site_domain'].$_CFG['site_dir']."m/m-wzp.php?company_id=".$company_profile['id']."&vip_menu=1";
		$smarty->assign('click',$click);
		$smarty->assign('praise',$praise);
		$smarty->assign('w_url',urlencode($w_url));
	    $smarty->assign('title','΢����Ƹ - ��ҵ��Ա���� - '.$_CFG['site_name']);
	    $smarty->display('member_company/company_simple_jobs.htm');
	}
	else
	{
		$link[0]['text'] = "������ҵ����";
		$link[0]['href'] = 'company_info.php?act=company_profile';
		showmsg("Ϊ�˸��õ���ʾ΢����ƸЧ������������������ҵ���ϣ�",1,$link);
	}
}
//΢����Ƹ  ����ͳ��
elseif($act == 'data_statistics')
{
	if ($cominfo_flge)
	{
		$check_table_cache = check_cache('u'.$_SESSION['uid'].'_wzp_tabledata.cache','wzp');

		if($check_table_cache){
			$arr = json_decode($check_table_cache,1);
		}else{
			$arr = array(array());
			//����ʱ��
			$yesterday = intval(strtotime(date("Y-m-d")))-86400;
			//����ʱ��
			$week = mktime(0, 0 , 0,date("m"),date("d")-date("w")+1,date("Y"));
			$today_end = strtotime(date("Y-m-d"));
			//����ʱ��
			$last_week_day_begin = mktime(0, 0 , 0,date("m"),date("d")-date("w")+1-7,date("Y"));
			$last_week_day_end = mktime(0, 0 , 0,date("m"),date("d")-date("w"),date("Y"));
			//����ʱ��
			$month_day = strtotime(date("Y-m")."-1");
			//����ʱ��
			$month_day_begin = strtotime(date("Y-").(date('m')-1)."-1");
			$month_day_end = strtotime(date("Y-m")."-1")-86400;
			//ѭ������
			$data = $db->getall('SELECT id,company_id,uid,click_type,addtime,ip FROM '.table('company_praise')." WHERE  company_id={$company_profile['id']} ");
			foreach ($data as $key => $value)
			{
				if($value['addtime']==$yesterday)
				{
					$arr['yesterday'][$value['click_type']] += 1;
				}
				if($value['addtime']>=$week && $value['addtime']<$today_end)
				{
					$arr['week'][$value['click_type']] += 1;
				}
				if($value['addtime']>=$last_week_day_begin && $value['addtime']<=$last_week_day_end)
				{
					$arr['last_week'][$value['click_type']] += 1;
				}
				if($value['addtime']>=$month_day  && $value['addtime']<$today_end )
				{
					$arr['month'][$value['click_type']] += 1;
				}
				if($value['addtime']>=$month_day_begin && $value['addtime']<=$month_day_end)
				{
					$arr['last_month'][$value['click_type']] += 1;
				}
				if($value['addtime']<$today_end)
				{
					$arr['total'][$value['click_type']] += 1;
				}
			}
			//����ip���ݵ���ͳ��
			$arr['yesterday'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND addtime={$yesterday} ");
			$arr['week'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND addtime={$week} ");
			$arr['last_week'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND addtime>={$last_week_day_begin} AND addtime<={$last_week_day_end} ");
			$arr['month'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND addtime={$month_day} ");
			$arr['last_month'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} AND addtime>={$month_day_begin} AND addtime<={$month_day_end} ");
			$arr['total'][4] = $db->get_total("SELECT COUNT(distinct ip) AS num FROM ".table('company_praise')." WHERE company_id={$company_profile['id']} ");
			write_cache('u'.$_SESSION['uid'].'_wzp_tabledata.cache',json_encode($arr),'wzp');
		}



		/**
		* ͼ��ͳ��start
		**/
		$filter = intval($_GET['settr'])>0?intval($_GET['settr']):7;

		$check_categories_cache = check_cache('u'.$_SESSION['uid'].'_wzp_categories_'.$filter.'.cache','wzp');
		$check_dataset_cache = check_cache('u'.$_SESSION['uid'].'_wzp_dataset_'.$filter.'.cache','wzp');
		if($check_categories_cache && $check_dataset_cache){
			$categories = $check_categories_cache;
			$dataset = $check_dataset_cache;
		}else{
			for ($i=$filter; $i >0 ; $i--) {
				$labelArr[] = strtotime(date('Y-m-d',time()-$i*86400));
			}

			$line_data = $db->getall("select * from ".table('company_praise')." where  company_id = {$company_profile['id']} AND  addtime>".strtotime(date('Y-m-d',time()-$filter*86400))." order by addtime asc");
			foreach ($line_data as $key => $value) {
				$line[$value['click_type']][$value['addtime']] += 1;
			}
			$item = 0;
			foreach ($labelArr as $key => $value) {
				$label[$item]['label'] = date('m-d',$value);
				$lineData[0][$item]['value'] = intval($line[1][$value]);
				$lineData[1][$item]['value'] = intval($line[2][$value]);
				$lineData[2][$item]['value'] = intval($line[3][$value]);
				$item++;
			}
			$categories = array(
		    	'category'=>array(
		    		$label
		    		)
		    	);
		    $categories = json_encode($categories);
			$dataset = array(
		    	array(
		    		'seriesname'=>iconv('gbk','utf-8','�����'),
			    	'data'=>array(
			    		$lineData[0]
			    		)
		    		),
		    	array(
		    		'seriesname'=>iconv('gbk','utf-8','������'),
			    	'data'=>array(
			    		$lineData[1]
			    		)
		    		),
		    	array(
		    		'seriesname'=>iconv('gbk','utf-8','������'),
			    	'data'=>array(
			    		$lineData[2]
			    		)
		    		)
		    	);
		    $dataset = json_encode($dataset);
		    write_cache('u'.$_SESSION['uid'].'_wzp_categories_'.$filter.'.cache',$categories,'wzp');
	   		write_cache('u'.$_SESSION['uid'].'_wzp_dataset_'.$filter.'.cache',$dataset,'wzp');
		}

	    $smarty->assign('categories',$categories);
		$smarty->assign('dataset',$dataset);
		/**
		* ͼ��ͳ��end
		**/
		$smarty->assign('data',$arr);
	    $smarty->assign('title','΢����Ƹ - ��ҵ��Ա���� - '.$_CFG['site_name']);
	    $smarty->display('member_company/company_data_statistics.htm');
	}
	else
	{
		$link[0]['text'] = "������ҵ����";
		$link[0]['href'] = 'company_info.php?act=company_profile';
		showmsg("Ϊ�˸��õ���ʾ΢����ƸЧ������������������ҵ���ϣ�",1,$link);
	}
}
unset($smarty);
?>
