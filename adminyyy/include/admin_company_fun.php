<?php
 /*
 * 74cms 管理中心 企业用户相关函数
 * ============================================================================
 * 版权所有: 骑士网络，并保留所有权利。
 * 网站地址: http://www.74cms.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
*/
 if(!defined('IN_QISHI'))
 {
die('Access Denied!');
 }
 //******************************职位部分**********************************
//获取职位信息列表
function get_jobs($offset,$perpage,$get_sql= '')
{
	global $db,$timestamp;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query($get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row['jobs_name']=cut_str($row['jobs_name'],12,0,"...");
	if (!empty($row['highlight']))
	{
	$row['jobs_name']="<span style=\"color:{$row['highlight']}\">{$row['jobs_name']}</span>";
	}
	$row['companyname']=cut_str($row['companyname'],18,0,"...");
	$row['company_url']=url_rewrite('QS_companyshow',array('id'=>$row['company_id']));
	$row['jobs_url']=url_rewrite('QS_jobsshow',array('id'=>$row['id']),1,$row['subsite_id']);
	$get_resume_nolook = $db->getone("select count(*) from ".table('personal_jobs_apply')." where personal_look=1 and jobs_id=".$row['id']);
	$get_resume_all = $db->getone("select count(*) from ".table('personal_jobs_apply')." where jobs_id=".$row['id']);
	$row['get_resume'] = "( ".$get_resume_nolook['count(*)']." / ".$get_resume_all['count(*)']." )";
	$row_arr[] = $row;
	}
	return $row_arr;
}
function distribution_jobs($id)
{
	global $db,$_CFG;
	if (!is_array($id))$id=array($id);
	$time=time();
	foreach($id as $v)
	{
		$v=intval($v);
		$t1=$db->getone("select * from ".table('jobs')." where id='{$v}' LIMIT 1");
		$t2=$db->getone("select * from ".table('jobs_tmp')." where id='{$v}' LIMIT 1");
		if ((empty($t1) && empty($t2)) || (!empty($t1) && !empty($t2)))
		{
		continue;
		}
		else
		{
				$j=!empty($t1)?$t1:$t2;
				if (!empty($t1) &&  $j['audit']=="1" && $j['display']=="1" && $j['user_status']=="1")
				{
					if ($_CFG['outdated_jobs']=="1")
					{
						if ($j['deadline']>$time && ($j['setmeal_deadline']=="0" || $j['setmeal_deadline']>$time))
						{
						continue;
						}
					}
					else
					{
					continue;
					}
				}
				elseif (!empty($t2))
				{
						if ($j['audit']!="1" || $j['display']!="1" || $j['user_status']!="1")
						{
						continue;
						}
						else
						{
								if ($_CFG['outdated_jobs']=="1" && ($j['deadline']<$time || ($j['setmeal_deadline']<$time && $j['setmeal_deadline']!="0")))
								{
									continue;
								}
						}
				}
				//检测完毕
				$j=array_map('addslashes',$j);
				if (!empty($t1))
				{
					$db->query("Delete from ".table('jobs')." WHERE id='{$v}' LIMIT 1");
					$db->query("Delete from ".table('jobs_tmp')." WHERE id='{$v}' LIMIT 1");
					if ($db->inserttable(table('jobs_tmp'),$j))
					{
						$db->query("Delete from ".table('jobs_search_hot')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('jobs_search_key')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('jobs_search_rtime')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('jobs_search_scale')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('jobs_search_stickrtime')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('jobs_search_wage')." WHERE id='{$v}' {$uidsql} LIMIT 1");
						$db->query("Delete from ".table('view_jobs')." WHERE jobsid='{$v}'");
					}
				}
				else
				{
					$db->query("Delete from ".table('jobs')." WHERE id='{$v}' LIMIT 1");
					$db->query("Delete from ".table('jobs_tmp')." WHERE id='{$v}' LIMIT 1");
					if ($db->inserttable(table('jobs'),$j))
					{
						$searchtab['id']=$j['id'];
						$searchtab['uid']=$j['uid'];
						$searchtab['subsite_id']=$j['subsite_id'];
						$searchtab['recommend']=$j['recommend'];
						$searchtab['emergency']=$j['emergency'];
						$searchtab['nature']=$j['nature'];
						$searchtab['sex']=$j['sex'];
						$searchtab['topclass']=$j['topclass'];
						$searchtab['category']=$j['category'];
						$searchtab['subclass']=$j['subclass'];
						$searchtab['trade']=$j['trade'];
						$searchtab['district']=$j['district'];
						$searchtab['sdistrict']=$j['sdistrict'];
						$searchtab['street']=$j['street'];
						$searchtab['education']=$j['education'];
						$searchtab['experience']=$j['experience'];
						$searchtab['wage']=$j['wage'];
						$searchtab['refreshtime']=$j['refreshtime'];
						$searchtab['scale']=$j['scale'];
						$searchtab['graduate']=$j['graduate'];
						//--
						$db->inserttable(table('jobs_search_wage'),$searchtab);
						$db->inserttable(table('jobs_search_scale'),$searchtab);
						//--
						$searchtab['map_x']=$j['map_x'];
						$searchtab['map_y']=$j['map_y'];
						$db->inserttable(table('jobs_search_rtime'),$searchtab);
						unset($searchtab['map_x'],$searchtab['map_y']);
						//--
						$searchtab['stick']=$j['stick'];
						$db->inserttable(table('jobs_search_stickrtime'),$searchtab);
						unset($searchtab['stick']);
						//--
						$searchtab['click']=$j['click'];
						$db->inserttable(table('jobs_search_hot'),$searchtab);
						unset($searchtab['click']);
						//--
						$searchtab['key']=$j['key'];
						$searchtab['likekey']=$j['jobs_name'].','.$j['companyname'];
						$searchtab['map_x']=$j['map_x'];
						$searchtab['map_y']=$j['map_y'];
						$db->inserttable(table('jobs_search_key'),$searchtab);
						unset($searchtab);
					}
				}		
		}
	}
}
function distribution_jobs_uid($uid)
{
	global $db;
	$uid=intval($uid);
	$result = $db->query("select id from ".table('jobs')." where uid={$uid} UNION ALL select id from ".table('jobs_tmp')." where uid={$uid} ");
	while($row = $db->fetch_array($result))
	{
	$id[] = $row['id'];
	}
	if (!empty($id))
	{
	return distribution_jobs($id);
	}
}
function get_jobs_one($id)
{
	global $db;
	$id=intval($id);
	$tb1=$db->getone("select * from ".table('jobs')." where id='{$id}' LIMIT 1");
	$tb2=$db->getone("select * from ".table('jobs_tmp')." where id='{$id}' LIMIT 1");
	$val=!empty($tb1)?$tb1:$tb2;
	$val['jobs_url']=url_rewrite('QS_jobsshow',array('id'=>$val['id']),1,$val['subsite_id']);
	$val['company_url']=url_rewrite('QS_companyshow',array('id'=>$val['company_id']));
	$val['user']=get_user($val['uid']);
	$val['contact']=$db->getone("select * from ".table('jobs_contact')." where pid='{$id}' LIMIT 1");
	return $val;
}
//删除职位
function del_jobs($id)
{
	global $db;
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$return=0;
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("Delete from ".table('jobs')." WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if (!$db->query("Delete from ".table('jobs_tmp')." WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if (!$db->query("Delete from ".table('jobs_contact')." WHERE pid IN ({$sqlin}) ")) return false;
		if (!$db->query("Delete from ".table('promotion')." WHERE cp_jobid IN ({$sqlin}) ")) return false;
		if (!$db->query("Delete from ".table('jobs_search_hot')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_search_key')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_search_rtime')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_search_scale')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_search_stickrtime')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_search_wage')." WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("Delete from ".table('jobs_tag')." WHERE pid IN ({$sqlin}) ")) return false;
		if (!$db->query("Delete from ".table('view_jobs')." WHERE jobsid IN ({$sqlin})")) return false;
		write_log("删除职位id为".$sqlin."的职位,共删除".$return."行", $_SESSION['admin_name'],3);
		return $return;
	}
	else
	{
	return false;
	}
}
//修改职位审核状态
function edit_jobs_audit($id,$audit,$reason,$pms_notice='1')
{
	global $db,$_CFG;
	$audit=intval($audit);
	$reason=trim($reason);
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$return=0;
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('jobs')." SET audit={$audit}  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if (!$db->query("update  ".table('jobs_tmp')." SET audit={$audit}  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		write_log("将职位id为".$sqlin."的职位,审核状态设置为".$audit."共处理".$return."行", $_SESSION['admin_name'],3);
		distribution_jobs($id);
			//发送站内信
			if ($pms_notice=='1')
			{
					$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin})");
					$reason=$reason==''?'原因：未知':'原因：'.$reason;
					while($list = $db->fetch_array($result))
					{
						$user_info=get_user($list['uid']);
						$setsqlarr['message']=$audit=='1'?"您发布的职位：{$list['jobs_name']},成功通过网站管理员审核！":"您发布的职位：{$list['jobs_name']},未通过网站管理员审核,{$reason}";
						$setsqlarr['msgtype']=1;
						$setsqlarr['msgtouid']=$user_info['uid'];
						$setsqlarr['msgtoname']=$user_info['username'];
						$setsqlarr['dateline']=time();
						$setsqlarr['replytime']=time();
						$setsqlarr['new']=1;
						$db->inserttable(table('pms'),$setsqlarr);
					 }
			}
			//审核未通过增加原因
			if($audit=='3'){
				foreach($id as $list){
					$auditsqlarr['jobs_id']=$list;
					$auditsqlarr['reason']=$reason;
					$auditsqlarr['addtime']=time();
					$db->inserttable(table('audit_reason'),$auditsqlarr);
				}
			}
			//发送邮件
			$mailconfig=get_cache('mailconfig');
			$sms=get_cache('sms_config');
			if ($audit=="1" && $mailconfig['set_jobsallow']=="1")//审核通过
			{
					$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin})");
					while($list = $db->fetch_array($result))
					{
						$user_info=get_user($list['uid']);
						if ($user_info['email_audit']=="1")
						{				
						dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_mail.php?uid=".$list['uid']."&key=".asyn_userkey($list['uid'])."&jobs_name=".$list['jobs_name']."&act=set_jobsallow");
						}
					}
			}
			if ($audit=="3" && $mailconfig['set_jobsnotallow']=="1")//审核未通过
			{
					$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin}) ");
					while($list = $db->fetch_array($result))
					{
						$user_info=get_user($list['uid']);
						if ($user_info['email_audit']=="1")
						{
						dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_mail.php?uid=".$list['uid']."&key=".asyn_userkey($list['uid'])."&jobs_name=".$list['jobs_name']."&act=set_jobsnotallow");
						}
					}
			}
			//sms		
			if ($audit=="1" && $sms['open']=="1" && $sms['set_jobsallow']=="1" )
			{
				$mobilearray = array();
				$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					
					if ($user_info['mobile_audit']=="1")
					{
						//将同一会员的职位放到数组中 并且确保该会员唯一的
						$mobilearray[$list['uid']] = empty($mobilearray[$list['uid']]) ? $list['jobs_name'] : $mobilearray[$list['uid']].' , '.$list['jobs_name'];
					}
				}
				
				foreach ($mobilearray as $key => $value) 
				{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_sms.php?uid=".$key."&key=".asyn_userkey($key)."&jobs_name=".$value."&act=set_jobsallow");
				}
			}
			//sms
			if ($audit=="3" && $sms['open']=="1" && $sms['set_jobsnotallow']=="1" )//认证未通过
			{
				$mobilearray = array();
				$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					if ($user_info['mobile_audit']=="1")
					{
						//将同一会员的职位放到数组中 并且确保该会员唯一的
						$mobilearray[$list['uid']] = empty($mobilearray[$list['uid']]) ? $list['jobs_name'] : $mobilearray[$list['uid']].' , '.$list['jobs_name'];
					}
				}
				foreach ($mobilearray as $key => $value) 
				{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_sms.php?uid=".$key."&key=".asyn_userkey($key)."&jobs_name=".$value."&act=set_jobsnotallow");
				}
			}
			//微信通知
			$weixinconfig=get_cache('weixin_config');
			if($audit=="1")
			{
				$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					set_jobsallow($list['uid'],$weixinconfig['set_jobsallow'],"通过审核",$list['jobs_name'],"通过",$reason);
				}
			}
			if($audit=="3")
			{
				$result = $db->query("SELECT * FROM ".table('jobs')." WHERE id IN ({$sqlin})  UNION ALL  SELECT * FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					set_jobsallow($list['uid'],$weixinconfig['set_jobsnotallow'],"未通过审核",$list['jobs_name'],"未通过",$reason);
				}
			}
		return $return;
	}
	else
	{
	return $return;
	}
}

function edit_jobs_display($id,$display)
{
	global $db;
	$display=intval($display);
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);	
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('jobs')." SET display='{$display}'  WHERE id IN ({$sqlin})")) return false;
		distribution_jobs($id);
		return true;
	}
	return false;
}
function get_user($uid)
{
	global $db;
	$sql = "select * from ".table('members')." where uid=".intval($uid)." LIMIT 1";
	return $db->getone($sql);
}
function refresh_company($uid,$refresjobs=false)
{
	global $db,$_CFG;
	$return=0;
	if (!is_array($uid))$uid=array($uid);
	$sqlin=implode(",",$uid);
	$time=time();
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('company_profile')." SET refreshtime='{$time}'  WHERE uid IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if ($refresjobs)
		{
		$deadline=strtotime("".intval($_CFG['company_add_days'])." day");
		if (!$db->query("update  ".table('jobs')." SET refreshtime='{$time}',deadline='{$deadline}'  WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_tmp')." SET refreshtime='{$time}'  WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_hot')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_key')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_rtime')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_scale')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_stickrtime')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_wage')."  SET refreshtime='{$time}' WHERE uid IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		}
	}
	write_log("刷新企业uid为".$sqlin."的企业,共刷新".$return."行", $_SESSION['admin_name'],3);
	return $return;
}
function refresh_jobs($id)
{
	global $db,$_CFG;
	$return=0;
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$time=time();
	$deadline=strtotime("".intval($_CFG['company_add_days'])." day");
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('jobs')." SET refreshtime='{$time}',deadline='{$deadline}'  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if (!$db->query("update  ".table('jobs_tmp')." SET refreshtime='{$time}',deadline='{$deadline}'  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if (!$db->query("update  ".table('jobs_search_hot')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_key')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_rtime')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_scale')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_stickrtime')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_search_wage')."  SET refreshtime='{$time}' WHERE id IN ({$sqlin})")) return false;
	}
	write_log("刷新职位id为".$sqlin."的职位,共刷新".$return."行", $_SESSION['admin_name'],3);
	return $return;
}
function delay_jobs($id,$days)
{
	global $db,$_CFG;
	$days=intval($days);
	$return=0;
	$total=0;
	$fail=0;
	if (empty($days)) return false;
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$time=time();
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		$result = $db->query("SELECT id,deadline,uid FROM ".table('jobs')." WHERE id IN ({$sqlin}) UNION ALL SELECT id,deadline,uid FROM ".table('jobs_tmp')." WHERE id IN ({$sqlin})");
		while($row = $db->fetch_array($result))
		{
			if ($row['deadline']>$time)
			{
			$deadline=strtotime("+{$days} day",$row['deadline']);
			}
			else
			{
			$deadline=strtotime("+{$days} day");
			}
			$total++;
			//积分模式
			if($_CFG['operation_mode']=='1')
			{
				$user_points = get_user_points(intval($row['uid']));
				$points_rule=get_cache('points_rule');
				$ptype=$points_rule['jobs_daily']['type'];
				$day_points=$points_rule['jobs_daily']['value'];
				if ($points_rule['jobs_daily']['type']=="2" && $points_rule['jobs_daily']['value']>0)
				{
					$points=$day_points*$days;
				}
				if ($user_points<$points)
				{
					$fail++;
					continue;
				}
				if (!$db->query("update  ".table('jobs')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
				$return=$return+$db->affected_rows();
				if (!$db->query("update  ".table('jobs_tmp')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
				$return=$return+$db->affected_rows();
				if ($points>0)
				{
					report_deal(intval($row['uid']),$ptype,$points);
				}
			}
			//套餐模式
			elseif($_CFG['operation_mode']=='2')
			{
				$setmeal=get_user_setmeal(intval($row['uid']));
				//延期时间超过了套餐时间(或者套餐过期也满足这个条件)
				if($setmeal['endtime']<$deadline && $setmeal['endtime']<>'0')
				{
					$fail++;
					continue;
				}
				if (!$db->query("update  ".table('jobs')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
				$return=$return+$db->affected_rows();
				if (!$db->query("update  ".table('jobs_tmp')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
				$return=$return+$db->affected_rows();
			}
			//混合模式
			elseif($_CFG['operation_mode']=='3')
			{
				$setmeal=get_user_setmeal(intval($row['uid']));
				//该会员无套餐或者过期
				if(empty($setmeal) || ($setmeal['endtime']<time() && $setmeal['endtime']<>'0'))
				{
					//后台开通   转积分消费
					if ($_CFG['setmeal_to_points']=="1")
					{
						$user_points = get_user_points(intval($row['uid']));
						$points_rule=get_cache('points_rule');
						$day_points=$points_rule['jobs_daily']['value'];
						if ($points_rule['jobs_daily']['type']=="2" && $points_rule['jobs_daily']['value']>0)
						{
							$points=$day_points*$days;
						}
						if ($user_points<$points)
						{
							$fail++;
							continue;
						}
						if (!$db->query("update  ".table('jobs')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
						$return=$return+$db->affected_rows();
						if (!$db->query("update  ".table('jobs_tmp')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
						$return=$return+$db->affected_rows();
						if ($points>0)
						{
							report_deal(intval($row['uid']),$ptype,$points);
						}
					}
					else
					{
						$fail++;
						continue;
					}
				}
				else
				{
					$setmeal=get_user_setmeal(intval($row['uid']));
					//延期时间超过了套餐时间
					if($setmeal['endtime']<$deadline && $setmeal['endtime']<>'0')
					{
						$fail++;
						continue;
					}
					if (!$db->query("update  ".table('jobs')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
					$return=$return+$db->affected_rows();
					if (!$db->query("update  ".table('jobs_tmp')." SET deadline='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
					$return=$return+$db->affected_rows();
				}
			}
		}
	}
	//返回 : 总共数 , 成功数 , 失败数
	write_log("延期职位id为".$sqlin."的职位,共处理".$total."行，延期成功".$return."失败".$fail, $_SESSION['admin_name'],3);
	return $total.','.$return.','.$fail;
	
}
function delay_meal($id,$days)
{
	global $db;
	$days=intval($days);
	$return=0;
	if (empty($days)) return false;
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$time=time();
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		$result = $db->query("SELECT id,uid,endtime FROM ".table('members_setmeal')." WHERE uid IN ({$sqlin})");
		while($row = $db->fetch_array($result))
		{
			if($row['endtime']=="0")
			{
			continue;
			}
			else
			{
				if ($row['endtime']>$time)
				{
				$deadline=strtotime("{$days} day",$row['endtime']);
				}
				else
				{
				$deadline=strtotime("{$days} day");
				}
				if (!$db->query("update  ".table('members_setmeal')." SET endtime='{$deadline}'  WHERE id='{$row['id']}'  LIMIT 1")) return false;
				$return=$return+$db->affected_rows();
				if (!$db->query("update  ".table('jobs')." SET setmeal_deadline='{$deadline}'  WHERE uid='{$row['uid']}'  LIMIT 1")) return false;
				if (!$db->query("update  ".table('jobs_tmp')." SET setmeal_deadline='{$deadline}'  WHERE uid='{$row['uid']}'  LIMIT 1")) return false;
			}
		}
	}
	write_log("延期企业uid为".$sqlin."的企业套餐,共延期".$return."行", $_SESSION['admin_name'],3);
	return $return;
	
}
//******************************企业部分**********************************
 //获取企业列表
 function get_company($offset,$perpage,$get_sql= '',$mode=1)
{
	global $db;
	$colum=$mode==1?'p.points':'p.setmeal_name';
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT c.*,m.username,m.mobile,m.email as memail,{$colum} FROM ".table('company_profile')." AS c ".$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row['company_url']=url_rewrite('QS_companyshow',array('id'=>$row['id']));
	$get_resume_nolook = $db->getone("select count(*) from ".table('personal_jobs_apply')." where personal_look=1 and company_id=".$row['id']);
	$get_resume_all = $db->getone("select count(*) from ".table('personal_jobs_apply')." where company_id=".$row['id']);
	$row['get_resume'] = "( ".$get_resume_nolook['count(*)']." / ".$get_resume_all['count(*)']." )";
	$row_arr[] = $row;
	}
	return $row_arr;
}

//获取单条企业资料
function get_company_one_id($id)
{
	global $db;
	$id=intval($id);
	$sql = "select * from ".table('company_profile')." where id='{$id}'";
	$val=$db->getone($sql);
	$val['user']=get_user($val['uid']);
	return $val;
}
function get_company_one_uid($uid)
{
	global $db;
	$uid=intval($uid);
	$sql = "select * from ".table('company_profile')." where uid={$uid}";
	$val=$db->getone($sql);
	return $val;
}
 //更改企业认证状态
function edit_company_audit($uid,$audit,$reason,$pms_notice)
{
	global $db,$_CFG;	
	$audit=intval($audit);
	$pms_notice=intval($pms_notice);
	$reason=trim($reason);
	if (!is_array($uid)) $uid=array($uid);
	$sqlin=implode(",",$uid);	
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('company_profile')." SET audit='{$audit}'  WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs')." SET company_audit='{$audit}'  WHERE uid IN ({$sqlin})")) return false;
		if (!$db->query("update  ".table('jobs_tmp')." SET company_audit='{$audit}'  WHERE uid IN ({$sqlin})")) return false;
		write_log("将企业uid为".$sqlin."的企业的认证状态修改为".$audit, $_SESSION['admin_name'],3);
		//发送站内信
		if ($pms_notice=='1')
		{
			$reasonpm=$reason==''?'无':$reason;
			if($audit=='1') {$note='成功通过网站管理员审核!';}elseif($audit=='2'){$note='正在审核中!';}else{$note='未通过网站管理员审核！';}
			$result = $db->query("SELECT companyname,uid FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
			while($list = $db->fetch_array($result))
			{
				$user_info=get_user($list['uid']);
				$setsqlarr['message']="您的公司：{$list['companyname']},".$note.'其他说明：'.$reasonpm;
				$setsqlarr['msgtype']=1;
				$setsqlarr['msgtouid']=$user_info['uid'];
				$setsqlarr['msgtoname']=$user_info['username'];
				$setsqlarr['dateline']=time();
				$setsqlarr['replytime']=time();
				$setsqlarr['new']=1;
				$db->inserttable(table('pms'),$setsqlarr);
			 }
		}
		//审核未通过增加原因
		if($audit=='3'){
			$reasona=$reason==''?'原因：无':'原因：'.$reason;
			foreach($uid as $list){
				$auditsqlarr['company_id']=$list;
				$auditsqlarr['reason']=$reasona;
				$auditsqlarr['addtime']=time();
				$db->inserttable(table('audit_reason'),$auditsqlarr);
			}
		}
		
		if ($audit=='1') 
		{
		//3.4升级修改注意,只有积分模式奖励积分
		//3.5升级修改注意，积分和混合模式都奖励积分
			if($_CFG['operation_mode']=='1' || ($_CFG['operation_mode']=='3' && $_CFG['setmeal_to_points']=='1')){
				$points_rule=get_cache('points_rule');
				if ($points_rule['company_auth']['value']>0)//如果设置了认证赠送积分
				{
					gift_points($sqlin,'companyauth',$points_rule['company_auth']['type'],$points_rule['company_auth']['value']);
				}
			}
		}
		$mailconfig=get_cache('mailconfig');
		$sms=get_cache('sms_config');
		if ($audit=="1" && $mailconfig['set_licenseallow']=="1")//认证通过
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					if ($user_info['email_audit']=="1")
					{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_mail.php?uid={$list['uid']}&key=".asyn_userkey($list['uid'])."&act=set_licenseallow");
					}
				}
		}
		if ($audit=="3" && $mailconfig['set_licensenotallow']=="1")//认证未通过
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					if ($user_info['email_audit']=="1")
					{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_mail.php?uid={$list['uid']}&key=".asyn_userkey($list['uid'])."&act=set_licensenotallow");
					}
				}
		}
		//sms		
		if ($audit=="1" && $sms['open']=="1" && $sms['set_licenseallow']=="1" )
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					if ($user_info['mobile_audit']=="1")
					{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_sms.php?uid={$list['uid']}&key=".asyn_userkey($list['uid'])."&act=set_licenseallow");
					}
				}
		}
		//sms
		if ($audit=="3" && $sms['open']=="1" && $sms['set_licensenotallow']=="1" )//认证未通过
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					if ($user_info['mobile_audit']=="1")
					{
					dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_sms.php?uid={$list['uid']}&key=".asyn_userkey($list['uid'])."&act=set_licensenotallow");
					}
				}
		}
		//微信通知
		$weixinconfig=get_cache('mailconfig');
		if($audit=="1")
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
			while($list = $db->fetch_array($result))
			{
				set_licenseallow($list['uid'],$weixinconfig['set_licenseallow'],"您好，您企业的营业执照通过审核","通过",$reason);
			}
		}
		if($audit=="3")
		{
			$result = $db->query("SELECT * FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
			while($list = $db->fetch_array($result))
			{
				set_licenseallow($list['uid'],$weixinconfig['set_licensenotallow'],"您好，您企业的营业执照未通过审核","未通过",$reason);
			}
		}
	distribution_jobs_uid($uid);
	return true;
	}
	return false;
}
 
//删除企业资料，uid=array
function del_company($uid)
{
	global $db,$certificate_dir;
	if (!is_array($uid))$uid=array($uid);
	$sqlin=implode(",",$uid);
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		$result = $db->query("SELECT certificate_img FROM ".table('company_profile')." WHERE uid IN ({$sqlin})");
		while($row = $db->fetch_array($result))
		{
		@unlink($certificate_dir.$row['certificate_img']);
		}
		if (!$db->query("Delete from ".table('company_profile')." WHERE uid IN ({$sqlin})")) return false;
		write_log("删除企业uid为".$sqlin."的企业资料", $_SESSION['admin_name'],3);
	return true;
	}
	return false;
}
function del_company_alljobs($uid)
{
	global $db;
	if (!is_array($uid))$uid=array($uid);
	$sqlin=implode(",",$uid);
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		$result = $db->query("SELECT id FROM ".table('jobs')." WHERE uid IN ({$sqlin}) UNION ALL SELECT id FROM ".table('jobs_tmp')." WHERE uid IN ({$sqlin}) ");
		while($row = $db->fetch_array($result))
		{
		$db->query("Delete from ".table('jobs_contact')." WHERE pid IN ({$row['id']})");	
		}
		$db->query("Delete from ".table('jobs')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_tmp')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_hot')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_key')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_rtime')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_scale')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_stickrtime')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_search_wage')." WHERE uid IN ({$sqlin})");
		$db->query("Delete from ".table('jobs_tag')." WHERE uid IN ({$sqlin})");
		write_log("删除企业uid为".$sqlin."的企业发布的职位", $_SESSION['admin_name'],3);
		return true;
	}
	return false;
}
//******************************订单管理**********************************
//订单列表
function get_order_list($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT o.*,m.username,m.email,c.companyname FROM ".table('order')." as o ".$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
		if($row['payment_name'] == 'points'){
			$row['payment_name']='积分';
		}else{
			$row['payment_name']=get_payment_info($row['payment_name'],true);
		} 
		$row_arr[] = $row;
	}
	return $row_arr;
}
//获取订单
function get_order_one($id=0)
{
	global $db;
	$sql = "select * from ".table('order')." where id=".intval($id)." LIMIT 1";
	$val=$db->getone($sql);
	$val['payment_name']=get_payment_info($val['payment_name'],true);
	$val['payment_username']=get_user($val['uid']);
	return $val;
}
//取消订单
function del_order($id)
{
	global $db;
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("Delete from ".table('order')." WHERE id IN (".$sqlin.")  AND is_paid=1 ")) return false;
		write_log("取消订单id为".$sqlin."的订单", $_SESSION['admin_name'],3);	
		return true;
	}
	return false;
}
//获取充值支付方式名称
function get_payment_info($typename,$name=false)
{
	global $db;
	$sql = "select * from ".table('payment')." where typename ='".$typename."'";
	$val=$db->getone($sql);
	if ($name)
	{
	return $val['byname'];
	}
	else
	{
	return $val;
	}
}
function get_meal_members_list($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT a.*,b.*,c.companyname FROM ".table('members_setmeal')." as a ".$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row_arr[] = $row;
	}
	return $row_arr;
}
//获取会员的套餐变更记录
function get_meal_members_log($offset,$perpage,$get_sql= '',$mode='1')
{
	global $db;
	if(trim($mode)=='1')
	{
		$colum = 'b.points';
	}
	elseif(trim($mode)=='2')
	{
		$colum = 'b.setmeal_name';
	}
	else
	{
		$colum = 'pb.points , sb.setmeal_name';
	}
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT a.*,{$colum},c.companyname FROM ".table('members_charge_log')." as a ".$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row['log_value_']=$row['log_value'];
	$row['log_value']=cut_str($row['log_value'],20 ,0,"...");
	$row_arr[] = $row;
	}
	return $row_arr;
}
//删除企业会员套餐变更记录
function del_meal_log($id)
{
	global $db;
	if (!is_array($id)) $id=array($id);
	$sqlin=implode(",",$id);
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	if (!$db->query("Delete from ".table('members_charge_log')." WHERE log_id IN ({$sqlin})")) return false;
	$num=$db->affected_rows();
	write_log("删除企业会员套餐变更记录id为".$sqlin."的套餐变更记录,共删除".$num."行", $_SESSION['admin_name'],3);
	return $db->affected_rows();
}


function get_member_list($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT m.*,c.companyname,c.id,c.addtime FROM ".table('members')." as m ".$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
		$row['company_url']=url_rewrite('QS_companyshow',array('id'=>$row['id'])); 
		$address = $db->getone("select log_address,log_id,log_uid from ".table("members_log")." where log_type = '1000' and log_uid = ".$row['uid']." order by log_id asc limit 1");
		$row['ipAddress'] = $address['log_address']; 
		//顾问
		$consultant = $db->getone("SELECT id,name FROM ".table('consultant')." WHERE id =".intval($row['consultant']));
		$row['con_name'] = $consultant['name'];
		$row_arr[] = $row;
	}
	return $row_arr;
}
function delete_company_user($uid)
{
	global $db;
	if (!is_array($uid))$uid=array($uid);
	$sqlin=implode(",",$uid);
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if(defined('UC_API'))
		{
			include_once(QISHI_ROOT_PATH.'uc_client/client.php');
			foreach($uid as $tuid)
			{
			$userinfo=get_user($tuid);
			$uc_user=uc_get_user($userinfo['username']);
			$uc_uid_arr[]=$uc_user[0];
			}
			uc_user_delete($uc_uid_arr);
		}
		if (!$db->query("Delete from ".table('members')." WHERE uid IN (".$sqlin.")")) return false;
		if (!$db->query("Delete from ".table('members_info')." WHERE uid IN (".$sqlin.")")) return false;
		if (!$db->query("Delete from ".table('members_log')." WHERE log_uid IN (".$sqlin.")")) return false;
		if (!$db->query("Delete from ".table('members_points')." WHERE uid IN (".$sqlin.")")) return false;
		if (!$db->query("Delete from ".table('order')." WHERE uid IN (".$sqlin.")")) return false;
		if (!$db->query("Delete from ".table('members_setmeal')." WHERE uid IN (".$sqlin.")")) return false; 
		write_log("删除会员uid为".$sqlin, $_SESSION['admin_name'],3);
		return true;		
	}
	return false;
}
//******************************其他**********************************
//获取会员信息，返回用户名等相关信息
function get_user_points($uid)
{
	global $db;
	$sql = "select * from ".table('members_points')." where uid = ".intval($uid)."  LIMIT 1 ";
	$points=$db->getone($sql);
	return $points['points'];
}
//获取积分规则
function get_points_rule()
{
	global $db;
	$sql = "select * from ".table('members_points_rule')." WHERE utype='1' order BY operation asc,value asc";
	$list=$db->getall($sql);
	return $list;
}
//-------------------------------------------------------
//付款后开通
function order_paid($v_oid)
{
	global $db,$timestamp,$_CFG;
	$order=$db->getone("select * from ".table('order')." WHERE oid ='{$v_oid}' AND is_paid= '1' LIMIT 1 ");
	if($order['pay_type'] == '1'  || $order['pay_type'] == '4')			//套餐积分支付
	{
		$order_name = "套餐积分订单";
		$user=get_user($order['uid']);
		$sql = "UPDATE ".table('order')." SET is_paid= '2',payment_time='{$timestamp}' WHERE oid='{$v_oid}' LIMIT 1 ";
		if (!$db->query($sql)) return false;
		if($order['amount']=='0.00'){
			$ismoney=1;
		}else{
			$ismoney=2;
		}
		if ($order['points']>0)
		{
				report_deal($order['uid'],1,$order['points']);				
				$user_points=get_user_points($order['uid']);
				$notes="操作人：{$_SESSION['admin_name']},说明：确认收款。收款金额：{$order['amount']} 。".date('Y-m-d H:i',time())."通过：".get_payment_info($order['payment_name'],true)." 成功充值 ".$order['amount']."元，(+{$order['points']})，(剩余:{$user_points}),订单:{$v_oid}";					
				write_memberslog($order['uid'],1,9001,$user['username'],$notes,1,3003,"积分充值","+{$order['points']}","{$user_points}");
				//会员套餐变更记录。管理员后台设置会员订单购买成功。4表示：管理员后台开通
				write_setmeallog($order['uid'],$user['username'],$notes,4,$order['amount'],$ismoney,1,1);
		}
		if ($order['setmeal']>0)
		{
				set_members_setmeal($order['uid'],$order['setmeal']);
				$setmeal=get_setmeal_one($order['setmeal']);
				$notes="操作人：{$_SESSION['admin_name']},说明：确认收款，收款金额：{$order['amount']} 。".date('Y-m-d H:i',time())."通过：".get_payment_info($order['payment_name'],true)." 成功充值 ".$order['amount']."元并开通{$setmeal['setmeal_name']}";
				write_memberslog($order['uid'],1,9002,$user['username'],$notes);
				//会员套餐变更记录。管理员后台设置会员订单购买成功。4表示：管理员后台开通
				write_setmeallog($order['uid'],$user['username'],$notes,4,$order['amount'],$ismoney,2,1);
		
		}
	}
	elseif($order['pay_type'] == '2')		//广告位支付
	{	
		$order_name = "广告位订单"; 
		$sql = "UPDATE ".table('order')." SET is_paid= '2',payment_time='{$timestamp}' WHERE oid='{$v_oid}' LIMIT 1 ";	//is_paid =2 为确定支付
		if (!$db->query($sql)) return false; 
		write_memberslog($_SESSION['uid'],1,9001,$_SESSION['username'],"申请广告位：<strong>{$order['description']}</strong>，(花费： {$order['amount']})。",1,1020,"申请广告位","-{$order['amount']}","{$user_points}"); 
	}
	elseif($order['pay_type'] == '3')		//短信支付
	{	
		$order_name = "短信订单"; 
		$user=get_user($order['uid']);
		$sql = "UPDATE ".table('order')." SET is_paid= '2',payment_time='{$timestamp}' WHERE oid='{$v_oid}' LIMIT 1 ";
		if (!$db->query($sql)) return false;
		if($order['setmeal'] > 0){	//查看短信套餐
			set_members_sms($order['uid'],intval($order['setmeal']));	//支付成功，向用户增加短信条数
			$user_points = get_user_setmeal($order['uid']);
			write_memberslog($_SESSION['uid'],1,9003,$_SESSION['username'],"短信充值套餐：<strong>{$order['description']}</strong>，(- {$order['amount']})，(剩余:{$user_points['set_sms']})",1,1020,"申请广告位","- {$order['amount']}","{$user_points['set_sms']}");
		}
	} 
		//发送邮件
	$mailconfig=get_cache('mailconfig');
	if ($mailconfig['set_payment']=="1" && $user['email_audit']=="1")
	{
	dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_mail.php?uid=".$order['uid']."&key=".asyn_userkey($order['uid'])."&act=set_payment");
	}
	//发送邮件完毕
	//sms
	$sms=get_cache('sms_config');
	if ($sms['open']=="1" && $sms['set_payment']=="1"  && $user['mobile_audit']=="1")
	{
	dfopen($_CFG['site_domain'].$_CFG['site_dir']."plus/asyn_sms.php?uid=".$order['uid']."&key=".asyn_userkey($order['uid'])."&act=set_payment");
	}
	//微信通知
	set_payment($order['uid'],$order_name,$order['oid'],$order['amount']);
	write_log("将订单号为".$v_oid."的订单设置为确认收款", $_SESSION['admin_name'],3);
	return true;
}
//重新对短信条数进行设置
function set_members_sms($uid,$setmeal){
	global $db;
	$meal = $db->getone("select * from ".table("sms_setmeal")." where id = ".$setmeal);
	$meal_num = $meal['num'];		//套餐的数量 
	if (!$db->query("update ".table("members")." set sms_num=sms_num+".$meal_num." where uid=$uid")) return false;
	return true; 
}  
function report_deal($uid,$i_type=1,$points=0)
{
		global $db,$timestamp;
		$points_val=get_user_points($uid);
		if ($i_type==1)
		{
		$points_val=$points_val+$points;
		}
		if ($i_type==2)
		{
		$points_val=$points_val-$points;
		$points_val=$points_val<0?0:$points_val;
		}
		$sql = "UPDATE ".table('members_points')." SET points= '{$points_val}' WHERE uid='{$uid}'  LIMIT 1 ";
		return $db->query($sql);
}
function gift_points($uid,$gift,$ptype,$points)
{
	 global $db;
	 $operator=$ptype=="1"?"+":"-";
	 $time=time();
	 if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$uid))
	 {
		$uid=explode(',',$uid);
	 }
	 if (!is_array($uid))$uid=array($uid);
	 if (!empty($uid) && is_array($uid))
	 {
	 	foreach($uid as $vuid)
		{
			$vuid=intval($vuid);
			if ($gift=='companyauth')
			{
				$com=$db->getone("SELECT uid FROM ".table('members_handsel')." WHERE uid ='{$vuid}' AND htype='{$gift}'  LIMIT 1");
				if(empty($com))
				{
				report_deal($vuid,$ptype,$points);
				$user=get_user($vuid);
				$mypoints=get_user_points($vuid);
				write_memberslog($vuid,1,9001,$user['username']," 成为已认证企业({$operator}{$points})，(剩余:{$mypoints})",1,1013,"认证营业执照","{$operator}{$points}","{$mypoints}");
				$db->query("INSERT INTO ".table('members_handsel')." (uid,htype,addtime) VALUES ('{$vuid}', '{$gift}','{$time}')");			
				}
			}			
		}
	 }
}
function get_setmeal($apply=true)
{
	global $db;
	if ($apply==true)
	{
	$where="";
	}
	else
	{
	$where=" WHERE display=1 ";
	} 
	$sql = "select * from ".table('setmeal').$where."  order BY display desc,show_order desc,id asc";
	return $db->getall($sql);
}
function get_setmeal_one($id)
{
	global $db;
	$sql = "select * from ".table('setmeal')."  WHERE id=".intval($id)."";
	return $db->getone($sql);
}
function get_user_setmeal($uid)
{
	global $db;
	$sql = "select * from ".table('members_setmeal')."  WHERE uid=".intval($uid)." AND  effective=1 LIMIT 1";
	return $db->getone($sql);
}
function del_setmeal_one($id)
{
	global $db;
	if (!$db->query("Delete from ".table('setmeal')." WHERE id=".intval($id)." ")) return false;
	//填写管理员日志
	write_log("后台删除id为".$id."的套餐", $_SESSION['admin_name'],3);
	return true;
}
//设置会员套餐
function set_members_setmeal($uid,$setmealid)
{
	global $db,$timestamp,$_CFG;
	$setmeal=$db->getone("select * from ".table('setmeal')." WHERE id = ".intval($setmealid)." AND display=1 LIMIT 1");
	if (empty($setmeal)) return false;
	$user_setmeal = get_user_setmeal(intval($uid));
	// 新添加会员开通套餐
	if($user_setmeal['setmeal_id']==0)
	{
		$setsqlarr['effective']=1;
		$setsqlarr['setmeal_id']=$setmeal['id'];
		$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
		$setsqlarr['days']=$setmeal['days'];
		$setsqlarr['starttime']=$timestamp;
		if ($setmeal['days']>0)
		{
			$setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
		}
		else
		{
			$setsqlarr['endtime']="0";	
		}
		$setsqlarr['expense']=$setmeal['expense'];
		$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
		$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary'];
		$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior'];
		$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary'];
		$setsqlarr['interview_senior']=$setmeal['interview_senior'];
		$setsqlarr['talent_pool']=$setmeal['talent_pool'];
		$setsqlarr['recommend_num']=$setmeal['recommend_num'];
		$setsqlarr['recommend_days']=$setmeal['recommend_days'];
		$setsqlarr['stick_num']=$setmeal['stick_num'];
		$setsqlarr['stick_days']=$setmeal['stick_days'];
		$setsqlarr['emergency_num']=$setmeal['emergency_num'];
		$setsqlarr['emergency_days']=$setmeal['emergency_days'];
		$setsqlarr['highlight_num']=$setmeal['highlight_num'];
		$setsqlarr['highlight_days']=$setmeal['highlight_days'];
		$setsqlarr['change_templates']=$setmeal['change_templates'];
		$setsqlarr['jobsfair_num']=$setmeal['jobsfair_num'];
		$setsqlarr['map_open']=$setmeal['map_open'];

		$setsqlarr['added']=$setmeal['added'];
		$setsqlarr['refresh_jobs_space']=$setmeal['refresh_jobs_space'];
		$setsqlarr['refresh_jobs_time']=$setmeal['refresh_jobs_time'];
		$setsqlarr['set_sms']=$setmeal['set_sms'];
		if (!$db->updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
		// 短信数套餐数
		if (!$db->query("update ".table("members")." set sms_num=sms_num+".$setsqlarr['set_sms']." where uid=$uid")) return false;
		$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
		$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
		$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
		if (!$db->updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
		if (!$db->updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
		distribution_jobs_uid($uid);
		return true;
	}
	//判断是否叠加套餐  (1->是  2->否)
	elseif($_CFG['is_superposition']==1)
	{
		//判断套餐保留表中是否有保留记录 (如果有记录说明 之前的套餐过期过  如果没有记录说明套餐没有过期过)
		$setmeal_reserved=$db->getone("select * from ".table("members_setmeal_reserved")." where uid=".intval($uid));
		//有记录的情况  (根据是否在保留时间范围内  来判断是否叠加保留表中的数据)
		if($setmeal_reserved)
		{
			//保留时间范围外  则无需叠加  直接开通新的套餐
			if($timestamp > $setmeal_reserved['reserved_time'])
			{
				$setsqlarr['effective']=1;
				$setsqlarr['setmeal_id']=$setmeal['id'];
				$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
				$setsqlarr['days']=$setmeal['days'];
				$setsqlarr['starttime']=$timestamp;
				if ($setmeal['days']>0)
				{
					$setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
				}
				else
				{
					$setsqlarr['endtime']="0";	
				}
				$setsqlarr['expense']=$setmeal['expense'];
				$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
				$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary'];
				$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior'];
				$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary'];
				$setsqlarr['interview_senior']=$setmeal['interview_senior'];
				$setsqlarr['talent_pool']=$setmeal['talent_pool'];
				$setsqlarr['recommend_num']=$setmeal['recommend_num'];
				$setsqlarr['recommend_days']=$setmeal['recommend_days'];
				$setsqlarr['stick_num']=$setmeal['stick_num'];
				$setsqlarr['stick_days']=$setmeal['stick_days'];
				$setsqlarr['emergency_num']=$setmeal['emergency_num'];
				$setsqlarr['emergency_days']=$setmeal['emergency_days'];
				$setsqlarr['highlight_num']=$setmeal['highlight_num'];
				$setsqlarr['highlight_days']=$setmeal['highlight_days'];
				$setsqlarr['change_templates']=$setmeal['change_templates'];
				$setsqlarr['jobsfair_num']=$setmeal['jobsfair_num'];
				$setsqlarr['map_open']=$setmeal['map_open'];

				$setsqlarr['added']=$setmeal['added'];
				$setsqlarr['refresh_jobs_space']=$setmeal['refresh_jobs_space'];
				$setsqlarr['refresh_jobs_time']=$setmeal['refresh_jobs_time'];
				$setsqlarr['set_sms']=$setmeal['set_sms'];
				if (!$db->updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
				// 短信数套餐数
				if (!$db->query("update ".table("members")." set sms_num=sms_num+".$setsqlarr['set_sms']." where uid=$uid")) return false;
				$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
				$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
				$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
				if (!$db->updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
				if (!$db->updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
				distribution_jobs_uid($uid);
				// 删除 叠加
				$db->query("delete from ".table('members_setmeal_reserved')." where id=$setmeal_reserved[id] limit 1");
				return true;
			}
			//保留时间范围内 叠加记录表中的数据
			else
			{
				$setsqlarr['effective']=1;
				$setsqlarr['setmeal_id']=$setmeal['id'];
				$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
				$setsqlarr['days']=$setmeal['days'];
				$setsqlarr['starttime']=$timestamp;
				if ($setmeal['days']>0)
				{
					$setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
				}
				else
				{
					$setsqlarr['endtime']="0";	
				}
				$setsqlarr['expense']=$setmeal['expense'];
				$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
				$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary']+$setmeal_reserved['download_resume_ordinary'];
				$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior']+$setmeal_reserved['download_resume_senior'];
				$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary']+$setmeal_reserved['interview_ordinary'];
				$setsqlarr['interview_senior']=$setmeal['interview_senior']+$setmeal_reserved['interview_senior'];
				$setsqlarr['talent_pool']=$setmeal['talent_pool'];
				$setsqlarr['recommend_num']=$setmeal['recommend_num']+$setmeal_reserved['recommend_num'];
				$setsqlarr['recommend_days']=$setmeal['recommend_days']+$setmeal_reserved['recommend_days'];
				$setsqlarr['stick_num']=$setmeal['stick_num']+$setmeal_reserved['stick_num'];
				$setsqlarr['stick_days']=$setmeal['stick_days']+$setmeal_reserved['stick_days'];
				$setsqlarr['emergency_num']=$setmeal['emergency_num']+$setmeal_reserved['emergency_num'];
				$setsqlarr['emergency_days']=$setmeal['emergency_days']+$setmeal_reserved['emergency_days'];
				$setsqlarr['highlight_num']=$setmeal['highlight_num']+$setmeal_reserved['highlight_num'];
				$setsqlarr['highlight_days']=$setmeal['highlight_days']+$setmeal_reserved['highlight_days'];
				$setsqlarr['change_templates']=$setmeal['change_templates'];
				$setsqlarr['jobsfair_num']=$setmeal['jobsfair_num']+$setmeal_reserved['jobsfair_num'];
				$setsqlarr['map_open']=$setmeal['map_open'];

				$setsqlarr['added']=$setmeal['added'];
				$setsqlarr['refresh_jobs_space']=$setmeal['refresh_jobs_space'];
				$setsqlarr['refresh_jobs_time']=$setmeal['refresh_jobs_time'];
				$setsqlarr['set_sms']=$setmeal['set_sms'];
				if (!$db->updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
				// 短信数套餐数
				if (!$db->query("update ".table("members")." set sms_num=sms_num+".$setsqlarr['set_sms']." where uid=$uid")) return false;
				$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
				$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
				$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
				if (!$db->updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
				if (!$db->updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
				distribution_jobs_uid($uid);
				// 删除 叠加
				$db->query("delete from ".table('members_setmeal_reserved')." where id=$setmeal_reserved[id] limit 1");
				return true;
			}
		}
		//无记录的情况 ( 套餐没有过期的情况下直接叠加新套餐情况)
		else
		{
			$setsqlarr['effective']=1;
			$setsqlarr['setmeal_id']=$setmeal['id'];
			$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
			$setsqlarr['days']=$setmeal['days'];
			$setsqlarr['starttime']=$timestamp;
			if ($setmeal['days']>0)
			{
				$setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
			}
			else
			{
				$setsqlarr['endtime']="0";	
			}
			$setsqlarr['expense']=$setmeal['expense'];
			$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
			$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary']+$user_setmeal['download_resume_ordinary'];
			$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior']+$user_setmeal['download_resume_senior'];
			$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary']+$user_setmeal['interview_ordinary'];
			$setsqlarr['interview_senior']=$setmeal['interview_senior']+$user_setmeal['interview_senior'];
			$setsqlarr['talent_pool']=$setmeal['talent_pool'];
			$setsqlarr['recommend_num']=$setmeal['recommend_num']+$user_setmeal['recommend_num'];
			$setsqlarr['recommend_days']=$setmeal['recommend_days']+$user_setmeal['recommend_days'];
			$setsqlarr['stick_num']=$setmeal['stick_num']+$user_setmeal['stick_num'];
			$setsqlarr['stick_days']=$setmeal['stick_days']+$user_setmeal['stick_days'];
			$setsqlarr['emergency_num']=$setmeal['emergency_num']+$user_setmeal['emergency_num'];
			$setsqlarr['emergency_days']=$setmeal['emergency_days']+$user_setmeal['emergency_days'];
			$setsqlarr['highlight_num']=$setmeal['highlight_num']+$user_setmeal['highlight_num'];
			$setsqlarr['highlight_days']=$setmeal['highlight_days']+$user_setmeal['highlight_days'];
			$setsqlarr['change_templates']=$setmeal['change_templates'];
			$setsqlarr['jobsfair_num']=$setmeal['jobsfair_num']+$user_setmeal['jobsfair_num'];
			$setsqlarr['map_open']=$setmeal['map_open'];

			$setsqlarr['added']=$setmeal['added'];
			$setsqlarr['refresh_jobs_space']=$setmeal['refresh_jobs_space'];
			$setsqlarr['refresh_jobs_time']=$setmeal['refresh_jobs_time'];
			$setsqlarr['set_sms']=$setmeal['set_sms'];
			if (!$db->updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
			// 短信数套餐数
			if (!$db->query("update ".table("members")." set sms_num=sms_num+".$setsqlarr['set_sms']." where uid=$uid")) return false;
			$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
			$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
			$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
			if (!$db->updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
			if (!$db->updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
			distribution_jobs_uid($uid);
			return true;
		}
	}
	//不叠加的情况
	elseif($_CFG['is_superposition']==2)
	{
		$setsqlarr['effective']=1;
		$setsqlarr['setmeal_id']=$setmeal['id'];
		$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
		$setsqlarr['days']=$setmeal['days'];
		$setsqlarr['starttime']=$timestamp;
		if ($setmeal['days']>0)
		{
			$setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
		}
		else
		{
			$setsqlarr['endtime']="0";	
		}
		$setsqlarr['expense']=$setmeal['expense'];
		$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
		$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary'];
		$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior'];
		$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary'];
		$setsqlarr['interview_senior']=$setmeal['interview_senior'];
		$setsqlarr['talent_pool']=$setmeal['talent_pool'];
		$setsqlarr['recommend_num']=$setmeal['recommend_num'];
		$setsqlarr['recommend_days']=$setmeal['recommend_days'];
		$setsqlarr['stick_num']=$setmeal['stick_num'];
		$setsqlarr['stick_days']=$setmeal['stick_days'];
		$setsqlarr['emergency_num']=$setmeal['emergency_num'];
		$setsqlarr['emergency_days']=$setmeal['emergency_days'];
		$setsqlarr['highlight_num']=$setmeal['highlight_num'];
		$setsqlarr['highlight_days']=$setmeal['highlight_days'];
		$setsqlarr['change_templates']=$setmeal['change_templates'];
		$setsqlarr['jobsfair_num']=$setmeal['jobsfair_num'];
		$setsqlarr['map_open']=$setmeal['map_open'];

		$setsqlarr['added']=$setmeal['added'];
		$setsqlarr['refresh_jobs_space']=$setmeal['refresh_jobs_space'];
		$setsqlarr['refresh_jobs_time']=$setmeal['refresh_jobs_time'];
		$setsqlarr['set_sms']=$setmeal['set_sms'];
		if (!$db->updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
		// 短信数套餐数
		if (!$db->query("update ".table("members")." set sms_num=sms_num+".$setsqlarr['set_sms']." where uid=$uid")) return false;
		$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
		$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
		$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
		if (!$db->updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
		if (!$db->updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)." AND add_mode='2' ")) return false;
		distribution_jobs_uid($uid);
		return true;
	}
}
//企业推广
function get_promotion_cat($available='')
{
	global $db;
	if ($available<>"")
	{
	$wheresql=" WHERE cat_available='$available' ";
	}
	$sql = "select * from ".table('promotion_category')." {$wheresql} order BY cat_order desc";
	return $db->getall($sql);
}
function get_promotion_cat_one($id)
{
	global $db;
	$sql = "select * from ".table('promotion_category')."  WHERE cat_id='".intval($id)."' LIMIT 1";
	return $db->getone($sql);
}
function get_promotion($offset,$perpage,$get_sql= '')
{
	global $db,$timestamp;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT p.*,j.subsite_id,j.jobs_name,j.addtime,j.companyname,j.company_id,j.company_addtime,j.recommend,j.emergency,j.highlight,j.stick,c.cat_name FROM ".table('promotion')." AS p ".$get_sql.$limit);	
	while($row = $db->fetch_array($result))
	{
	$row['jobs_name']=cut_str($row['jobs_name'],10,0,"...");
	if (!empty($row['highlight']))
	{
	$row['jobs_name']="<span style=\"color:{$row['highlight']}\">{$row['jobs_name']}</span>";
	}
	$row['jobs_url']=url_rewrite('QS_jobsshow',array('id'=>$row['cp_jobid']),1,$row['subsite_id']);
	$row['companyname']=cut_str($row['companyname'],15,0,"...");
	$row['company_url']=url_rewrite('QS_companyshow',array('id'=>$row['company_id']));
	$row_arr[] = $row;
	}
	return $row_arr;
}
function del_promotion($id)
{
	global $db;
	$n=0;
	if (!is_array($id))$id=array($id);
	foreach ($id as $did)
	{
		$info=$db->getone("select p.*,m.username from ".table('promotion')." AS p INNER JOIN  ".table('members')." as m ON p.cp_uid=m.uid WHERE p.cp_id='".intval($did)."' LIMIT 1");
		write_memberslog($info['cp_uid'],1,3006,$info['username'],"管理员取消推广，职位ID:{$info['cp_jobid']}");
		cancel_promotion($info['cp_jobid'],$info['cp_promotionid']);
		$db->query("Delete from ".table('promotion')." WHERE cp_id ='".intval($did)."'");
		$n+=$db->affected_rows();
	}
	write_log("删除推广id为".$id."的推广,共删除".$n."行", $_SESSION['admin_name'],3);
	return $n;
}
function get_promotion_one($id)
{
	global $db;
	$sql = "select * from ".table('promotion')."  WHERE cp_id='".intval($id)."' LIMIT 1";
	return $db->getone($sql);
}
function check_promotion($jobid,$promotionid)
{
	global $db;
	$sql = "select * from ".table('promotion')."  WHERE cp_jobid='".intval($jobid)."' AND cp_promotionid='".intval($promotionid)."' LIMIT 1";
	return $db->getone($sql);
}
function set_job_promotion($jobid,$promotionid,$val='')
{
	global $db;
	if ($promotionid=="1")
	{
		$db->query("UPDATE ".table('jobs')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_tmp')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_hot')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_key')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_rtime')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_scale')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_wage')." SET recommend=1 WHERE id='{$jobid}' LIMIT 1");
		return true;
	}
	elseif ($promotionid=="2")
	{
		$db->query("UPDATE ".table('jobs')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_tmp')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_hot')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_key')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_rtime')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_scale')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_wage')." SET emergency=1 WHERE id='{$jobid}' LIMIT 1");
		return true;
	}
	elseif ($promotionid=="3")
	{
		$db->query("UPDATE ".table('jobs')." SET stick=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_tmp')." SET stick=1 WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET stick=1 WHERE id='{$jobid}' LIMIT 1");
		return true;
	}
	elseif ($promotionid=="4")
	{
		$db->query("UPDATE ".table('jobs')." SET highlight='{$val}' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_tmp')." SET highlight='{$val}' WHERE id='{$jobid}' LIMIT 1");
		return true;
	}	
}
function cancel_promotion($jobid,$promotionid)
{
	global $db;
	if($promotionid=="1")
	{
		$db->query("UPDATE ".table('jobs')." SET recommend='0' WHERE id='{$jobid}'  LIMIT 1 ");
		$db->query("UPDATE ".table('jobs_tmp')." SET recommend='0' WHERE id='{$jobid}'  LIMIT 1 ");
		$db->query("UPDATE ".table('jobs_search_hot')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_key')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_rtime')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_scale')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_wage')." SET recommend='0' WHERE id='{$jobid}' LIMIT 1");
		return	true;	
	}
	elseif($promotionid=="2")
	{
		$db->query("UPDATE ".table('jobs')." SET emergency='0' WHERE id='{$jobid}'  LIMIT 1 ");	
		$db->query("UPDATE ".table('jobs_tmp')." SET emergency='0' WHERE id='{$jobid}'  LIMIT 1 ");	
		$db->query("UPDATE ".table('jobs_search_hot')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_key')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_rtime')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_scale')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		$db->query("UPDATE ".table('jobs_search_wage')." SET emergency='0' WHERE id='{$jobid}' LIMIT 1");
		return	true;	
	}
	elseif($promotionid=="3")
	{
		$db->query("UPDATE ".table('jobs')." SET stick='0' WHERE id='{$jobid}'  LIMIT 1 ");	
		$db->query("UPDATE ".table('jobs_tmp')." SET stick='0' WHERE id='{$jobid}'  LIMIT 1 ");	
		$db->query("UPDATE ".table('jobs_search_stickrtime')." SET stick='0' WHERE id='{$jobid}' LIMIT 1");
		return	true;	
	}
	elseif($promotionid=="4")
	{
		$db->query("UPDATE ".table('jobs')." SET highlight='' WHERE id='{$jobid}'  LIMIT 1 ");
		$db->query("UPDATE ".table('jobs_tmp')." SET highlight='' WHERE id='{$jobid}'  LIMIT 1 ");
		return	true;
	}
}
function get_comment($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query($get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row['content_']=cut_str($row['content'],60,0,"...");
	$row_arr[] = $row;
	}
	return $row_arr;
}
function comment_del($id)
{
	global $db;
	if (!is_array($id)) $id=array($id);
	$sqlin=implode(",",$id);
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	$result = $db->query("SELECT * FROM ".table('comment')." WHERE id IN ({$sqlin})");
	while($row = $db->fetch_array($result))
	{
	$db->query("update ".table('company_profile')." set comment=comment-1 WHERE id='{$row['company_id']}'  LIMIT 1");
	}
	if (!$db->query("Delete from ".table('comment')." WHERE id IN ({$sqlin})")) return false;
	$num=$db->affected_rows();
	write_log("删除企业评论id为".$sqlin."的评论,共删除".$num."行", $_SESSION['admin_name'],3);
	return $db->affected_rows();
}
//获取职位的审核日志
function get_jobsaudit_one($jobs_id){
	global $db;
	$sql = "select * from ".table('audit_reason')."  WHERE jobs_id='".intval($jobs_id)."' ORDER BY id DESC";
	return $db->getall($sql);
}
function get_comaudit_one($company_id){
	global $db;
	$uid=$db->getone("select uid from ".table('company_profile')." where id='".intval($company_id)."' limit 1");
	$sql = "select * from ".table('audit_reason')."  WHERE company_id='".intval($uid['uid'])."' ORDER BY id DESC";
	return $db->getall($sql);
}
function reasonaudit_del($id)
{
	global $db;
	if (!is_array($id)) $id=array($id);
	$sqlin=implode(",",$id);
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	if (!$db->query("Delete from ".table('audit_reason')." WHERE id IN ({$sqlin})")) return false;
	return $db->affected_rows();
}
 //获取企业图片
function get_company_img($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->getall("SELECT i.*,c.companyname,c.telephone,c.email  FROM ".table('company_img')." AS i ".$get_sql.$limit);
	return $result;
}
//删除公司图片
function del_company_img($id)
{
	global $db;
	if (!is_array($id)) $id=array($id);
	$sqlin=implode(",",$id);
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	
	$result = $db->query("SELECT * FROM ".table('company_img')." WHERE id IN ({$sqlin})");
	while($list = $db->fetch_array($result))
	{
		@unlink("../data/companyimg/original/".$list['img']);//删除原图
		@unlink("../data/companyimg/thumb/".$list['img']);//删除缩略图
	}
	if (!$db->query("Delete from ".table('company_img')." WHERE id IN ({$sqlin})")) return false;
	$num=$db->affected_rows();
	write_log("删除企业图片id为".$sqlin."的图片,共删除".$num."行", $_SESSION['admin_name'],3);
	return $db->affected_rows();
}
//审核公司图片
//修改职位审核状态
function edit_img_audit($id,$audit,$reason,$pms_notice='1')
{
	global $db;
	$audit=intval($audit);
	$reason=trim($reason);
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$return=0;
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('company_img')." SET audit={$audit}  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if($audit=='1') {$note='成功通过网站管理员审核!';}elseif($audit=='2'){$note='正在审核中!';}else{$note='未通过网站管理员审核！';}
		$reason=$reason==''?'无':$reason;
		//发送站内信
		if ($pms_notice=='1')
		{
				$result = $db->query("SELECT uid,title,img FROM ".table('company_img')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					$list['title']=$list['title']==''?$list['img']:$list['title'];
					$user_info=get_user($list['uid']);
					$setsqlarr['message']="您上传的图片，标题为：{$list['title']},".$note." 其他说明：".$reason;
					$setsqlarr['msgtype']=1;
					$setsqlarr['msgtouid']=$user_info['uid'];
					$setsqlarr['msgtoname']=$user_info['username'];
					$setsqlarr['dateline']=time();
					$setsqlarr['replytime']=time();
					$setsqlarr['new']=1;
					$db->inserttable(table('pms'),$setsqlarr);
				 }
		}
		write_log("将企业图片id为".$sqlin."的图片,认证状态设为".$audit."共操作".$return."行", $_SESSION['admin_name'],3);
		return $return;
	}
}
function get_company_news($offset, $perpage, $sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT n.*,c.companyname,c.telephone,c.email  FROM ".table('company_news')." AS n ".$sql.$limit);
	while($row = $db->fetch_array($result)){
	$row['news_url'] = url_rewrite('QS_companynewsshow',array('id'=>$row['id']));
	$row_arr[] = $row;
	}
	return $row_arr;
}
//企业新闻审核
function edit_news_audit($id,$audit,$reason,$pms_notice='1')
{
	global $db;
	$audit=intval($audit);
	$reason=trim($reason);
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$return=0;
	if (preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin))
	{
		if (!$db->query("update  ".table('company_news')." SET audit={$audit}  WHERE id IN ({$sqlin})")) return false;
		$return=$return+$db->affected_rows();
		if($audit=='1') {$note='成功通过网站管理员审核!';}elseif($audit=='2'){$note='正在审核中!';}else{$note='未通过网站管理员审核！';}
	    $reason=$reason==''?'无':$reason;
		//发送站内信
		if ($pms_notice=='1')
		{
				$result = $db->query("SELECT uid,title FROM ".table('company_news')." WHERE id IN ({$sqlin}) ");
				while($list = $db->fetch_array($result))
				{
					$user_info=get_user($list['uid']);
					$setsqlarr['message']="您添加的新闻，标题为：{$list['title']},".$note." 其他说明：".$reason;
					$setsqlarr['msgtype']=1;
					$setsqlarr['msgtouid']=$user_info['uid'];
					$setsqlarr['msgtoname']=$user_info['username'];
					$setsqlarr['dateline']=time();
					$setsqlarr['replytime']=time();
					$setsqlarr['new']=1;
					$db->inserttable(table('pms'),$setsqlarr);
				 }
		}
		write_log("将企业新闻id为".$sqlin."的新闻,认证状态设为".$audit."共操作".$return."行", $_SESSION['admin_name'],3);
		return $return;
	}
}
//删除公司新闻
function del_company_news($id)
{
	global $db;
	if (!is_array($id)) $id=array($id);
	$sqlin=implode(",",$id);
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	if (!$db->query("Delete from ".table('company_news')." WHERE id IN ({$sqlin})")) return false;
	$num=$db->affected_rows();
	write_log("删除企业新闻id为".$sqlin."的新闻,共删除".$num."行", $_SESSION['admin_name'],3);
	return $db->affected_rows();
}
function get_news_one($id){
	global $db;
	$sql = "select * from ".table('company_news')."  WHERE id='".intval($id)."' LIMIT 1";
	return $db->getone($sql);
}
//职位评论审核
function comment_audit($id,$audit)
{
	global $db;
	$audit=intval($audit);
	if (!is_array($id))$id=array($id);
	$sqlin=implode(",",$id);
	$return=0;
	if (!preg_match("/^(\d{1,10},)*(\d{1,10})$/",$sqlin)) return false;
	if (!$db->query("update  ".table('comment')." SET audit={$audit}  WHERE id IN ({$sqlin})")) return false;
	$return=$return+$db->affected_rows();
	write_log("将评论id为".$sqlin."的评论,审核状态设置为".$audit."共操作".$num."行", $_SESSION['admin_name'],3);
	return $return;
}
function edit_setmeal_notes($setarr,$setmeal){
	$diff_arr= array_diff_assoc($setarr,$setmeal);
	if($diff_arr){
		foreach($diff_arr as $key=>$value){
			if($key=='jobs_ordinary'){
				$str.="普通职位：{$setmeal['jobs_ordinary']}-{$setarr['jobs_ordinary']}";
			}elseif($key=='download_resume_ordinary'){
				$str.=",下载普通人才简历：{$setmeal['download_resume_ordinary']}-{$setarr['download_resume_ordinary']}";
			}elseif($key=='download_resume_senior'){
				$str.=",下载高级人才简历：{$setmeal['download_resume_senior']}-{$setarr['download_resume_senior']}";
			}elseif($key=='interview_ordinary'){
				$str.=",邀请普通人才面试数：{$setmeal['interview_ordinary']}-{$setarr['interview_ordinary']}";
			}elseif($key=='interview_senior'){
				$str.=",邀请高级人才面试数：{$setmeal['interview_senior']}-{$setarr['interview_senior']}";
			}elseif($key=='jobs_hunter'){
				$str.=",高级职位：{$setmeal['jobs_hunter']}-{$setarr['jobs_hunter']}";
			}elseif($key=='download_resume_huntered'){
				$str.=",下载经理人才简历：{$setmeal['download_resume_huntered']}-{$setarr['download_resume_huntered']}";
			}elseif($key=='interview_huntered'){
				$str.=",邀请经理人才面试数：{$setmeal['interview_huntered']}-{$setarr['interview_huntered']}";
			}
			elseif($key=='talent_pool'){
				$str.=",人才库容量：{$setmeal['talent_pool']}-{$setarr['talent_pool']}";
			}elseif($key=='recommend_num'){
				$str.=",允许推荐职位数：{$setmeal['recommend_num']}-{$setarr['recommend_num']}";
			}elseif($key=='recommend_days'){
				$str.=",推荐职位天数设定：{$setmeal['recommend_days']}-{$setarr['recommend_days']}";
			}elseif($key=='stick_num'){
				$str.=",允许置顶职位数：{$setmeal['stick_num']}-{$setarr['stick_num']}";
			}elseif($key=='stick_days'){
				$str.=",置顶天数设定：{$setmeal['stick_days']}-{$setarr['stick_days']}";
			}elseif($key=='emergency_num'){
				$str.=",允许紧急职位数：{$setmeal['emergency_num']}-{$setarr['emergency_num']}";
			}elseif($key=='emergency_days'){
				$str.=",紧急职位天数设定：{$setmeal['emergency_days']}-{$setarr['emergency_days']}";
			}elseif($key=='highlight_num'){
				$str.=",允许套色职位数：{$setmeal['highlight_num']}-{$setarr['highlight_num']}";
			}elseif($key=='highlight_days'){
				$str.=",套色职位天数设定：{$setmeal['highlight_days']}-{$setarr['highlight_days']}";
			}elseif($key=='jobsfair_num'){
				$str.=",参加招聘会数：{$setmeal['jobsfair_num']}-{$setarr['jobsfair_num']}";
			}elseif($key=='change_templates'){
					$flag=$setmeal['change_templates']=='1'?'允许':'不允许';
					$flag1=$setarr['change_templates']=='1'?'允许':'不允许';
				$str.=",自由切换模板：{$flag}-{$flag1}";
			}elseif($key=='map_open'){
					$flag=$setmeal['map_open']=='1'?'允许':'不允许';
					$flag1=$setarr['map_open']=='1'?'允许':'不允许';
				$str.=",电子地图：{$flag}-{$flag1}";
			}elseif($key=='endtime'){
				if($setarr['endtime']=='1970-01-01') $setarr['endtime']='无限期';
				$str.=",修改套餐到期时间：{$setmeal['endtime']}~{$setarr['endtime']}";
			}elseif($key=='log_amount' && $value){
				$str.=",收取套餐金额：{$value} 元";
			}
		}
		$strend=$str?"操作人：{$_SESSION['admin_name']}。说明：".$str:'';
		return $strend;
	}else{
		return '';
	}
}
function export_jobs($yid){
	global $db;
	$yid_str = implode(",", $yid);
	$oederbysql=" order BY refreshtime desc ";
	$wheresql = empty($wheresql)?" id in ({$yid_str}) ":" and id in ({$yid_str}) ";
	if (!empty($wheresql))
	{
	$wheresql=" WHERE ".ltrim(ltrim($wheresql),'AND');
	}
	$data = $db->getall("select * from ".table('jobs').$wheresql);
	$data_tmp = $db->getall("select * from ".table('jobs_tmp').$wheresql);
	
	if(!empty($data)){
		$result = $data;
	}elseif(!empty($data_tmp)){
		$result = $data_tmp;
	}
	if(!empty($result)){
		foreach ($result as $key => $value) {
			$arr[$key]['num'] = $key;
			$arr[$key]['jobs_id'] = $value['id'];
			$arr[$key]['jobs_name'] = $value['jobs_name'];
			$arr[$key]['companyname'] = $value['companyname'];
			$arr[$key]['nature_cn'] = $value['nature_cn'];
			$arr[$key]['sex_cn'] = $value['sex_cn'];
			$arr[$key]['amount'] = $value['amount'];
			$arr[$key]['category_cn'] = $value['category_cn'];
			$arr[$key]['trade_cn'] = $value['trade_cn'];
			$arr[$key]['scale_cn'] = $value['scale_cn'];
			$arr[$key]['district_cn'] = $value['district_cn'];
			$arr[$key]['street_cn'] = $value['street_cn'];
			$arr[$key]['education_cn'] = $value['education_cn'];
			$arr[$key]['experience_cn'] = $value['experience_cn'];
			$arr[$key]['wage_cn'] = $value['wage_cn'];
			$arr[$key]['contents'] = str_replace("\n","",str_replace("\r", "", $value['contents']));
			$arr[$key]['addtime'] = date("Y-m-d",$value['addtime']);
			$arr[$key]['deadline'] = date("Y-m-d",$value['deadline']);
			$arr[$key]['refreshtime'] = date("Y-m-d",$value['refreshtime']);
			$contact=$db->getone("select * from ".table('jobs_contact')." where pid='".$value['id']."' LIMIT 1");
			$arr[$key]['contact'] = $contact['contact'];
			$arr[$key]['qq'] = $contact['qq'];
			$arr[$key]['telephone'] = $contact['telephone'];
			$arr[$key]['address'] = $contact['address'];
			$arr[$key]['email'] = $contact['email'];

		}
		$top_str = "序号\t职位ID\t职位名称\t公司名称\t职位性质\t性别\t招聘人数\t职位类别\t行业类别\t公司规模\t工作地区\t所在街道\t学历要求\t工作经验\t薪资\t职位描述\t添加时间\t到期时间\t刷新时间\t联系人\t联系QQ\t联系电话\t联系地址\t联系邮箱\t\n";
		create_excel($top_str,$arr);
		write_log("导出职位id".$yid_str."的职位,", $_SESSION['admin_name'],3);
		return true;
	}else{
		return false;
	}
	
}
function export_company($yid){
	global $db;
	$yid_str = implode(",", $yid);
	$oederbysql=" order BY refreshtime desc ";
	$wheresql = empty($wheresql)?" uid in ({$yid_str}) ":" and uid in ({$yid_str}) ";
	
	if (!empty($wheresql))
	{
	$wheresql=" WHERE ".ltrim(ltrim($wheresql),'AND');
	}
	$data = $db->getall("select * from ".table('company_profile').$wheresql);
	$result = $data;
	if(!empty($result)){
		foreach ($result as $key => $value) {
			$arr[$key]['num'] = $key;
			$user = $db->getone("select username from ".table('members')." where uid=".$value['uid']);
			$arr[$key]['username'] = $user['username'];
			$arr[$key]['company_id'] = $value['id'];
			$arr[$key]['companyname'] = $value['companyname'];
			$arr[$key]['nature_cn'] = $value['nature_cn'];
			$arr[$key]['trade_cn'] = $value['trade_cn'];
			$arr[$key]['scale_cn'] = $value['scale_cn'];
			$arr[$key]['district_cn'] = $value['district_cn'];
			$arr[$key]['street_cn'] = $value['street_cn'];
			$arr[$key]['registered'] = $value['registered'].$value['currency'];
			$arr[$key]['contact'] = $value['contact'];
			$arr[$key]['website'] = $value['website'];
			$arr[$key]['telephone'] = $value['telephone'];
			$arr[$key]['address'] = $value['address'];
			$arr[$key]['email'] = $value['email'];
			$arr[$key]['contents'] = str_replace("\n","",str_replace("\r", "", $value['contents']));
		}
		$top_str = "序号\t所属会员\t公司ID\t公司名称\t公司性质\t行业类别\t公司规模\t所在地区\t所在街道\t注册资金\t联系人\t网址\t联系电话\t联系地址\t联系邮箱\t公司简介\t\n";
		create_excel($top_str,$arr);
		write_log("导出企业uid为".$yid_str."的企业资料", $_SESSION['admin_name'],3);
		return true;
	}else{
		return false;
	}
	
}
 function get_consultant($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT * FROM ".table('consultant').$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
		$row_arr[] = $row;
	}
	return $row_arr;
}
 function get_consultant_one($id)
{
	global $db;
	$result = $db->getone("SELECT * FROM ".table('consultant')." where id=".$id);
	return $result;
}
function del_consultant($id){
	global $db;
	$db->query("delete from ".table('consultant')." where id=".$id);
	write_log("删除顾问id为".$id."的顾问", $_SESSION['admin_name'],3);
	return true;
}
function set_user_status($status,$uid)
{
	global $db;
	$status=intval($status);
	$uid=intval($uid);
	if (!$db->query("UPDATE ".table('members')." SET status= {$status} WHERE uid={$uid} LIMIT 1")) return false;
	if (!$db->query("UPDATE ".table('company_profile')." SET user_status= {$status} WHERE uid={$uid} ")) return false;
	if (!$db->query("UPDATE ".table('jobs')." SET user_status= {$status} WHERE uid={$uid} ")) return false;
	if (!$db->query("UPDATE ".table('jobs_tmp')." SET user_status= {$status} WHERE uid={$uid} ")) return false;
	distribution_jobs_uid($uid);
	return true;
}

function get_member_manage($offset,$perpage,$get_sql= '')
{
	global $db;
	$row_arr = array();
	$limit=" LIMIT ".$offset.','.$perpage;
	$result = $db->query("SELECT * FROM ".table('members').$get_sql.$limit);
	while($row = $db->fetch_array($result))
	{
	$row['company_url']=url_rewrite('QS_companyshow',array('id'=>$row['id']));
	$row_arr[] = $row;
	}
	return $row_arr;
}
 ?>