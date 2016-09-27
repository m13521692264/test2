<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 09:37 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<meta name="renderer" content="webkit"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
<title><?php echo $this->_vars['title']; ?>
</title>
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/user_common.css" />
<link rel="stylesheet" href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/user_company.css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.zclip.min.js" type="text/javascript"></script>
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
">会员中心</a> > 微信招聘</div>
	<div class="usermain">
		<div class="leftmenu com link_bk">
			<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("member_company/left.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
		</div>
		<div class="rightmain">
			<div class="bbox1">
				<div class="mobile-job">
					<h1>微信招聘</h1>
					<div class="mobile-job-block clearfix">
						<div class="code-item f-left">
							<div class="code"><img src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['w_url']; ?>
" alt="扫描二维码" width="120" height="120" /></div>
							<p class="clearfix"><a href="javascript:;" class="f-left underline showQScodeLink" id="showQScodeLink">查看链接</a><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['w_url']; ?>
&download=1" class="f-right underline">下载二维码</a></p>
						</div>
						<script type="text/javascript">
							$(".showQScodeLink").die().live('click', function() {
								var d = dialog({
								    content: $("#qshowaBox"),
								    quickClose: true,// 点击空白处快速关闭
								    width: '300px'
								});
								d.show(document.getElementById('showQScodeLink'));
								$('.qshowa').zclip({
									path: '<?php echo $this->_vars['QISHI']['site_template']; ?>
flash/ZeroClipboard.swf',
									copy: function(){
										return $('.qshowaBoxD').val();
									},
									afterCopy: function(){
										$('.qshowa').html('复制成功!');
									}
								});
							});
						</script>
						<div id="qshowaBox" style="display:none"><div><input class="qshowaBoxD" value="<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['w_url']; ?>
"></div><a href="javascript:;" class="qshowa">复制链接</a></div>
						<div class="mj-data f-left">
							<div class="f-left mj-data-item first"><div><?php echo $this->_vars['click']; ?>
</div><p>昨日访问</p></div>
							<div class="f-left mj-data-item"><div><?php echo $this->_vars['praise']; ?>
</div><p>昨日获得点赞</p></div>
						</div>
						<a href="?act=data_statistics" class="check-data f-left">查看效果数据</a>
					</div>
					<div class="mj-text-block">
						<div class="mj-text">
							<h3>什么是微信招聘</h3>
							<p>微信招聘是我们帮您生成的手机招聘页面，通过使用微信分享、线下海报张贴分享等方式让您获得成倍的招聘效果。微信招聘中调取了您最新的职位信息与您的企业资料，无需设置即可生成。职位调取会随您的更新而动态调整，从而显示最新的职位。</p>
						</div>
						<div class="mj-text">
							<h3>什么是点赞</h3>
							<p>在您的微信招聘主页最后一页有点赞按钮，您可以通过分享您的微信招聘主页让更多的求职者访问进而获得更多的点赞。</p>
						</div>
						<div class="mj-text">
							<h3>如何使用微信招聘</h3>
							<p>
								通过微信朋友圈分享 <br />
								第一步 填写企业资料发布职位 <br />
								第二步 微信扫描二维码 分享到朋友圈 <br />
								第三步 邀请更多人一起分享
							</p>
						</div>
						<div class="mj-text">
							<h3>张贴海报让更多人看到</h3>
							<p>下载微信招聘二维码，将二维码张贴到招聘海报上，让更多人通过扫描二维码访问您的微信招聘主页。</p>
						</div>
					</div>
				</div>
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