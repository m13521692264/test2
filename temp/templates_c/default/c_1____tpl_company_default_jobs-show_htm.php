<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_jobs_list.php'); $this->register_function("qishi_jobs_list", "tpl_function_qishi_jobs_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.cat.php'); $this->register_modifier("cat", "tpl_modifier_cat",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_company_show.php'); $this->register_function("qishi_company_show", "tpl_function_qishi_company_show",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_jobs_show.php'); $this->register_function("qishi_jobs_show", "tpl_function_qishi_jobs_show",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 18:03 CST */  echo tpl_function_qishi_jobs_show(array('set' => "列表名:show,职位ID:GET[id]"), $this); echo tpl_function_qishi_company_show(array('set' => $this->_run_modifier("列表名:company,企业ID:", 'cat', 'plugin', 1, $this->_vars['show']['company_id'])), $this);?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<title><?php echo $this->_vars['show']['jobs_name']; ?>
 - <?php echo $this->_vars['show']['companyname']; ?>
 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<meta name="description" content="<?php echo $this->_vars['show']['companyname']; ?>
公司招聘岗位,<?php echo $this->_vars['show']['jobs_name']; ?>
">
<meta name="keywords" content="<?php echo $this->_vars['show']['companyname']; ?>
,<?php echo $this->_vars['show']['jobs_name']; ?>
,<?php echo $this->_vars['show']['nature_cn']; ?>
,<?php echo $this->_vars['show']['category_cn']; ?>
,<?php echo $this->_vars['show']['trade_cn']; ?>
,<?php echo $this->_vars['show']['district_cn']; ?>
">
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
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js"></script>
<script src="<?php echo $this->_vars['user_tpl']; ?>
js/simplefoucs.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo $this->_vars['QISHI']['map_ak']; ?>
"></script>
<SCRIPT TYPE="text/javascript">
$(document).ready(function(){
	$.ajaxSetup ({
		cache: false //关闭AJAX相应的缓存
	});
	var id="<?php echo $this->_vars['show']['id']; ?>
";
	var company_id="<?php echo $this->_vars['show']['company_id']; ?>
";
	var tsTimeStamp= new Date().getTime();
	$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_click.php", { "id": id,"time":tsTimeStamp,"act":"jobs_click"},
		function (data,textStatus)
		 {			
			$(".click").html(data);
		 }
	);
	/* 联系方式 */
	$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_contact.php", { "id": id,"time":tsTimeStamp,"act":"jobs_contact"},
		function (data,textStatus)
		 {			
			$("#jobs_contact").html(data);
		 }
	);
	$("#tel_show_pic").live('click',function()
	{
		$.get("<?php echo $this->_vars['QISHI']['site_dir']; ?>
plus/ajax_contact.php", { "id": id,"time":tsTimeStamp,"hashstr":"<?php echo $this->_vars['hashstr']; ?>
","act":"jobs_contact"},
			function (data,textStatus)
			 {			
				$("#jobs_contact").html(data);
			 	$("#show_detail").show();
			 	$("#tel_show_pic").remove();
			 }
		);
	});
	// 点击查看大图
	$(".img_big_show").click(function() {
		dialog({
			title: '企业风采',
		    content: $("#focus")
		}).showModal();
	});
	//收藏职位
	favoritesJob_dialog('.add_favorites','<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_favorites_job.php?id=<?php echo $this->_vars['show']['id']; ?>
&act=add');
	//申请职位
	applyJob_dialog(".app_jobs","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs.php","1");
	//举报信息
	reportJob_dialog(".report_button","<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_report.php");
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
" class="c-control-item f-left ">新闻动态</a>
						<a href="<?php echo $this->_run_modifier($this->_run_modifier($this->_run_modifier($this->_run_modifier("QS_companycomment,id:", 'cat', 'plugin', 1, $this->_vars['company']['id']), 'cat', 'plugin', 1, "-style:"), 'cat', 'plugin', 1, $_GET['style']), 'qishi_url', 'plugin', 1); ?>
" class="c-control-item f-left">评论</a>
					</div>
					<!-- 职位详情 -->
					<div class="job-main">
						<div class="job-top">
							<h3 class="job-name"><?php echo $this->_vars['show']['jobs_name']; ?>
</h3>
							<div class="job-company clearfix"><a href="<?php echo $this->_vars['show']['company_url']; ?>
" class="f-left"><?php echo $this->_vars['show']['companyname']; ?>
</a></div>
							<div class="job-watch-info clearfix">
								<div class="add-time f-left">更新时间：<?php echo $this->_run_modifier($this->_vars['show']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</div>
								<div class="watch f-left">浏览<span><em class="times click"></em></span>次</div>
								<div class="resumes-man f-left"><span><?php echo $this->_vars['show']['countresume']; ?>
</span>人投递简历</div>
							</div>
							<?php if ($this->_vars['show']['tag_cn']): ?>
							<div class="welfare-box clearfix">
								<?php if (count((array)$this->_vars['show']['tag_cn'])): foreach ((array)$this->_vars['show']['tag_cn'] as $this->_vars['tagli']): ?>
								<div class="welfare-block f-left"><?php echo $this->_vars['tagli']; ?>
</div>
								<?php endforeach; endif; ?>
							</div></br>
							<?php endif; ?>
							<?php if ($this->_vars['show']['jobspecial_cn']): ?>
							<div class="welfare-box clearfix">
								<?php if (count((array)$this->_vars['show']['jobspecial_cn'])): foreach ((array)$this->_vars['show']['jobspecial_cn'] as $this->_vars['jobspecial_cnli']): ?>
								<div class="welfare-block f-left"><?php echo $this->_vars['jobspecial_cnli']; ?>
</div>
								<?php endforeach; endif; ?>
							</div>
							<?php endif; ?>
							<!-- 过期图标  申请 收藏-->
							<div class="app-job-item clearfix">
								<?php if ($this->_vars['show']['jobs_gq'] == 1): ?>
								<img src="<?php echo $this->_vars['QISHI']['site_template']; ?>
images/job_gq.gif" />
								<?php elseif ($this->_vars['show']['jobs_gq'] == 2): ?>
								<img src="<?php echo $this->_vars['QISHI']['site_template']; ?>
images/job_sx.gif" />
								<?php else: ?>
								<div class="apply-btn f-left"><a href="javascript:;" class="app-button app_jobs" style="display: block;line-height:34px;text-align: center;" jobs_id="<?php echo $this->_vars['show']['id']; ?>
">申请职位</a></div>
								<a href="javascript:;" class="collect <?php if ($this->_vars['show']['check_fav'] == '1'): ?>done<?php endif; ?> f-left add_favorites">收藏</a>
								<?php endif; ?>
							</div>
						</div>
						<div class="job-block">
							<h3 class="c-left-title">职位信息</h3>
							<div class="job-info-detail clearfix">
								<div class="job-id-item f-left">工资待遇：<span><?php echo $this->_vars['show']['wage_cn']; ?>
 <?php if ($this->_vars['show']['negotiable'] == 1): ?>(可面议)<?php else:  endif; ?></span></div>
								<div class="job-id-item f-left">职位性质：<?php echo $this->_vars['show']['nature_cn']; ?>
</div>
								<div class="job-id-item f-left">年龄要求：<?php if ($this->_vars['show']['age'] == "-"): ?>不限<?php else:  echo $this->_vars['show']['age']; ?>
岁<?php endif; ?></div>
								<div class="job-id-item f-left">招聘人数：<?php echo $this->_vars['show']['amount']; ?>
人</div>
								<div class="job-id-item f-left">职位类别：<?php echo $this->_vars['show']['category_cn']; ?>
</div>
								<div class="job-id-item f-left">性别要求：<?php echo $this->_vars['show']['sex_cn']; ?>
</div>
								<div class="job-id-item f-left">发布城市：<?php echo $this->_vars['show']['district_ch'];  if ($this->_vars['show']['sdistrict_ch']): ?>-<?php echo $this->_vars['show']['sdistrict_ch'];  endif; ?></div>
								<div class="job-id-item f-left">工作地区：<?php if ($this->_vars['show']['category_cns']):  echo $this->_vars['show']['category_cns'];  endif; ?></div>
								<div class="job-id-item f-left">开始上班：<?php if ($this->_vars['show']['work_start']):  echo $this->_run_modifier($this->_vars['show']['work_start'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M");  endif; ?></div>
								<div class="job-id-item f-left">上班结束：<?php if ($this->_vars['show']['work_end']):  echo $this->_run_modifier($this->_vars['show']['work_end'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M");  endif; ?></div>
								<div class="job-id-item f-left">学历要求：<?php echo $this->_vars['show']['education_cn']; ?>
</div>
								<div class="job-id-item f-left">工作经验：<?php if ($this->_vars['show']['experience_cn']):  echo $this->_vars['show']['experience_cn'];  else: ?>不限<?php endif; ?>&nbsp;<?php if ($this->_vars['show']['graduate'] == "1"): ?>(应届生亦可)<?php endif; ?></div>
							</div>
						</div>
						<div class="job-block">
							<h3 class="c-left-title">职位描述</h3>
							<div class="job-info-content clearfix">
								<?php echo $this->_vars['show']['contents']; ?>

							</div>
						</div>
						<div class="job-block">
							<h3 class="c-left-title">联系方式</h3>
							<div class="com-contact">
								<div id="jobs_contact"></div>
								<?php if ($this->_vars['company']['map_open'] == "1" && $this->_vars['company']['map_x'] && $this->_vars['company']['map_y']): ?>
								<div class="contact-map">
									<style>
										.map_l{width:726px;float: left;}
										.map_r{width:80px;float: right;padding-left: 20px;}
										.map_r li{margin:5px 0;}
										.map_r li label input {vertical-align:middle;}
										.map_bottom {margin:10px 0;}
										.map_bottom h4{display: inline-block;margin-right: 10px;}
										.map_bottom span {display: inline-block;margin-right: 10px;}
										.map_bottom .addr_inpt{width:180px;}
										.map_bottom span .bus_submit{cursor: pointer;margin-left:5px;}
									</style>
									<div class="company_map">
										<div class="map_l">
											<div style="width:100%;height:300px;border:1px #CCCCCC solid; margin:0 auto;" id="map"></div>
										</div>
										<div class="map_r">
											<b>周边查询</b>
											<ul>
												<li>
													<label for="hotel"><input type="checkbox" value="酒店" id="hotel"  class="serch"/>&nbsp;酒店</label>
												</li>
												<li>
													<label for="catering"><input type="checkbox" value="餐饮" id="catering"  class="serch"/>&nbsp;餐饮</label>
												</li>
												<li>
													<label for="supermarket"><input type="checkbox" value="超市" id="supermarket" class="serch"/>&nbsp;超市</label>
												</li>
												<li>
													<label for="bank"><input type="checkbox" value="银行" id="bank" class="serch"/>&nbsp;银行</label>
												</li>
												<li>
													<label for="hospital"><input type="checkbox" value="医院" id="hospital" class="serch"/>&nbsp;医院</label>
												</li>
												<li>
													<label for="scholl"><input type="checkbox" value="学校" id="scholl" class="serch"/>&nbsp;学校</label>
												</li>
												<li>
													<label for="bus"><input type="checkbox" value="公交" id="bus" class="serch"/>&nbsp;公交</label>
												</li>
											</ul>
										</div>
										<div class="clear"></div>
										<div class="map_bottom">
											<h4>线路查询</h4>
											<span>起点：<input type="text" name="start" value="" class="addr_inpt"/></span>
											<span>终点：<input type="text" name="end" value="<?php echo $this->_vars['company']['address']; ?>
" class="addr_inpt" readonly/></span>
											<span><input type="button" value="公交查询" class="bus_submit"/></span>
										</div>
										<div id="r-result" style="margin-bottom: 10px;"></div>
									</div>
									<script type="text/javascript">
										var map = new BMap.Map("map");
										var point = new BMap.Point(<?php echo $this->_vars['company']['map_x']; ?>
, <?php echo $this->_vars['company']['map_y']; ?>
);
										map.centerAndZoom(point, <?php echo $this->_vars['company']['map_zoom']; ?>
);
										map.setZoom(<?php echo $this->_vars['QISHI']['map_zoom']; ?>
);
										var opts = {type: BMAP_NAVIGATION_CONTROL_SMALL,anchor: BMAP_ANCHOR_TOP_RIGHT}
										map.addControl(new BMap.NavigationControl(opts)); //添加鱼骨
										// 创建标注
										var qs_marker = new BMap.Marker(point);           
										map.addOverlay(qs_marker);
										// 关键字检索
										$(".serch").click(function(){
											var search_key = "["+getSelectVal()+"]";
											if(search_key=="[]"){
											map.centerAndZoom(point, <?php echo $this->_vars['company']['map_zoom']; ?>
);
											}else{
											map.centerAndZoom(new BMap.Point(<?php echo $this->_vars['company']['map_x']; ?>
, <?php echo $this->_vars['company']['map_y']; ?>
),11);
											var local = new BMap.LocalSearch(map, {
											renderOptions:{map: map},
											pageCapacity:5
											});
											local.searchInBounds(search_key, map.getBounds());
											}
										});
										// 获取 关键字方法
										function getSelectVal() {
											var a_cn = new Array();
											$(":checkbox[checked][class='serch']").each(function(index, el) {
											var checkText = $(this).val();
											a_cn[index]='"'+checkText+'"';
											});
											return a_cn.join(",");
										}
										// 公交查询
										$(".bus_submit").click(function() {
											var start =$("input[name=start]").val();
											var end =$("input[name=end]").val();
											if(start!="" && end!=""){
											var transit = new BMap.TransitRoute(map, {
											renderOptions: {map: map, panel: "r-result"}
											});
											transit.search(""+start+"", ""+end+"");
											}else{
											alert("输入起点！");
											}
										});
									</script>
								</div>
								<?php endif; ?>
								<div class="job-warning">提示：在应聘过程中用人单位以任何名义向应聘者收取费用都属于违法内容！</div>
								<div class="job-bottom-share clearfix">
									<div class="share-box f-right">
										<div class="jubao"><a class="report_button" href="javascript:void(0);" jobs_id="<?php echo $_GET['id']; ?>
" jobs_name="<?php echo $this->_vars['show']['jobs_name']; ?>
" jobs_addtime="<?php echo $this->_vars['show']['addtime']; ?>
">举报</a></div>
										<div class="share-item clearfix">
											<span class="f-left">分享到</span>
											<div class="bdsharebuttonbox f-left">
												<a href="#" class="bds_more" data-cmd="more"></a>
												<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
												<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
												<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
												<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
												<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
											</div>
											<script>
												window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 薪酬统计 -->
						<div class="com-left-block">
						<div class="salary">
							<div class="salary_box">
								<h3 class="c-left-title">薪酬概况</h3>
								<div class="s_content">
									<div class="salary_left">
										<div><?php echo $this->_vars['show']['jobs_name']; ?>
</div>
										<p><?php echo $this->_vars['show']['district_ch'];  if ($this->_vars['show']['sdistrict_ch']): ?> - <?php echo $this->_vars['show']['sdistrict_ch'];  endif; ?></p>
										<p>平均收入：约 <span><?php echo $this->_vars['show']['salary']['value']; ?>
</span> 元</p>
									</div>
									<div class="salary_right">
										<div class="value">
											<div class="blue_bar" style="width: <?php echo $this->_vars['show']['salary']['px']; ?>
;"></div>
											<div class="number"><?php echo $this->_vars['show']['salary']['value']; ?>
</div>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="salary_bot">
									<div class="tip">该数据为平均值。取自本站所有数据样本，仅供参考。</div>
									<div class="data">截至：<?php echo $this->_run_modifier(time(), 'date_format', 'plugin', 1, '%Y-%m-%d'); ?>
</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
						</div>
						<!-- 薪酬统计 结束 -->
						<div class="com-left-block">
						<h3 class="c-left-title">其他职位</h3>
						<div class="company-jobs-list clearfix">
							<?php echo tpl_function_qishi_jobs_list(array('set' => $this->_run_modifier("列表名:jobs,填补字符:...,职位名长度:14,显示数目:8,风格模板:" . $_GET['style'] . ",会员UID:", 'cat', 'plugin', 1, $this->_vars['show']['uid'])), $this);?>
			  				<?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['list']): ?>
							<div class="c-jobs-item f-left">
								<div class="job-name"><a href="<?php echo $this->_vars['list']['jobs_url']; ?>
" target="_blank"><?php echo $this->_vars['list']['jobs_name']; ?>
</a></div>
								<div class="job-info"><span><?php echo $this->_vars['list']['education_cn']; ?>
</span> | <span><?php echo $this->_vars['list']['experience_cn']; ?>
</span> | <span><?php if ($this->_vars['list']['age'] == "-"): ?>不限<?php else:  echo $this->_vars['list']['age']; ?>
岁<?php endif; ?></span></div>
								<div class="job-pay"><?php echo $this->_vars['list']['wage_cn']; ?>
</div>
								<div class="job-area"><?php echo $this->_vars['list']['district_cn']; ?>
</div>
							</div>
							<?php endforeach; endif; ?>
						</div>
						<div class="job-all clearfix"><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
jobs/jobs-list.php" class="f-right">全部职位>></a></div>
					</div>
					</div>
				</div>
			</div>
			<!-- 右边 -->
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
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/login.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/cache_classify.js" type='text/javascript' charset="utf-8"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.ajax.personal.selectlayer.js" type='text/javascript' language="javascript"></script>
<script type="text/javascript">
	/*
		快速创建 简历 js start
	*/
	$("form[id=creat_form]").submit(function(e) {
	e.preventDefault();
		// 姓名
		if ($("#fullname").val()=="")
		{			
			$(".quick-error").html("请填写姓名！");	
			$(".quick-error").show();
			return false;
		}
		// 最高学历 
		if($("#education").val()=="")
		{	
			$(".quick-error").html("请选择最高学历！");	
			$(".quick-error").show();
			return false;
		}
		//工作经验
		if($("#experience").val()=="")
		{
			$(".quick-error").html("请选择工作经验！");	
			$(".quick-error").show();
			return false;
		}
		// 期望职位
		if($("#intention_jobs").val()=="")
		{
			$(".quick-error").html("请选择期望职位！");	
			$(".quick-error").show();
			return false;
		}
		// 期望行业
		if($("#trade").val()=="")
		{
			$(".quick-error").html("请选择期望行业！");	
			$(".quick-error").show();
			return false;
		}
		// 期望地区
		if($("#district").val()=="")
		{
			$(".quick-error").html("请选择期望地区！");	
			$(".quick-error").show();
			return false;
		}
		// 期望薪资
		if($("#wage").val()=="")
		{
			$(".quick-error").html("请选择期望薪资！");	
			$(".quick-error").show();
			return false;
		}
		// 手机号
		if($("#telephone").val()=="")
		{
			$(".quick-error").html("请填写手机号！");	
			$(".quick-error").show();
			return false;
		}
		$("#telephone").change(function(event) {
			var mobile= $(this).val();
			$.post("<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs_creat_resume.php",{'mobile':mobile,"act":"check_mobile"}, function(data, textStatus, xhr) {
				if(data!="ok")
				{
					$(".quick-error").html(data);	
					$(".quick-error").show();
					return false;
				}
			});
		});
		// 手机验证码
		if($("#telephone_code").val()=="")
		{
			$(".quick-error").html("请填写手机验证码！");	
			$(".quick-error").show();
			return false;
		}
		$("#telephone_code").change(function(event) {
			var mobile =$("#telephone").val();
			var code = $(this).val();
			$.post("<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs_creat_resume.php",{'mobile':mobile,'code':code,"act":"check_code"}, function(data, textStatus, xhr) {
				if(data!="ok")
				{
					$(".quick-error").html(data);	
					$(".quick-error").show();
					return false;
				}
			});
		});
		//目前状态 
		if($("#current").val()=="")
		{
			$(".quick-error").html("请选择目前状态！");	
			$(".quick-error").show();
			return false;
		}
		$(".quick-error").hide();
		$(".quick-submit-btn").val("正在提交");
		var fullname =$("#fullname").val();
		var sex =$("input[name=sex]").val();
		var sex_cn =$("input[name=sex]").attr('data');
		var education =$("#education").val();
		var education_cn =$("#education").attr('data');
		var experience =$("#experience").val();
		var experience_cn =$("#experience").attr('data');
		var intention_jobs =$("#intention_jobs").val();
		var intention_jobs_id =$("#intention_jobs_id").val();
		var district =$("#district").val();
		var district_cn =$("#district_cn").val();
		var wage =$("#wage").val();
		var wage_cn =$("#wage").attr('data');
		var telephone =$("#telephone").val();
		var current =$("#current").val();
		var current_cn =$("#current").attr('data');
		var jobsid= $("#jobsid").val();
		$.post("<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs_creat_resume.php", {'fullname':fullname,'sex':sex,'sex_cn':sex_cn,'education':education,'education_cn':education_cn,'experience':experience,'intention_jobs':intention_jobs,'intention_jobs_id':intention_jobs_id,'district':district,'district_cn':district_cn,'wage':wage,'wage_cn':wage_cn,'telephone':telephone,'current':current,'current_cn':current_cn,'jobsid':jobsid,'act':'create_resume'},
		 	function (data,textStatus)
		 	 {
		 	 	alert(data);
		 	 	window.location.reload();
		 	 })		
	});
	// 发送短信
	$('#codeBtn').on('click', function() {
		// 发送短信
		var mobile =$("#telephone").val();
		$.post("<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_apply_jobs_creat_resume.php",{'mobile':mobile,"act":"send_code"}, function(data, textStatus, xhr) {
			if(data!="ok")
			{
				$(".quick-error").html(data);	
				$(".quick-error").show();
				return false;
			}
			else
			{
				showTime(100);
			}
		});
	});
	// 下拉选择
	$('.quick-drop').on('click', function(e) {
		$(this).find('.quick-drop-list').slideToggle('fast');
		$(this).toggleClass('has-drop');
		$(document).one('click', function() {
			$('.quick-drop-list').stop().slideUp('fast');
			$('.quick-drop').removeClass('has-drop');
		})
		e.stopPropagation();
		$(".quick-drop").not($(this)).removeClass('has-drop').find('.quick-drop-list').hide();
	});
	$('.quick-drop-list').on('click', function(e) {
		e.stopPropagation();
	})
	$('.quick-drop-list a').on('click', function() {
		$(this).parents('.quick-drop-list').prevUntil().find('span').css('color', '#666').text($(this).html());
		$(this).parents('.quick-drop-list').hide().prev('input').val($(this).attr('id'));
		$(this).parents('.quick-drop-list').hide().prev('input').attr('data', $(this).attr('title'));
		$('.quick-drop').removeClass('has-drop');
	})

  // 用户登录
  $(".quick-login").live('click',function(){

    jQuery.ajax({
        url: '<?php echo $this->_vars['QISHI']['site_dir']; ?>
user/user_ajax_login.php',
        success: function (data) {
          $(".quick-reg-dialog").html(data);
        }
    });
  });
	function updateP(num, time) {
		if(num == time) {
			$('#codeBtn').val('重新发送').prop('disabled', false).removeClass('disabled');
		}else{
			var printnr = time - num;
			$('#codeBtn').val(printnr +"秒重新发送");
		}
	}
	function showTime(time){
		$('#codeBtn').prop('disabled', true).addClass('disabled');

		for (var i = 0; i <= time; i++) {
			window.setTimeout("updateP("+ i +","+time+")", i*1000);
		};
	};
</script>