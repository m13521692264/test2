<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_help_list.php'); $this->register_function("qishi_help_list", "tpl_function_qishi_help_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.escape.php'); $this->register_modifier("escape", "tpl_modifier_escape",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.cat.php'); $this->register_modifier("cat", "tpl_modifier_cat",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_help_category.php'); $this->register_function("qishi_help_category", "tpl_function_qishi_help_category",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 17:33 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<?php echo tpl_function_qishi_help_category(array('set' => "列表名:cat,名称长度:10,小类:GET[id]"), $this);?>
<title><?php echo $this->_vars['cat']['categoryname']; ?>
- 帮助 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<meta name="description" content="<?php echo $this->_vars['page']['description']; ?>
">
<meta name="keywords" content="<?php echo $this->_vars['page']['keywords']; ?>
">
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/common.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/help.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".nav_son").first().css("display","block");
	$(".help_nav").first().removeClass("t");
	$(".help_nav").first().addClass("s");
	$(".help_nav").click(function(){
		$(".help_nav").removeClass("s");
		$(".help_nav").addClass("t");
		$(".nav_son").slideUp("fast");
		$(this).removeClass("t");
		$(this).addClass("s");
		$(this).next(".nav_son").slideDown("fast");
	});
	$("#help_searcform #search_go").click(function()
	{
		if ($("#help_searcform #key").val()=="" || $("#key").val()=="请输入关键字...")
			{
				alert("请输入关键字");
				return false;
			}
	$("body").append('<div id="pageloadingbox">页面加载中....</div><div id="pageloadingbg"></div>');
	$("#pageloadingbg").css("opacity", 0.5);
	$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_search_location.php", {"act":"QS_helpsearch","key":$("#help_searcform #key").val(),"page":1},
			function (data,textStatus)
			 {
				 window.location.href=data;
			 }
		);
	});
	$("#help_searcform #key").focus(function(){
	if ($("#key").val()=="请输入关键字...")
	{
	$("#help_searcform #key").css('color','').val('');
	}  
	});
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
<!-- 当前位置 -->
<div class="page_location link_bk">
	当前位置：<a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
">首页</a>&nbsp;>&nbsp;<a href="<?php echo $this->_run_modifier("QS_help", 'qishi_url', 'plugin', 1); ?>
">帮助</a>&nbsp;>&nbsp;<a href="<?php echo $this->_vars['cat']['url']; ?>
"><?php echo $this->_vars['cat']['categoryname']; ?>
</a>
</div>
	<!-- 主体内容 -->
	<div class="container link_bk">
		<div class="about_left">
			<h2 class="about_tit">帮助中心</h2>
			<ul>
				<?php echo tpl_function_qishi_help_category(array('set' => "列表名:category,大类:0"), $this);?>
				<?php if (count((array)$this->_vars['category'])): foreach ((array)$this->_vars['category'] as $this->_vars['list']): ?>
				<li class="help_nav t"><a href="javascript:void(0);"><?php echo $this->_vars['list']['title']; ?>
</a></li>
				<ul class="nav_son" style="display:none;">
					<?php echo tpl_function_qishi_help_category(array('set' => $this->_run_modifier("列表名:sclass,大类:", 'cat', 'plugin', 1, $this->_vars['list']['id'])), $this);?>
					<?php if (count((array)$this->_vars['sclass'])): foreach ((array)$this->_vars['sclass'] as $this->_vars['slist']): ?>
					<li><a href="<?php echo $this->_vars['slist']['url']; ?>
"><?php echo $this->_vars['slist']['title']; ?>
</a></li>
					<?php endforeach; endif; ?>
					<!-- <li class="active"><a href="#">职位推广</a></li> -->
				</ul>
				<?php endforeach; endif; ?>
			</ul>
		</div>
		<div class="help_sreach clearfix" id="help_searcform">
			<div class="f-left"><input type="text" class="input_text_300" placeholder="请输入问题关键字" name="key" id="key" /></div>
			<div class="f-left"><input type="submit" value="搜索" class="but70lan" id="search_go" /></div>
			<div class="f-left hot-help">热门关键字：<a href="<?php echo $this->_run_modifier("QS_helpsearch", 'qishi_url', 'plugin', 1); ?>
?key=<?php echo $this->_run_modifier("找回密码", 'escape', 'plugin', 1, "url"); ?>
">找回密码</a><a href="<?php echo $this->_run_modifier("QS_helpsearch", 'qishi_url', 'plugin', 1); ?>
?key=<?php echo $this->_run_modifier("置顶", 'escape', 'plugin', 1, "url"); ?>
">置顶</a><a href="<?php echo $this->_run_modifier("QS_helpsearch", 'qishi_url', 'plugin', 1); ?>
?key=<?php echo $this->_run_modifier("推荐", 'escape', 'plugin', 1, "url"); ?>
">推荐</a><a href="<?php echo $this->_run_modifier("QS_helpsearch", 'qishi_url', 'plugin', 1); ?>
?key=<?php echo $this->_run_modifier("模版", 'escape', 'plugin', 1, "url"); ?>
">模版</a><a href="<?php echo $this->_run_modifier("QS_helpsearch", 'qishi_url', 'plugin', 1); ?>
?key=<?php echo $this->_run_modifier("电子地图", 'escape', 'plugin', 1, "url"); ?>
">电子地图</a></div>
		</div>
		<div class="about_right">
			
			<div class="about_r_tit">
				<?php echo $this->_vars['cat']['categoryname']; ?>

			</div>
			<div class="about_r_content">
				<ul>
					<?php echo tpl_function_qishi_help_list(array('set' => "列表名:help,显示数目:25,标题长度:45,填补字符:...,小类:GET[id],分页显示:1"), $this);?>
					<?php if (count((array)$this->_vars['help'])): foreach ((array)$this->_vars['help'] as $this->_vars['list']): ?>
					<li><a href="<?php echo $this->_vars['list']['url']; ?>
"  target="_blank"><?php echo $this->_vars['list']['title']; ?>
</a></li>
					<?php endforeach; else: ?>
					<li>没有相关信息！</li>
					<?php endif; ?>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- 主体内容 结束 -->
	<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>