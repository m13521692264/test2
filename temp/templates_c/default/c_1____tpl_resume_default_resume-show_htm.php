<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_resume_show.php'); $this->register_function("qishi_resume_show", "tpl_function_qishi_resume_show",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 17:54 CST */  echo tpl_function_qishi_resume_show(array('set' => "列表名:show,简历ID:GET[id]"), $this);?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<meta name="renderer" content="webkit"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
<title><?php echo $this->_vars['show']['fullname']; ?>
的个人简历 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/common.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['user_tpl']; ?>
css/css.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/datepicker.css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript" src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.datepicker.js"></script>
<!--[if lte IE 7]>
<style type="text/css">
.resume-block-detail .folder-item{
    position:relative;
    overflow:hidden;
}
.resume-block-detail .folder-item span{
    position:absolute;
    left:50%;top:50%;
}
.resume-block-detail .folder-item img{
    position:relative;
    left:-50%;top:-50%;
}
</style>
<![endif]-->
<script type="text/javascript">
$(document).ready(function()
{
	var id="<?php echo $this->_vars['show']['id']; ?>
";
	var tsTimeStamp= new Date().getTime();
	$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_click.php", { "id": id,"time":tsTimeStamp,"act":"resume_click"},
		function (data,textStatus)
		{			
			$(".click").html(data);
		}
	);
	<?php if ($this->_vars['show']['isminesee'] != '1'): ?>
	$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_contact.php", { "id": id,"time":tsTimeStamp,"act":"resume_contact"},
	function (data,textStatus)
	{      
		$("#resume_contact").html(data);
		var user_utype = "<?php echo $_SESSION['utype']; ?>
";
		if(user_utype=='3')
		{
			//下载简历
			downResume_dialog(".download","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_hunter_download_resume.php","<?php echo $this->_vars['show']['id']; ?>
");
			//邀请面试
			inviteJob_dialog("#invited","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_hunter_invited.php",user_utype);
		}
		else 
		{
			//下载简历
			downResume_dialog(".download","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_download_resume.php","<?php echo $this->_vars['show']['id']; ?>
");
			//邀请面试
			inviteJob_dialog("#invited","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_invited.php",user_utype);
		}
		//简历标记
		$(".interview-state").live('click',function() {
			var resume_state= $(this).attr('state');
			var resume_state_cn =$(this).val();
			var resume_id =$(this).attr('resume_id');
			var myDialog=dialog();
			$.post('<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_label_resume.php', {"resume_state":resume_state,"resume_state_cn":resume_state_cn,"resume_id":resume_id}, function(data) 
			{
				if(data=="ok")
				{
					window.location.reload();
				}
				else
				{
					myDialog.title('系统提示');
					myDialog.content(data); 
					myDialog.width('350'); 
					myDialog.showModal();
				}
			});
		});
    });
    //添加到人才库
    favoritesResume_dialog(".add_resume_pool","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_favorites_resume.php?id="+id+"&act=add&t="+tsTimeStamp);
    //举报信息
    reportResume_dialog(".report_button","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_report_resume.php");
    <?php else: ?>
    // 更换模板
    $(".tpl").live("click",function(){
		var pid = $(this).attr("pid");
		var url = "<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/personal/personal_ajax.php?act=tpl&pid="+pid;
		var myDialog = dialog();
		myDialog.content("加载中...");
	    myDialog.title('更换模板');
	    myDialog.showModal();
	    $.get(url, function(data){
		    myDialog.content(data);
		    /* 关闭 */
		    $(".DialogClose").live('click',function() {
		      myDialog.close().remove();
		    });
		});
	});
	// 隐私设置
	$(".resume_privacy").live("click",function(){
		var pid = $(this).attr("pid");
		var url = "<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/personal/personal_ajax.php?act=privacy&pid="+pid;
		var myDialog = dialog();
		myDialog.content("加载中...");
	    myDialog.title('隐私设置');
	    myDialog.width('550');
	    myDialog.showModal();
	    $.get(url, function(data){
	        myDialog.content(data);
	        /* 关闭 */
	        $(".DialogClose").live('click',function() {
	          myDialog.close().remove();
	        });
	    });
	});
    <?php endif; ?>
});
$(function(){
	$("input[type='button']").hover(function(){
		$(this).addClass("hover");
	},function(){
		$(this).removeClass("hover");
	})
})
// 用户登录
$(".ajax_user_login").live('click',function(){
  var myDialog = dialog();// 初始化一个带有loading图标的空对话框
  jQuery.ajax({
      url: '<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_ajax_login.php',
      success: function (data) {
     	 	myDialog.width(475);
		myDialog.content(data);// 填充对话框内容
		myDialog.title('用户登录');// 填充对话框内容
		myDialog.showModal();
      }
  });
});
</script>
</head>
<body class="default">
	<div id="header">
		<div class="header-wrap"><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
"><img src="<?php echo $this->_vars['QISHI']['upfiles_dir'];  echo $this->_vars['QISHI']['web_logo']; ?>
" alt="<?php echo $this->_vars['QISHI']['site_name']; ?>
" height="70" /></a></div>
	</div>
	<div id="wrap" class="clearfix">
		<div class="left-main f-left">
			<?php if ($this->_vars['show']['message']): ?>
			<div class="top-streamer"><i class="streamer-angle"></i><?php echo $this->_vars['show']['message']; ?>
</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['isminesee'] == '1'): ?>
			<div class="top-streamer"><i class="streamer-angle"></i>简历名称：<font style="font-weight:bold"><?php echo $this->_vars['show']['title']; ?>
</font>   &nbsp;公开状态：<font style="font-weight:bold"><span id="showDisplayName"><?php if ($this->_vars['show']['display'] == '1'): ?>公开<?php else: ?>保密<?php endif; ?></span></font></div>
			<?php endif; ?>
			<div class="personal-info clearfix">
				<div class="personal-pic f-left"><img src="<?php echo $this->_vars['show']['photosrc']; ?>
" alt="" width="160" height="178" /></div>
				<div class="info-text f-left">
					<h2><?php echo $this->_vars['show']['fullname']; ?>
 <span>（<?php echo $this->_vars['show']['sex_cn'];  if ($this->_vars['show']['age'] < 80): ?>，<?php echo $this->_vars['show']['age']; ?>
岁<?php endif; ?>）</span></h2>
					<div class="resume-time">更新时间：<?php echo $this->_run_modifier($this->_vars['show']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d"); ?>
</div>
					<div class="resonal-auth clearfix">
						<?php if ($this->_vars['show']['is_audit_mobile'] == 1): ?><div class="auth-item phone f-left">手机已认证</div><?php endif; ?>
						<?php if ($this->_vars['show']['is_audit_weixin']): ?><div class="auth-item weichat f-left">微信已认证</div><?php endif; ?>
						<?php if ($this->_vars['show']['is_audit_email'] == 1): ?><div class="auth-item email f-left">邮箱已认证</div><?php endif; ?>
						<?php if ($this->_vars['show']['resume_from_pc'] == '4'): ?>
						<span class="f-left">（该简历来自快速注册）</span>
						<?php elseif ($this->_vars['show']['resume_from_pc'] != '1' && $this->_vars['show']['resume_from_pc'] != '0'): ?>
						<span class="f-left">（该简历由手机发布）</span>
						<?php endif; ?>
					</div>
					<div class="info-detail">
						<p><?php if ($this->_vars['show']['education_cn']): ?><span>最高学历：<?php echo $this->_vars['show']['education_cn']; ?>
</span><?php endif;  if ($this->_vars['show']['experience_cn']): ?>&nbsp;|&nbsp;<span>工作经验：<?php echo $this->_vars['show']['experience_cn']; ?>
</span><?php endif;  if ($this->_vars['show']['major_cn']): ?>&nbsp;|&nbsp;<span>专业：<?php echo $this->_vars['show']['major_cn']; ?>
</span><?php endif; ?></p>
						<p><?php if ($this->_vars['show']['marriage_cn']): ?><span>婚姻状况：<?php echo $this->_vars['show']['marriage_cn']; ?>
</span><?php endif;  if ($this->_vars['show']['height']): ?>&nbsp;|&nbsp;<span>身&nbsp;&nbsp;高：<?php echo $this->_vars['show']['height']; ?>
 cm</span><?php endif; ?></p>
						<p><?php if ($this->_vars['show']['householdaddress']): ?><span>籍&nbsp;&nbsp;贯：<?php echo $this->_vars['show']['householdaddress']; ?>
</span>&nbsp;|&nbsp;<?php endif;  if ($this->_vars['show']['residence']): ?><span>现居住地：<?php echo $this->_vars['show']['residence']; ?>
</span><?php endif; ?></p>
						<?php if ($this->_vars['show']['current_cn']): ?><p><span>求职状态：<?php echo $this->_vars['show']['current_cn']; ?>
</span></p><?php endif; ?>
					</div>
					<?php if ($this->_vars['show']['tag_cn']): ?>
					<div class="personal-tag clearfix">
						<?php if (count((array)$this->_vars['show']['tag_cn'])): foreach ((array)$this->_vars['show']['tag_cn'] as $this->_vars['t_li']): ?>
						<div class="tag-item f-left"><?php echo $this->_vars['t_li']; ?>
<i class="tag-angle"></i></div>
						<?php endforeach; endif; ?>
					</div>
					<?php endif; ?>
				</div>
			</div>
			<div class="job-item">
				<h3>两周内求职情况</h3>
				<div class="percent clearfix">
					<i class="right-top-angle"></i>
					<div class="percent-block f-left">
						<div class="percent-star f-left star-<?php echo $this->_vars['show']['vitality']; ?>
">活跃度：</div>
						<div class="star-state f-left">
							<p><span><?php echo $this->_vars['show']['refreshtime_cn']; ?>
</span>更新</p>
							<p>主动申请 <span><?php echo $this->_vars['show']['apply_jobs']; ?>
</span> 个职位</p>
							<p>浏览过 <span><?php echo $this->_vars['show']['view_jobs']; ?>
</span> 个职位</p>
						</div>
					</div>
					<div class="percent-block last f-left">
						<div class="percent-star f-left star-<?php echo $this->_vars['show']['attention']; ?>
">企业关注度：</div>
						<div class="star-state f-left">
							<p>简历被浏览 <span><?php echo $this->_vars['show']['com_view']; ?>
</span> 次</p>
							<p>简历被下载 <span><?php echo $this->_vars['show']['com_down']; ?>
</span> 次</p>
							<p>收到面试邀请 <span><?php echo $this->_vars['show']['com_invite']; ?>
</span> 次</p>
						</div>
					</div>
					
					<div class="percent-block last f-left" style="width:330px;">
						<div class="percent-star f-left star-<?php echo $this->_vars['show']['attention']; ?>
">用户诚信度：</div>
						<div class="star-state f-left">
							<p>上岗数 <span><?php echo $this->_vars['sgshu']; ?>
</span> 次</p>
							<p>取消数 <span><?php echo $this->_vars['qxshu']; ?>
</span> 次</p>
							<p>放鸽子数 <span><?php echo $this->_vars['fgzshu']; ?>
</span> 次</p>
						</div>
					</div>
					
					<!-- <div class="percent-block last f-left" style="width:330px;">
						<div class="percent-star f-left star-<?php echo $this->_vars['show']['attention']; ?>
" >评论：</div>
						<div class="star-state f-left">
							<p>好评 <span><?php echo $this->_vars['haop']; ?>
</span> 次</p>
							<p>中评 <span><?php echo $this->_vars['zhongp']; ?>
</span> 次</p>
							<p>差评 <span><?php echo $this->_vars['chap']; ?>
</span> 次</p>
						</div>
					</div> -->
					
				</div>
			</div>
			<?php if ($this->_vars['show']['isminesee'] != '1'): ?>
			
			<?php else: ?>
			
			<?php endif; ?>
			<div class="resume-title">求职意向</div>
			<div class="resume-block-detail">
				<div class="rb-content"><?php if ($this->_vars['show']['wage_cn']): ?>期望月薪：<?php echo $this->_vars['show']['wage_cn'];  endif;  if ($this->_vars['show']['nature_cn']): ?><span>|</span>工作性质：<?php echo $this->_vars['show']['nature_cn'];  endif; ?></div>
				<div class="rb-content"><?php if ($this->_vars['show']['district_cn']): ?>期望地区：<?php echo $this->_vars['show']['district_cn'];  endif;  if ($this->_vars['show']['trade_cn']): ?><span>|</span>期望行业：<?php echo $this->_vars['show']['trade_cn'];  endif; ?></div>
				<?php if ($this->_vars['show']['intention_jobs']): ?><div class="rb-content">期望岗位：<?php echo $this->_vars['show']['intention_jobs']; ?>
</div><?php endif; ?>
			</div>
			<?php if ($this->_vars['show']['specialty']): ?>
			<div class="resume-title">自我描述</div>
			<div class="resume-block-detail">
				<div class="rb-content-more"><?php echo $this->_run_modifier($this->_vars['show']['specialty'], 'nl2br', 'PHP', 1); ?>
</div>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['education_list']): ?>
			<div class="resume-title">教育经历</div>
			<div class="resume-block-detail">
				<?php if (count((array)$this->_vars['show']['education_list'])): foreach ((array)$this->_vars['show']['education_list'] as $this->_vars['list']): ?>
				<div class="rb-content"><?php echo $this->_vars['list']['startyear']; ?>
年<?php echo $this->_vars['list']['startmonth']; ?>
月-<?php if ($this->_vars['list']['todate'] != '1'):  echo $this->_vars['list']['endyear']; ?>
年<?php echo $this->_vars['list']['endmonth']; ?>
月<?php else: ?>至今<?php endif; ?><span>|</span><?php echo $this->_vars['list']['school']; ?>
<span>|</span><?php echo $this->_vars['list']['speciality']; ?>
<span>|</span><?php echo $this->_vars['list']['education_cn']; ?>
</div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['work_list']): ?>
			<div class="resume-title">工作经历</div>
			<div class="resume-block-detail">
				<?php if (count((array)$this->_vars['show']['work_list'])): foreach ((array)$this->_vars['show']['work_list'] as $this->_vars['list']): ?>
				<div class="work-item">
					<div class="rb-content"><?php echo $this->_vars['list']['startyear']; ?>
年<?php echo $this->_vars['list']['startmonth']; ?>
月-<?php if ($this->_vars['list']['todate'] != '1'):  echo $this->_vars['list']['endyear']; ?>
年<?php echo $this->_vars['list']['endmonth']; ?>
月<?php else: ?>至今<?php endif; ?><span>|</span><?php echo $this->_vars['list']['jobs']; ?>
<span>|</span><?php echo $this->_vars['list']['companyname']; ?>
</div>
					<p><?php echo $this->_run_modifier($this->_vars['list']['achievements'], 'nl2br', 'PHP', 1); ?>
</p>
				</div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['training_list']): ?>
			<div class="resume-title">培训经历</div>
			<div class="resume-block-detail">
				<?php if (count((array)$this->_vars['show']['training_list'])): foreach ((array)$this->_vars['show']['training_list'] as $this->_vars['list']): ?>
				<div class="rb-content"><?php echo $this->_vars['list']['startyear']; ?>
年<?php echo $this->_vars['list']['startmonth']; ?>
月-<?php if ($this->_vars['list']['todate'] != '1'):  echo $this->_vars['list']['endyear']; ?>
年<?php echo $this->_vars['list']['endmonth']; ?>
月<?php else: ?>至今<?php endif; ?><span>|</span><?php echo $this->_vars['list']['agency']; ?>
<span>|</span><?php echo $this->_vars['list']['course']; ?>
</div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['language_list']): ?>
			<div class="resume-title">语言能力</div>
			<div class="resume-block-detail">
				<?php if (count((array)$this->_vars['show']['language_list'])): foreach ((array)$this->_vars['show']['language_list'] as $this->_vars['list']): ?>
				<div class="rb-content"><?php echo $this->_vars['list']['language_cn']; ?>
<span>|</span><?php echo $this->_vars['list']['level_cn']; ?>
</div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['credent_list']): ?>
			<div class="resume-title">获得证书</div>
			<div class="resume-block-detail">
				<?php if (count((array)$this->_vars['show']['credent_list'])): foreach ((array)$this->_vars['show']['credent_list'] as $this->_vars['list']): ?>
				<div class="rb-content"><?php echo $this->_vars['list']['name']; ?>
<span>|</span><?php echo $this->_vars['list']['year']; ?>
年<?php echo $this->_vars['list']['month']; ?>
月</div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_vars['show']['img_list']): ?>
			<div class="resume-title">附件</div>
			<div class="resume-block-detail clearfix">
				<?php if (count((array)$this->_vars['show']['img_list'])): foreach ((array)$this->_vars['show']['img_list'] as $this->_vars['list']): ?>
				<div class="folder-item f-left"><span><img src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/photo/<?php echo $this->_vars['list']['img']; ?>
" alt="<?php echo $this->_vars['list']['title']; ?>
" /></span></div>
				<?php endforeach; endif; ?>
			</div>
			<?php endif; ?>
		</div>
		<div class="fix-control">
			<div class="fix-wrap">
				<div class="code-box"><img src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['QISHI']['wap_domain']; ?>
/resume-show.php?id=<?php echo $this->_vars['show']['id']; ?>
" alt="二维码" width="74" height="74" /></div>
				<div class="download"><?php if ($this->_vars['show']['isminesee'] != '1'):  if ($this->_vars['value'] == 2): ?><a href="javascript:;" class="download-btn">下载简历</a><?php endif;  else: ?><a href="javascript:;" pid="<?php echo $this->_vars['show']['id']; ?>
" class="download-btn tpl">更换模板</a><?php endif; ?></div>
				<div class="ctrl-text"></div>
				<div class="ctrl-bar">
					<?php if ($this->_vars['show']['isminesee'] != '1'): ?><a href="javascript:;" class="resume-ctrl add_resume_pool">加入人才库</a><?php endif; ?>
					<a href="javascript:window.print();" class="resume-ctrl">简历打印</a>
					
					<?php if ($this->_vars['show']['isminesee'] != '1'): ?><a href="javascript:;" class="resume-ctrl report_button" resume_id="<?php echo $_GET['id']; ?>
" fullname="<?php echo $this->_vars['show']['fullname']; ?>
" resume_addtime="<?php echo $this->_vars['show']['addtime']; ?>
">投诉简历</a><?php endif; ?>
					<?php if ($this->_vars['show']['isminesee'] == '1'): ?><a href="javascript:;" pid="<?php echo $this->_vars['show']['id']; ?>
" class="resume-ctrl resume_privacy">隐私设置</a><?php endif; ?>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		联系地址：<?php echo $this->_vars['QISHI']['address']; ?>
 联系电话：<?php echo $this->_vars['QISHI']['bootom_tel']; ?>
 网站备案：<?php echo $this->_vars['QISHI']['icp'];  echo $this->_vars['QISHI']['statistics']; ?>
 <br />
		<?php echo $this->_vars['QISHI']['bottom_other']; ?>
 <br />
		
	</div>
<div class="resume_foot">
<script type="text/javascript">
	$('.work-item:first').css({'margin-top':-10});
	$('.work-item:last').css({'border-bottom':0, 'padding-bottom':0});
	$('.folder-item:nth-child(2n)').css({'margin-right':0});
</script>
</body>
</html>