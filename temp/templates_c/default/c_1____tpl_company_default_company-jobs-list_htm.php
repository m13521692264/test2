<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_jobs_list.php'); $this->register_function("qishi_jobs_list", "tpl_function_qishi_jobs_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.cat.php'); $this->register_modifier("cat", "tpl_modifier_cat",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_company_show.php'); $this->register_function("qishi_company_show", "tpl_function_qishi_company_show",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 18:21 CST */  echo tpl_function_qishi_company_show(array('set' => "列表名:company,企业ID:GET[id]"), $this);?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<title><?php echo $this->_vars['company']['companyname']; ?>
 - 职位列表 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<meta name="description" content="<?php echo $this->_vars['company']['contents']; ?>
,职位列表">
<meta name="keywords" content="<?php echo $this->_vars['company']['companyname']; ?>
,职位列表">
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/common.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['user_tpl']; ?>
css/css.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['user_tpl']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />	
<script src="<?php echo $this->_vars['user_tpl']; ?>
js/jquery.js"></script>
<script src="<?php echo $this->_vars['user_tpl']; ?>
js/dialog-min.js"></script>
<script src="<?php echo $this->_vars['user_tpl']; ?>
js/simplefoucs.js" type="text/javascript"></script>
<SCRIPT TYPE="text/javascript">
$(document).ready(function(){
	// 点击查看大图
	$(".img_big_show").click(function() {
		dialog({
			title: '企业风采',
		    content: $("#focus"),
		}).showModal();
	});
	// 申请职位 
	$(".app_jobs").click(function(){
		var id=$(this).attr("id");
		var myDialog = dialog();// 初始化一个带有loading图标的空对话框
		jQuery.ajax({
		    url: '<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs.php?id='+id+'&act=app',
		    success: function (data) {
		        myDialog.content(data);// 填充对话框内容
		        myDialog.title('申请职位');// 填充对话框内容
		    	myDialog.showModal();
		    }
		});
	});	
});
</SCRIPT>
</head>
<body>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
	<!-- 当前位置 -->
	<div class="page_location link_bk">
		当前位置：<a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
">首页</a>><a href="<?php echo $this->_run_modifier("QS_jobs", 'qishi_url', 'plugin', 1); ?>
">招聘信息</a>><?php echo $this->_vars['company']['companyname']; ?>

	</div>
	<!-- 主体内容 -->
	<div class="container">
		<div class="company-wrap clearfix">
			<!-- 左边 -->
			<div class="com-left">
				<div class="compnay-main">
					<div class="c-top-wrap clearfix">
						<div class="c-logo f-left"><img src="<?php echo $this->_vars['company']['logo']; ?>
" alt="公司logo" width="198" height="68" /></div>
						<div class="c-name f-left">
							<h2><?php echo $this->_vars['company']['companyname']; ?>

								<?php if ($this->_vars['company']['audit'] == "1"): ?>
									<img title="企业已认证" src="<?php echo $this->_vars['QISHI']['site_template']; ?>
images/yesyan.jpg" border="0" />
								<?php else: ?>
									<img title="企业未认证" src="<?php echo $this->_vars['QISHI']['site_template']; ?>
images/noyan.jpg" border="0" />
								<?php endif; ?>
								<?php if ($this->_vars['company']['pay_user'] > 1): ?>
									<img title="" src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/setmealimg/<?php echo $this->_vars['company']['pay_user']; ?>
.gif" border="0" width='14px' height="17px"/>
								<?php endif; ?>
							</h2>
							<p><?php echo $this->_vars['company']['address']; ?>
</p>
						</div>
					</div>
					<div class="company-control clearfix">
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companyshow,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left">企业主页</a>
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companyinfo,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left">公司介绍</a>
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companyjobs,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left active">招聘职位</a>
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companynews,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left">新闻动态</a>
						<?php if ($this->_vars['QISHI']['open_commentaudit'] == "1"): ?>
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companycomment,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left">评论</a>
						<?php endif; ?>
					</div>
					<!-- 职位列表 -->
					<div class="jobs-list-block">
						<div class="list-title">共有 <span><?php echo $this->_vars['company']['jobs_num']; ?>
</span> 个职位正在招聘中</div>
						<?php echo tpl_function_qishi_jobs_list(array('set' => $this->_run_modifier("列表名:jobs,填补字符:...,职位名长度:10,分页显示:1,显示数目:5,列表页:QS_companyjobs,描述长度:200,风格模板:" . $_GET['style'] . ",会员UID:", 'cat', 'plugin', 1, $this->_vars['company']['uid'])), $this);?>
						<?php if ($this->_vars['jobs']): ?>
						<?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['list']): ?>
						<div class="jobs-item">
							<div class="jitem-main clearfix">
								<div class="jitem-left f-left">
									<div class="job-name">
										<a href="<?php echo $this->_vars['list']['jobs_url']; ?>
" title="<?php echo $this->_vars['list']['jobs_name_']; ?>
"><?php echo $this->_vars['list']['jobs_name']; ?>
</a><span class="reflash-time">更新时间：<?php echo $this->_run_modifier($this->_vars['list']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d"); ?>
</span>
									</div>
									<div class="jitem-info"><span><?php echo $this->_vars['list']['education_cn']; ?>
</span> | <span><?php echo $this->_vars['list']['experience_cn']; ?>
</span> | <span><?php echo $this->_vars['list']['district_cn']; ?>
</span> | <span><em><?php echo $this->_vars['list']['wage_cn']; ?>
</em></span></div>
								</div>
								<div class="jitem-app-job f-right"><a href="javascript:void(0)" class="list-job-btn app_jobs" style="display: inline-block;text-align: center;line-height: 30px;" id="<?php echo $this->_vars['list']['id']; ?>
">申请职位</a></div>
							</div>
							<div class="jitem-content"><?php echo $this->_vars['list']['briefly']; ?>
<a href="<?php echo $this->_vars['list']['jobs_url']; ?>
">[查看详细]</a>
							</div>
						</div>
						<?php endforeach; endif; ?>
						<?php if ($this->_vars['page']): ?>
						<table border="0" align="center" cellpadding="0" cellspacing="0" class="link_bk">
						        	<tr>
						          		<td height="50" align="center"> <div class="page link_bk"><?php echo $this->_vars['page']; ?>
</div></td>
						          	</tr>
				      		</table>
						<?php endif; ?>
						<?php endif; ?>
					</div>
				</div>
			</div>
			<!-- 右边 -->
			<script type="text/javascript">
				$(".jitem-content a").hide();
				$(".jitem-content").each(function(index, el) {
					if ($(this).not("a").html().length >= 200) {
						$(this).find('a').show();
					}
				})
			</script>
			<div class="com-right">
				<div class="ring-group clearfix">
					<div class="ring-item f-left">
						<h4 class="resumes"><?php echo $this->_vars['company']['resume_processing']; ?>
%</h4>
						<p>简历处理率</p>
					</div>
					<div class="ring-item f-left">
						<h4 class="jobs"><?php echo $this->_vars['company']['jobs_num']; ?>
</h4>
						<p>在招职位</p>
					</div>
					<div class="ring-item f-left">
						<h4 class="interest"><?php echo $this->_vars['company']['resume_num']; ?>
</h4>
						<p>感兴趣简历</p>
					</div>
				</div>
				<div class="c-right-block">
					<h3 class="c-right-title">公司名片</h3>
					<ul class="company-info-list">
						<li>性质：<?php echo $this->_vars['company']['nature_cn']; ?>
</li>
						<li>行业：<?php echo $this->_vars['company']['trade_cn']; ?>
</li>
						<li>规模：<?php echo $this->_vars['company']['scale_cn']; ?>
</li>
						<li>地区：<?php echo $this->_vars['company']['district_cn']; ?>
</li>
						<?php if ($this->_vars['company']['website']): ?>
						<li>网址：<a target="_blank" href="<?php echo $this->_vars['company']['website']; ?>
" rel="nofollow"><?php echo $this->_vars['company']['website']; ?>
</a></li>
						<?php endif; ?>
					</ul>
				</div>
				<?php if ($this->_vars['company']['company_img_num'] > 0): ?>
				<div class="c-right-block">
					<h3 class="c-right-title">公司风采</h3>
					<div class="company-img">
						<div class="img-show img_big_show"><img src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/companyimg/thumb/<?php echo $this->_vars['company']['company_img']; ?>
"  width="140" height="104" /></div>
						<p>共<?php echo $this->_vars['company']['company_img_num']; ?>
张<a href="javascript:void(0)" class="img_big_show">[点击查看大图]</a></p>
					</div>
				</div>
				<?php endif; ?>
				<div class="c-right-block">
					<h3 class="c-right-title">手机浏览</h3>
					<div class="com-code">
						<!-- 个人版 
						<img src="<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['company']['company_url']; ?>
" alt="扫描二维码" width="100" height="100" /> -->
						<!-- 专业版 -->
						<img src="<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
plus/url_qrcode.php?url=<?php echo $this->_vars['QISHI']['site_domain'];  echo $this->_vars['QISHI']['site_dir']; ?>
m/m-wzp.php?company_id=<?php echo $this->_vars['company']['id']; ?>
" alt="扫描二维码" width="100" height="100" />
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
	<div id="focus" style="display: none;">
        <ul>
        	<?php if (count((array)$this->_vars['company']['company_img_big'])): foreach ((array)$this->_vars['company']['company_img_big'] as $this->_vars['val']): ?>
            <li><img src="<?php echo $this->_vars['val']; ?>
" width='600px' height='400px'/></li>
            <?php endforeach; endif; ?>
        </ul>
    </div>
</body>
</html>