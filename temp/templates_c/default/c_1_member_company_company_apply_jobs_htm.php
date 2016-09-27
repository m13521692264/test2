<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_parse_url.php'); $this->register_modifier("qishi_parse_url", "tpl_modifier_qishi_parse_url",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 17:32 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<title><?php echo $this->_vars['title']; ?>
</title>
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/user_common.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/user_company.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/datepicker.css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.vtip-min.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript" src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.datepicker.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.name-link').toggle(function(){
		$(this).parents('.c-data-content').removeClass('data-no-read').next().show();
		$(this).parents('.c-data-row').css({'border-color':'#fff'});
	}, function(){
		$(this).parents('.c-data-content').next().hide();
		$(this).parents('.c-data-row').css({'border-color':'#ccc'});
	});
	// 顶部筛选
	$('.data-filter').on('click', function(e){
		$(this).find('.filter-down').toggle();
		var fWidth = $(this).find('.filter-span').outerWidth(true) - 2;
		$(this).find(".filter-down").width(fWidth);
		$(document).one("click",function(){
			$('.filter-down').hide();
		});
		e.stopPropagation();
		$(".data-filter").not($(this)).find('.filter-down').hide();
	})
	// 状态
	$('.state-icon').on('click', function(e){
		$(this).next().toggle();
		$(document).one('click', function(){
			$('.state-list').hide();
		});
		e.stopPropagation();
		$('.state-icon').not($(this)).next().hide();
	});
	$('.state-list .state').on('click', function(e){
		var resume_state= $(this).attr('state');
		var resume_state_cn =$(this).text();
		var resume_id =$(this).attr('resume_id');
		var jobs_id =$(this).attr('jobs_id');
		$.post('<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_label_resume.php', {"resume_state":resume_state,"resume_state_cn":resume_state_cn,"resume_id":resume_id,"jobs_id":jobs_id}, function(data) 
		{
			if(data=="ok")
			{
				window.location.replace(location);
			}
			else
			{
				alert(data);
				$('.state-list').hide();
			}
		});
		e.stopPropagation();
	});
	// 删除弹出
	delete_dialog('.ctrl-del','#form1');
	//邀请面试弹出
	inviteJob_dialog('.inter-job',"<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_invited.php",'<?php echo $_SESSION['utype']; ?>
');
	// 发送到邮箱弹出
	companySendToEmail_dialog('.db-btn.btn3','./company_ajax.php');
})
</script>
</head>
<body <?php if ($this->_vars['QISHI']['body_bgimg']): ?>style="background:url(<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
data/<?php echo $this->_vars['QISHI']['updir_images']; ?>
/<?php echo $this->_vars['QISHI']['body_bgimg']; ?>
) repeat-x center 38px;"<?php endif; ?>>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("user/header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<div class="page_location link_bk">当前位置：<a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
">首页</a> > <a href="<?php echo $this->_vars['userindexurl']; ?>
">会员中心</a> > 收到的简历</div>
<div class="usermain">
  <div class="leftmenu  com link_bk">
  	 <?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("member_company/left.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  </div>
  <div class="rightmain">
  	<div class="bbox1">
		<div class="topnav get_resume">
			<div class="titleH1"><div class="h1-title">收到的简历</div></div>
			<div class="navs link_bk">
				<a href="?act=<?php echo $this->_vars['act']; ?>
&look=&jobsid=<?php echo $this->_vars['jobsid']; ?>
" <?php if ($_GET['look'] == ""): ?>class="se"<?php endif; ?>>所有简历<span class="check">(<?php echo $this->_vars['count']; ?>
)</span></a>
				<a href="?act=<?php echo $this->_vars['act']; ?>
&look=1&jobsid=<?php echo $this->_vars['jobsid']; ?>
" <?php if ($_GET['look'] == "1"): ?>class="se"<?php endif; ?>>未查看<span class="no_check">(<?php echo $this->_vars['count1']; ?>
)</span></a>
				<a href="?act=<?php echo $this->_vars['act']; ?>
&look=2&jobsid=<?php echo $this->_vars['jobsid']; ?>
" <?php if ($_GET['look'] == "2"): ?>class="se"<?php endif; ?>>已查看<span class="check">(<?php echo $this->_vars['count2']; ?>
)</span></a>
				<?php if ($this->_vars['QISHI']['company_apply']): ?><a href="?act=fastapply">快速添加</a><?php endif; ?>
                
                <a href="###" onclick="openQuickAdd();">快速添加（弹窗）</a>
				<div class="clear"></div>
                
                
                <!--弹窗-->
                <style>
				#quickadd{
				border:#999999 solid 5px; width:360px; position:absolute; left:50%; margin-left:-330px; background:#fff; z-index:99; padding-bottom:20px; position:absolute; display:none;
				}
				#quickadd .setH2{
					height:30px; line-height:30px; padding:0 20px; background:#f1f1f1;
				}
				#quickadd .setClose{
					position:absolute; right:0; top:0; padding:5px 10px; cursor:pointer;
				}
				#quickadd .inputs{ padding:10px 20px;}
				</style>
                 <script>
					function openQuickAdd(){
						$('#quickadd').show();
						return false;
					}
					function closeQuickAdd(){
						$('#quickadd').hide();
						return false;
					}
			
				</script>
                <div id="quickadd" style="">
                    <div class="setH2" style="">
                    快速添加
                    </div>
           			 <div class="setClose" onclick="closeQuickAdd();">x</div>
            		<div class="inputs">
                    	手 机 号：
                        <input type="text"/></br>
						姓名： <!--//匹配值值为昵称或者真实姓名或者实名认证的姓名-->
                        <input type="text"/>
						</br>
                        <input type="submit"/>
                    </div>
            	</div>
                <!--//弹窗-->
			</div>
		</div>
		<form id="form1" name="form1" method="post" action="?act=set_apply_jobs">
        
        
        <style>
		.apply_sels select{
			margin-right:20px; border:#ccc solid 1px; padding:5px; background:#fff;
		}
		select.bdr0{
			border:0; background:none;
		}
		input.bdr1{ border:#ccc solid 1px;}
		.top-item1-1, .content1-1{ width:65px;}
		.top-item2-1, .content2-1{ width:100px;}
		.c-data-top.apply_jobs .top-item3, .c-data-content.apply_jobs .content3{width:100px;}
		.c-data-top.apply_jobs .top-item4, .c-data-content.apply_jobs .content4{ width:150px;}
		.top-item7-1, .content7-1{ width:110px;}
		.c-data-top.apply_jobs .top-item7, .c-data-content.apply_jobs .content7{ width:110px;}
		</style>
        <div style="padding:15px;" class="apply_sels">选择职位： 
        <select>
        <option>全部职位</option>
        <?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['jos_li']): ?>
        <option><?php echo $this->_vars['jos_li']['jobs_name']; ?>
</option>
        <?php endforeach; endif; ?>
        </select>
		 工作日期：
        <select>
        <option>8月1号</option>
        <option>8月2号</option>
        <option>8月3号</option>
        </select>
        岗位类型：
        <select>
        <option>全部</option>
        <option>督导</option>
        <option>兼职</option>
        </select>
        排序方式：
        <select>
        <option>默认排序</option>
        <option>点位A排序</option>
        <option>点位B排序</option>
        </select>
        </div>
        
        
		<div class="company-data-list">
			<div class="c-data-top apply_jobs clearfix">
				<div class="item f-left check-item"><input type="checkbox" name="chkAll"  id="chk" title="全选/反选" /></div>
				<div class="item f-left top-item1">
					<!--<div class="data-filter span1">
						<span class="filter-span"><?php if ($_GET['state_cn'] == ''): ?>标签<?php else:  echo $_GET['state_cn'];  endif; ?><i class="filter-icon"></i></span>
						<ul class="filter-down">
							<li><a href="<?php echo $this->_run_modifier("state:,state_cn:全部", 'qishi_parse_url', 'plugin', 1); ?>
">全部</a></li>
							<li><a href="<?php echo $this->_run_modifier("state:1,state_cn:通过", 'qishi_parse_url', 'plugin', 1); ?>
">通过</a></li>
							<li><a href="<?php echo $this->_run_modifier("state:2,state_cn:弃用", 'qishi_parse_url', 'plugin', 1); ?>
">弃用</a></li>
							<li><a href="<?php echo $this->_run_modifier("state:3,state_cn:备用", 'qishi_parse_url', 'plugin', 1); ?>
">备用</a></li>
							<li><a href="<?php echo $this->_run_modifier("state:4,state_cn:放鸽子", 'qishi_parse_url', 'plugin', 1); ?>
">放鸽子</a></li>
                    
                            <li><a href="<?php echo $this->_run_modifier("state:7,state_cn:待审", 'qishi_parse_url', 'plugin', 1); ?>
">待审</a></li> 
                            <li><a href="<?php echo $this->_run_modifier("state:8,state_cn:取消报名", 'qishi_parse_url', 'plugin', 1); ?>
">已取消</a></li>
						</ul>
					</div>-->
				</div>
                <div class="item f-left top-item1-1">岗位</div>
				<div class="item f-left top-item2">姓名</div>
				<div class="item f-left top-item2-1">电话</div>
				<div class="item f-left top-item3">基本信息</div>
				<div class="item f-left top-item4">
					<select class="bdr0">
                    <option>点位操作</option>
                    </select>
				</div>
				<div class="item f-left top-item5">申请时间</div>
				
				<div class="item f-left top-item7">
                	<select class="bdr0">
                    	<option>全部</option>
                    	<option>等待操作</option>
                    	<option>通过</option>
                    	<option>弃用</option>
                    	<option>取消</option>
                    	<option>放鸽子</option>
                    	<option>备用</option>
                    </select>
                </div>
				<div class="item f-left top-item8">是否续约</div>
                <div class="item f-left top-item7-1">
                	备注
                </div>
			</div>
			<?php if ($this->_vars['jobs_apply']): ?>
			<?php if (count((array)$this->_vars['jobs_apply'])): foreach ((array)$this->_vars['jobs_apply'] as $this->_vars['list']): ?>
			<?php if ($this->_vars['list']['display'] != 3): ?>
				<?php if ($this->_vars['list']['sex_cn'] || $this->_vars['list']['fullname']): ?>
				<div class="c-data-row">
					<div class="c-data-content apply_jobs clearfix <?php if ($this->_vars['list']['personal_look'] == "1" && $_GET['look'] == ""): ?>data-no-read<?php endif; ?>">
						<div class="c-item f-left check-item"><input name="y_id[]" type="checkbox" id="y_id"  value="<?php echo $this->_vars['list']['did']; ?>
"/></div>
						<div class="c-item f-left content1">
							<div class="data-state">
								<span title="<?php echo $this->_vars['list']['resume_state_cn']; ?>
" class="state-icon <?php if ($this->_vars['list']['resume_state'] > 0): ?>s<?php echo $this->_vars['list']['is_reply'];  else: ?>default<?php endif; ?>"></span>
								<div class="state-list">
                                <?php if ($this->_vars['list']['work_starts'] == 1): ?>
                                <li><a href="javascript:;" class="state s3" state="3" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">上岗</a></li>
                                <?php endif; ?>
						<?php if ($this->_vars['list']['resume_state'] == 0): ?>
                               <li><a href="javascript:;" class="state s1" state="1" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">通过</a></li>
                              <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
							<li><a href="javascript:;" class="state s2" state="3" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">备用</a></li>
                              <?php endif; ?>
                               <?php if ($this->_vars['list']['resume_state'] == 1): ?>
                          
                               <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
                              <li><a href="javascript:;" class="state s1" state="4" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">放鸽子</a></li>
									<li><a href="javascript:;" class="state s2" state="8" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">取消报名</a></li>
                              <?php endif; ?>
                              	<?php if ($this->_vars['list']['resume_state'] == 7): ?>
                               <li><a href="javascript:;" class="state s1" state="1" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">通过</a></li>
                              <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
							<li><a href="javascript:;" class="state s2" state="3" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">备用</a></li>
                              <?php endif; ?>
                               <?php if ($this->_vars['list']['resume_state'] == 5): ?>
                          
                               <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
                              <li><a href="javascript:;" class="state s1" state="4" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">放鸽子</a></li>
									<li><a href="javascript:;" class="state s2" state="8" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">取消报名</a></li>
                              <?php endif; ?>
                                <?php if ($this->_vars['list']['resume_state'] == 2): ?>
                             
                              	<li><a href="javascript:;" class="state s2" state="1" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">通过</a>
                              	<li><a href="javascript:;" class="state s2" state="3" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">备用</a>
                              <?php endif; ?>
                               <?php if ($this->_vars['list']['resume_state'] == 4): ?>
                          
                           <li><a href="javascript:;" class="state s2" state="7" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">待审</a>
                              <?php endif; ?>
                              
                              <?php if ($this->_vars['list']['resume_state'] == 3): ?>
                           <li><a href="javascript:;" class="state s1" state="1" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">通过</a></li>
                            <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
							
                              <?php endif; ?>
                                 <?php if ($this->_vars['list']['resume_state'] == 8): ?>
                         <li><a href="javascript:;" class="state s2" state="1" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">通过</a>
                       <li><a href="javascript:;" class="state s2" state="3" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">备用</a>
                              <?php endif; ?>
                                  <?php if ($this->_vars['list']['resume_state'] == 6): ?>
                         <li><a href="javascript:;" class="state s1" state="2" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">弃用</a></li>
                              <li><a href="javascript:;" class="state s1" state="4" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">放鸽子</a></li>
									<li><a href="javascript:;" class="state s2" state="8" jobs_id="<?php echo $this->_vars['list']['jobs_id']; ?>
" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
">取消报名</a></li>
                              <?php endif; ?>
								</div>
							</div>
						</div>
                        <div class="c-item f-left content1-1">
                        	
                            <select class="bdr0">
                    <option>兼职</option>
                    <option>督导</option>
                    </select>
                        </div>
						<div class="c-item f-left content2"><a href="javascript:;" class="name-link underline"><?php echo $this->_vars['list']['fullname']; ?>
</a></div>
                        <div class="c-item f-left content2-1">
                        	<?php echo $this->_vars['list']['telephone']; ?>

                        </div>
						<div class="c-item f-left content3"><?php if ($this->_vars['list']['age']):  echo $this->_vars['list']['age']; ?>
岁/<?php endif;  echo $this->_vars['list']['education_cn']; ?>
/<?php echo $this->_vars['list']['experience_cn']; ?>
/<?php echo $this->_vars['list']['sex_cn']; ?>
</div>
						<div class="c-item f-left content4">
                        	<select class="bdr0">
                    <option>海淀区中关村</option>
                    </select>
                        </div>
						<div class="c-item f-left content5"><span class="data-time"><?php echo $this->_run_modifier($this->_vars['list']['apply_addtime'], 'date_format', 'plugin', 1, "%m-%d %H:%I"); ?>
</span></div>
						<!-- <div class="c-item f-left content6"></div> -->
						
						<div class="c-item f-left content7 state-list">
                    		<select class="bdr0">
                    	<option>等待操作</option>
                    	<option>通过</option>
                    	<option>弃用</option>
                    	<option>取消</option>
                    	<option>放鸽子</option>
                    	<option>备用</option>
                    </select>
                        </div>
						    <div class="c-item f-left content4-1">
                        否
                        </div>
                        <div class="c-item f-left content7-1">
                        	<input type="text" class="bdr1" style="width:100px;"/>
                        </div>
					</div>
					<div class="data-detail">
						<i class="arrow"></i>
						<?php if ($this->_vars['list']['resume_education_list']): ?>
						<div class="detail-block clearfix">
							<div class="db-type f-left">教育经历：</div>
							<div class="db-content f-left">
								<?php if (count((array)$this->_vars['list']['resume_education_list'])): foreach ((array)$this->_vars['list']['resume_education_list'] as $this->_vars['edu_list']): ?>
								<p class="db-info"><span><?php echo $this->_vars['edu_list']['startyear']; ?>
年<?php echo $this->_vars['edu_list']['startmonth']; ?>
月-<?php echo $this->_vars['edu_list']['endyear']; ?>
年<?php echo $this->_vars['edu_list']['endmonth']; ?>
月</span><span><?php echo $this->_vars['edu_list']['school']; ?>
</span><span><?php echo $this->_vars['edu_list']['speciality']; ?>
</span><span><?php echo $this->_vars['edu_list']['education_cn']; ?>
</span></p>
								<?php endforeach; endif; ?>
							</div>
						</div>
						<?php endif; ?>
						<?php if ($this->_vars['list']['resume_work_list']): ?>
						<div class="detail-block clearfix">
							<div class="db-type f-left">工作经历：</div>
							<div class="db-content f-left">
								<?php if (count((array)$this->_vars['list']['resume_work_list'])): foreach ((array)$this->_vars['list']['resume_work_list'] as $this->_vars['w_list']): ?>
								<p class="db-info"><span><?php echo $this->_vars['w_list']['startyear']; ?>
年<?php echo $this->_vars['w_list']['startmonth']; ?>
月-<?php echo $this->_vars['w_list']['endyear']; ?>
年<?php echo $this->_vars['w_list']['endmonth']; ?>
月</span><span><?php echo $this->_vars['w_list']['companyname']; ?>
</span><span><?php echo $this->_vars['w_list']['jobs']; ?>
</span></p>
								<?php endforeach; endif; ?>
							</div>
						</div>
						<?php endif; ?>

						<div class="detail-block clearfix">
							<div class="db-type f-left">求职意向：</div>
							<div class="db-content f-left">
								<div class="job-flow"><span>期望工作性质 <?php echo $this->_vars['list']['nature_cn']; ?>
</span> | <span>期望工作地区 <?php echo $this->_vars['list']['district_cn']; ?>
</span> | <span>期望薪资 <em><?php echo $this->_vars['list']['wage_cn']; ?>
</em></span> | <span>期望职位 <?php echo $this->_vars['list']['intention_jobs']; ?>
</span> | <span>期望行业 <?php echo $this->_vars['list']['trade_cn']; ?>
</span></div>
							</div>
						</div>

						<div class="detail-block clearfix">
							<div class="db-type f-left">&nbsp;</div>
							<div class="db-btn-group f-left">
								<a href="<?php echo $this->_vars['list']['resume_url']; ?>
" target="_blank" class="db-btn btn1 f-left"></a>
								<a href="company_resume_doc.php?y_id=<?php echo $this->_vars['list']['resume_id']; ?>
" class="db-btn btn2 f-left"></a>
								<a href="javascript:;" class="db-btn btn3 f-left" resume_id="<?php echo $this->_vars['list']['resume_id']; ?>
" uid="<?php echo $this->_vars['list']['personal_uid']; ?>
" ></a>
							</div>
						</div>
					</div>
				</div>
				<?php else: ?>
				<!--<div class="c-data-row">
					<div class="c-data-content interview clearfix">
						<div class="c-item f-left check-item"><input type="checkbox" name="y_id[]" id="y_id" value="<?php echo $this->_vars['list']['did']; ?>
" class="checkbox" /></div>
						[<?php echo $this->_vars['list']['resume_name']; ?>
] 的简历可能已被删除，您可以删除本条信息.	
					</div>
				</div>-->
				<?php endif; ?>
			<?php else: ?>
				<div class="c-data-row">
					<div class="c-data-content interview clearfix">
						<div class="c-item f-left check-item"><input type="checkbox" name="y_id[]" id="y_id" value="<?php echo $this->_vars['list']['did']; ?>
" class="checkbox" /></div>
						该简历已关闭，可能已经找到工作
					</div>
				</div>
			<?php endif; ?>
			<?php endforeach; endif; ?>
			<div class="c-data-row last">
				<div class="c-data-content apply_jobs clearfix">
					<div class="c-item f-left check-item"><input type="checkbox" name="chkAll"  id="chk2" title="全选/反选" /></div>
					<div class="data-last-btn f-left">
						<input type="submit" value="通过" class="btn-80-30blue"/>
						<input type="button"  value="弃用" class="btn-65-30blue ctrl-del"/>
					</div>
				</div>
			</div>
			<?php else: ?>
			<div class="emptytip">没有找到对应的信息！</div>
			<?php endif; ?>
		</div>
		</form>
		<?php if ($this->_vars['page']): ?>
		<table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="50" align="center"> <div class="page link_bk"><?php echo $this->_vars['page']; ?>
</div></td>
          </tr>
      	</table>
		<?php endif; ?>
	</div>
  </div>
  <div class="clear"></div>
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("user/footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>