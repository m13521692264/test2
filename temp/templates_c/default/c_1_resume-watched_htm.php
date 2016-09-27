<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_resume_list.php'); $this->register_function("qishi_resume_list", "tpl_function_qishi_resume_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 17:33 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<meta name="renderer" content="webkit"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
<title>浏览过的简历列表 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/common.css" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/resume.css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.resume-list.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.list-item-ctrl').each(function(){
			if ($(this).hasClass('ishow')) {
				$(this).parent().next().show();
			};
			$(this).on('click', function(){
				if ($(this).hasClass('ishow')) {
					$(this).removeClass('ishow');
					$(this).parent().next().hide();
					$('.infolist-row').removeClass('infolist-row').addClass('infolist-row');  //IE7 BUG Fix
				}else{
					$(this).addClass('ishow');
					$(this).parent().next().show();
					$('.infolist-row').removeClass('infolist-row').addClass('infolist-row');  //IE7 BUG Fix
				};
			});
		});
		$(".tab-list").die().live('click', function(event) {
			$(this).addClass('select');
			$(".tab-detail").removeClass('select');
			$('.list-item-ctrl').removeClass('ishow');
			$(".info-list-detail").hide();
			$('.infolist-row').removeClass('infolist-row').addClass('infolist-row');
		});
		$(".tab-detail").die().live('click', function(event) {
			$(this).addClass('select');
			$(".tab-list").removeClass('select');
			$('.list-item-ctrl').addClass('ishow');
			$(".info-list-detail").show();
			$('.infolist-row').removeClass('infolist-row').addClass('infolist-row');
		});
		//收藏简历
		allfavorites("<?php echo $this->_vars['QISHI']['site_dir']; ?>
");
		//下载简历
		$(".collect").click(function(){
			var id=$(this).attr("resume_id");
			var tsTimeStamp= new Date().getTime();
			var url_="<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_download_resume.php?id="+id+"&act=download&t="+tsTimeStamp;
			var myDialog = dialog();
			myDialog.title('下载联系方式');
			myDialog.content("加载中...");
			myDialog.width('500');
			myDialog.showModal();
			$.get(url_, function(data){
				myDialog.content(data);
				/* 关闭 */
				$(".DialogClose").live('click',function() {
					myDialog.close().remove();
				});
			});
		});
		$("#infolists .infolist-row:last").css("border-bottom","none");
	});
</script>
</head>
<body <?php if ($this->_vars['QISHI']['body_bgimg']): ?>style="background:url(<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
data/<?php echo $this->_vars['QISHI']['updir_images']; ?>
/<?php echo $this->_vars['QISHI']['body_bgimg']; ?>
) repeat-x center 38px;"<?php endif; ?>>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<div class="page_location link_bk">
当前位置：<a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
">首页</a>&nbsp;>&nbsp;<a href="<?php echo $this->_run_modifier("QS_resume", 'qishi_url', 'plugin', 1); ?>
">求职信息</a>
</div>
<div class="container">
	<div id="filterSearch">
		<div class="search-tab clearfix">
			<a href="<?php echo $this->_run_modifier("QS_resumelist", 'qishi_url', 'plugin', 1); ?>
" class="s-tab-item f-left">简历搜索</a>
			<a href="<?php echo $this->_run_modifier("QS_resumewatchedlist", 'qishi_url', 'plugin', 1); ?>
" class="s-tab-item f-left active">浏览过的简历</a>
		</div>
		<?php echo tpl_function_qishi_resume_list(array('set' => "列表名:resume,分页显示:1,显示数目:GET[inforow],特长描述长度:130,填补字符:...,列表页:QS_resumewatchedlist,浏览过的简历:1,排序:rtime>desc"), $this);?>
		<div class="infolists" id="infolists">
			<div class="infolists-head clearfix">
				<label class="f-left"><input type="checkbox" name="selectall" id="selectall" class="checkbox" />全选</label>
				<div class="all-ctrl f-left"><input type="button" value="收藏简历" class="all-down-btn allfavorites" /></div>
				<div class="list-tab f-right">
					<a href="javascript:;" class="tab-item tab-list select">列表</a>
					<a href="javascript:;" class="tab-item tab-detail">详细</a>
				</div>
			</div>
			<?php if ($this->_vars['resume']): ?>
			<div class="info-list-wrap">
				<?php if (count((array)$this->_vars['resume'])): foreach ((array)$this->_vars['resume'] as $this->_vars['list']): ?>
				<div class="infolist-row">
					<div class="info-list-block resume clearfix">
						<div class="list-item item1 f-left">
							<span><input type="checkbox" name="jid" value="<?php echo $this->_vars['list']['id']; ?>
" class="checkbox" /><a href="<?php echo $this->_vars['list']['resume_url']; ?>
" class="underline"><?php if ($this->_vars['list']['checked']): ?><font color='#800080'><?php echo $this->_vars['list']['fullname']; ?>
</font><?php else:  echo $this->_vars['list']['fullname'];  endif; ?></a></span>
							<?php if ($this->_vars['list']['photo'] == "1"): ?><i class="resume-auth pic" title="照片认证"></i><?php endif; ?>
							<?php if ($this->_vars['list']['is_audit_mobile'] == "1"): ?><i class="resume-auth phone" title="手机认证"></i><?php endif; ?>
						</div>
						<div class="list-item item2 f-left"><?php echo $this->_vars['list']['sex_cn']; ?>
</div>
						<div class="list-item item3 f-left"><?php echo $this->_vars['list']['age']; ?>
岁</div>
						<div class="list-item item4 f-left"><?php echo $this->_vars['list']['education_cn']; ?>
</div>
						<div class="list-item item5 f-left"><?php echo $this->_vars['list']['experience_cn']; ?>
</div>
						<div class="list-item item6 f-left"><?php echo $this->_vars['list']['district_cn']; ?>
</div>
						<div class="list-item item7 f-left" style="font-family:微软雅黑;"><?php echo $this->_vars['list']['wage_cn']; ?>
</div>
						<div class="list-item item8 f-left"><?php echo $this->_vars['list']['refreshtime_cn']; ?>
</div>
						<a href="javascript:;" class="list-item-ctrl f-left"></a>
					</div>
					<div class="info-list-detail clearfix">
						<div class="info-text f-left">
							<p>专业：<?php echo $this->_vars['list']['major_cn']; ?>
 | 期望工作性质：<?php echo $this->_vars['list']['nature_cn']; ?>
 | 目前求职状态：<?php echo $this->_vars['list']['current_cn']; ?>
</p>
							<div>期望从事行业：<?php echo $this->_vars['list']['trade_cn_']; ?>
 | 期望从事岗位：<?php echo $this->_vars['list']['intention_jobs_']; ?>
</div>
						</div>
						<div class="info-control f-left">
							<input resume_id="<?php echo $this->_vars['list']['id']; ?>
" type="button" value="下载简历" class="apply-job-btn collect" />	
							<p><a href="javascript:;" resume_id="<?php echo $this->_vars['list']['id']; ?>
" class="collect-btn add_favoritesr"></a></p>
						</div>
					</div>
				</div>
				<?php endforeach; endif; ?>
			</div>
			<div class="infolists-head clearfix" style="border-top:1px solid #cccccc;border-bottom:none;">
				<label class="f-left"><input type="checkbox" name="selectall" id="selectall" class="checkbox" />全选</label>
				<div class="all-ctrl f-left"><input type="button" value="收藏简历" class="all-down-btn allfavorites" /></div>
			</div>
			<?php if ($this->_vars['page']): ?>
			<table border="0" align="center" cellpadding="0" cellspacing="0" class="link_bk">
				<tr>
					<td height="50" align="center"> <div class="page link_bk"><?php echo $this->_vars['page']; ?>
</div></td>
				</tr>
			</table>
			<?php endif; ?>
			<?php else: ?>
			<div class="emptytip">抱歉，没有符合此条件的信息！</div>
			<?php endif; ?>
		</div>
	</div>
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>