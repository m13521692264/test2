<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_parse_url.php'); $this->register_modifier("qishi_parse_url", "tpl_modifier_qishi_parse_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_resume_list.php'); $this->register_function("qishi_resume_list", "tpl_function_qishi_resume_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_get_classify.php'); $this->register_function("qishi_get_classify", "tpl_function_qishi_get_classify",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.default.php'); $this->register_modifier("default", "tpl_modifier_default",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_pageinfo.php'); $this->register_function("qishi_pageinfo", "tpl_function_qishi_pageinfo",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_categoryname.php'); $this->register_modifier("qishi_categoryname", "tpl_modifier_qishi_categoryname",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.cat.php'); $this->register_modifier("cat", "tpl_modifier_cat",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 18:14 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><?php if ($_GET['jobcategory']):  echo $this->_run_modifier($this->_run_modifier("QS_jobs,jobcategory:", 'cat', 'plugin', 1, $_GET['jobcategory']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['trade']):  echo $this->_run_modifier($this->_run_modifier("QS_trade,trade:", 'cat', 'plugin', 1, $_GET['trade']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['citycategory']):  echo $this->_run_modifier($this->_run_modifier("QS_district,", 'cat', 'plugin', 1, $_GET['citycategory']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['experience']):  echo $this->_run_modifier($this->_run_modifier("QS_experience,", 'cat', 'plugin', 1, $_GET['experience']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['resumetag']):  echo $this->_run_modifier($this->_run_modifier("QS_resumetag,", 'cat', 'plugin', 1, $_GET['resumetag']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['education']):  echo $this->_run_modifier($this->_run_modifier("QS_education,", 'cat', 'plugin', 1, $_GET['education']), 'qishi_categoryname', 'plugin', 1); ?>
 - <?php endif;  if ($_GET['sex'] == "1"): ?>男 - <?php endif;  if ($_GET['sex'] == "2"): ?>女 - <?php endif;  if ($_GET['photo'] == "1"): ?>有照片 - <?php endif;  if ($_GET['photo'] == "0"): ?>无照片 - <?php endif;  if ($_GET['talent'] == "1"): ?>普通简历 - <?php endif;  if ($_GET['talent'] == "2"): ?>高级简历 - <?php endif;  if ($_GET['settr']):  echo $_GET['settr']; ?>
天内 - <?php endif; ?>简历列表  - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<?php echo tpl_function_qishi_pageinfo(array('set' => "列表名:page_info,调用:QS_resume"), $this);?>
<meta name="description" content="<?php echo $this->_vars['page_info']['description']; ?>
">
<meta name="keywords" content="<?php echo $this->_vars['page_info']['keywords']; ?>
">
<meta name="author" content="骑士CMS" />
<meta name="copyright" content="74cms.com" />
<meta name="renderer" content="webkit"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
favicon.ico" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/common.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/jobs.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/resume.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $this->_vars['QISHI']['site_template']; ?>
css/ui-dialog.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.resume-search.js" type='text/javascript'></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.resume-list.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js" type="text/javascript" language="javascript"></script>
<script src="<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/cache_classify.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.autocomplete.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		allaround("<?php echo $this->_vars['QISHI']['site_dir']; ?>
");
	    // 职位类别填充数据 
		job_filldata("#job_list", QS_jobs_parent, QS_jobs, "#result-list-job", "#aui_outer_job", "#job_result_show", "#jobcategory", "<?php echo $this->_vars['QISHI']['site_dir']; ?>
");
		// 所属行业填充数据
		trade_filldata("#trad_list", QS_trade, "#aui_outer", "#result-list-trade", "#trade_result_show", "#trade", "<?php echo $this->_vars['QISHI']['site_dir']; ?>
");
		// 专业类别填充数据
		major_filldata("#major_list", QS_major_parent, QS_major, "#major_tabnav", "#aui_outer_major", "#result-list-major", "#major_result_show", "#major", "<?php echo $this->_vars['QISHI']['site_dir']; ?>
");
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
" class="s-tab-item f-left active">简历搜索</a>
			<a href="<?php echo $this->_run_modifier("QS_resumewatchedlist", 'qishi_url', 'plugin', 1); ?>
" class="s-tab-item f-left">浏览过的简历</a>
		</div>
		<div class="top-search clearfix">
			<div class="t-search-box f-left">
				<div class="type-input-box f-left" id="hidden_input_box">
					<div class="key"><?php echo $this->_run_modifier($_GET['key'], 'default', 'plugin', 1, "请输入关键字"); ?>
</div>
					<input type="text" name="key" id="key" value="<?php echo $_GET['key']; ?>
" style="display:none;"/>
					<input name="jobcategory" id="jobcategory" type="hidden" value="<?php echo $_GET['jobcategory']; ?>
" />
					<input name="trade" id="trade" type="hidden" value="<?php echo $_GET['trade']; ?>
" />
					<input name="citycategory" id="citycategory" type="hidden" value="<?php echo $_GET['citycategory']; ?>
" data-code="<?php echo $this->_vars['QISHI']['districtid']; ?>
" />
					<input name="major" id="major" type="hidden" value="<?php echo $_GET['major']; ?>
" />
					<input name="experience" id="experience" type="hidden" value="<?php echo $_GET['experience']; ?>
"/>
					<input name="resumetag" id="resumetag" type="hidden" value="<?php echo $_GET['resumetag']; ?>
"/>
					<input name="education" id="education" type="hidden" value="<?php echo $_GET['education']; ?>
"/>
					<input name="sex" id="sex" type="hidden" value="<?php echo $_GET['sex']; ?>
"/>
					<input name="photo" id="photo" type="hidden" value="<?php echo $_GET['photo']; ?>
"/>
					<input name="talent" id="talent" type="hidden" value="<?php echo $_GET['talent']; ?>
"/>
					<input name="settr" id="settr" type="hidden" value="<?php echo $_GET['settr']; ?>
"/>
				</div>
			</div>
			<div class="t-search-btn f-left"><input type="button" detype="QS_resumelist" id="searcnbtn" value="搜&nbsp;索" /></div>
		</div>
		<div class="fliter-wrap">
			<div class="filter-drop clearfix">
				<div class="filter-item f-left">
					<div class="choose-item">
						<div class="choose-control">
							<span class="cc-default" id="job_result_show">选择意向职位</span><i class="choose-icon"></i>
							<!-- 职位类别弹出框 -->
							<div class="aui_outer" id="aui_outer_job">
								<table class="aui_border">
									<tbody>
										<tr>
											<td class="aui_c">
												<div class="aui_inner">
													<table class="aui_dialog">
														<tbody>
															<tr>
																<td class="aui_main">
																	<div class="aui_content" style="padding: 0px;">
																		<div class="LocalDataMultiC">
																			<div class="selector-header"><span class="selector-title">职位选择</span><div></div><span id="jb-selector-save" class="selector-save">确定</span><span class="selector-close">X</span><div class="clear"></div></div>

																			<div class="data-row-head"><div class="data-row"><div class="data-row-side">最多选 <strong class="text-warning">3</strong> 项&nbsp;&nbsp;已选 <strong id="ars" class="text-warning">0</strong> 项</div><div id="result-list-job" class="result-list data-row-side-ra"></div></div><div class="cla"></div></div>
																			<div class="data-row-list data-row-main" id="job_list">
																				<!-- 列表内容 -->
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 职位类别弹出框 End-->
						</div>
					</div>
				</div>
				<div class="filter-item f-left">
					<div class="choose-item">
						<div class="choose-control">
							<span class="cc-default" id="trade_result_show">选择意向行业</span><i class="choose-icon"></i>
							<!-- 所属行业弹出框 -->
							<div class="aui_outer" id="aui_outer">
								<table class="aui_border">
									<tbody>
										<tr>
											<td class="aui_c">
												<div class="aui_inner">
													<table class="aui_dialog">
														<tbody>
															<tr>
																<td class="aui_main">
																	<div class="aui_content">
																		<div class="items jquery-localdata">
																			<div class="selector-header"><span class="selector-title">行业选择</span><div></div><span id="tr-selector-save" class="selector-save">确定</span><span class="selector-close">X</span><div class="clear"></div></div>

																			<div class="data-row-head"><div class="data-row"><div class="data-row-side">最多选 <strong class="text-warning">3</strong> 项&nbsp;&nbsp;已选 <strong id="arstrade" class="text-warning">0</strong> 项</div><div id="result-list-trade" class="result-list data-row-side-ra"></div></div><div class="cla"></div></div>
																			<div class="item-table">
																				<table class="options-table options-table-7">
																					<tbody class="item-list"><tr><td class="bno"><table><tbody id="trad_list">
																						<!-- 列表内容 -->
																					</tbody></table></td></tr>
																					</tbody>
																				</table>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 所属行业弹出框 End-->
						</div>
					</div>
				</div>
				<div class="filter-item f-left">
					<div class="choose-item">
						<div class="choose-control">
							<span class="cc-default" id="major_result_show">选择专业类别</span><i class="choose-icon"></i>
							<!-- 专业类别弹出框 -->
							<div class="aui_outer" style="left:-445px;" id="aui_outer_major">
								<table class="aui_border">
									<tbody>
										<tr>
											<td class="aui_c">
												<div class="aui_inner">
													<table class="aui_dialog">
														<tbody>
															<tr>
																<td class="aui_main">
																	<div class="aui_content">
																		<div class="items jquery-localdata">
																			<div class="selector-header"><span class="selector-title">专业类别</span><div></div><span id="mj-selector-save" class="selector-save">确定</span><span class="selector-close">X</span><div class="clear"></div></div>

																			<div class="data-row-head"><div class="data-row"><div class="data-row-side">最多选 <strong class="text-warning">3</strong> 项&nbsp;&nbsp;已选 <strong id="arsmajor" class="text-warning">0</strong> 项</div><div id="result-list-major" class="result-list data-row-side-ra"></div></div><div class="cla"></div></div>
																			<ul class="tabnav" id="major_tabnav"></ul>

																			<div class="item-table majorbb">
																				<table class="options-table options-table-7">
																					<tbody class="item-list"><tr><td class="bno"><table id="major_list"></table></td></tr>
																					</tbody>
																				</table>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 专业类别弹出框 End-->
						</div>
					</div>
				</div>
			</div>
			<div id="subsiteBox" data-txt="意向地区,<?php if ($this->_vars['QISHI']['districtid']): ?>意向地区<?php else: ?>地区子类<?php endif; ?>"></div>
			<div class="filter-list-wrap clearfix">
				<div class="fl-type f-left">工作经验：</div>
				<div class="fl-content r-choice f-left">
					<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:experience,类型:QS_experience,显示数目:100"), $this);?>
					<?php if (count((array)$this->_vars['experience'])): foreach ((array)$this->_vars['experience'] as $this->_vars['list']): ?>
					<div class="fl-content-li<?php if ($this->_vars['list']['id'] == $_GET['experience']): ?> select<?php endif; ?>" type="experience" code="<?php echo $this->_vars['list']['id']; ?>
"><?php echo $this->_vars['list']['categoryname']; ?>
</div>
					<?php endforeach; endif; ?>
				</div>
			</div>
			<div class="filter-list-wrap clearfix">
				<div class="fl-type f-left">特长标签：</div>
				<div class="fl-content f-left forShowMore" id="fliterMore">
					<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:resumetag,类型:QS_resumetag,显示数目:100"), $this);?>
					<?php if (count((array)$this->_vars['resumetag'])): foreach ((array)$this->_vars['resumetag'] as $this->_vars['list']): ?>
					<div class="fl-content-li" type="resumetag" code="<?php echo $this->_vars['list']['id']; ?>
"><?php echo $this->_vars['list']['categoryname']; ?>
</div>
					<?php endforeach; endif; ?>
					<a href="javascript:;" class="show-more">展开</a>
				</div>
			</div>
			<div class="filter-list-wrap clearfix">
				<div class="fl-type f-left">更多筛选：</div>
				<div class="fl-content f-left">
					<div class="saixuan<?php if ($_GET['education']): ?> selected<?php endif; ?>">
						<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_education,类型:QS_education"), $this);?>
						<div class="saixuans">
							<div class="line"></div>
							<?php if (count((array)$this->_vars['c_education'])): foreach ((array)$this->_vars['c_education'] as $this->_vars['list']): ?>
							<a defvalue="<?php echo $this->_vars['list']['id']; ?>
"<?php if ($this->_vars['list']['id'] == $_GET['education']): ?> class="select"<?php endif; ?> type="education" href="javascript:;"><?php echo $this->_vars['list']['categoryname']; ?>
</a>
							<?php endforeach; endif; ?>
						</div>
						最高学历
					</div>
					<div class="saixuan<?php if ($_GET['sex']): ?> selected<?php endif; ?>">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1"<?php if ($_GET['sex'] == 1): ?> class="select"<?php endif; ?> type="sex" href="javascript:;">男</a>
							<a defvalue="2"<?php if ($_GET['sex'] == 2): ?> class="select"<?php endif; ?> type="sex" href="javascript:;">女</a>
						</div>
						性别要求
					</div>
					<div class="saixuan<?php if ($_GET['photo']): ?> selected<?php endif; ?>">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1"<?php if ($_GET['photo'] == 1): ?> class="select"<?php endif; ?> type="photo" href="javascript:;">有</a>
							<a defvalue="0"<?php if ($_GET['photo'] == 0): ?> class="select"<?php endif; ?> type="photo" href="javascript:;">无</a>
						</div>
						简历照片
					</div>
					<div class="saixuan<?php if ($_GET['talent']): ?> selected<?php endif; ?>">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1"<?php if ($_GET['talent'] == 1): ?> class="select"<?php endif; ?> type="talent" href="javascript:;">普通</a>
							<a defvalue="2"<?php if ($_GET['talent'] == 2): ?> class="select"<?php endif; ?> type="talent" href="javascript:;">高级</a>
						</div>
						简历等级
					</div>
					<div class="saixuan<?php if ($_GET['settr']): ?> selected<?php endif; ?>">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="3"<?php if ($_GET['settr'] == 3): ?> class="select"<?php endif; ?> type="settr" href="javascript:;">3天内</a>
							<a defvalue="7"<?php if ($_GET['settr'] == 7): ?> class="select"<?php endif; ?> type="settr" href="javascript:;">7天内</a>
							<a defvalue="15"<?php if ($_GET['settr'] == 15): ?> class="select"<?php endif; ?> type="settr" href="javascript:;">15天内</a>
							<a defvalue="30"<?php if ($_GET['settr'] == 30): ?> class="select"<?php endif; ?> type="settr" href="javascript:;">30天内</a>
						</div>
						更新时间
					</div>
				</div>
			</div>
		</div>
		<div class="fliter-result clearfix" id="has_result">
			<div class="fr-type f-left">已选条件：</div>
			<div class="fr-content f-left rl">
			<?php if ($_GET['key']): ?>
				<div class="has-select-item f-left" type="key"><?php echo $_GET['key']; ?>
<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['jobcategory']): ?>
				<div class="has-select-item f-left" type="jobcategory">意向职位<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['trade']): ?>
				<div class="has-select-item f-left" type="trade">意向行业<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['citycategory']): ?>
				<div class="has-select-item f-left" type="citycategory">意向地区<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['major']): ?>
				<div class="has-select-item f-left" type="major">专业类别<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['experience']): ?>
				<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_experience,类型:QS_experience"), $this);?>
				<?php if (count((array)$this->_vars['c_experience'])): foreach ((array)$this->_vars['c_experience'] as $this->_vars['list']): ?>
				<?php if ($this->_vars['list']['id'] == $_GET['experience']): ?>
					<div class="has-select-item f-left" type="experience"><?php echo $this->_vars['list']['categoryname']; ?>
<i class="fliter-clear-icon"></i></div>
				<?php endif; ?>
				<?php endforeach; endif; ?>
			<?php endif; ?>
			<?php if ($_GET['resumetag']): ?>
				<div class="has-select-item f-left" type="resumetag">特长标签<i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['education']): ?>
				<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_education,类型:QS_education"), $this);?>
				<?php if (count((array)$this->_vars['c_education'])): foreach ((array)$this->_vars['c_education'] as $this->_vars['list']): ?>
				<?php if ($this->_vars['list']['id'] == $_GET['education']): ?>
					<div class="has-select-item f-left" type="education"><?php echo $this->_vars['list']['categoryname']; ?>
<i class="fliter-clear-icon"></i></div>
				<?php endif; ?>
				<?php endforeach; endif; ?>
			<?php endif; ?>
			<?php if ($_GET['sex']): ?>
				<div class="has-select-item f-left" type="sex"><?php if ($_GET['sex'] == 1): ?>男<?php elseif ($_GET['sex'] == 2): ?>女<?php endif; ?><i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['photo']): ?>
				<div class="has-select-item f-left" type="photo"><?php if ($_GET['photo'] == 1): ?>有照片<?php elseif ($_GET['photo'] == 0): ?>无照片<?php endif; ?><i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['talent']): ?>
				<div class="has-select-item f-left" type="talent"><?php if ($_GET['talent'] == 1): ?>普通简历<?php elseif ($_GET['talent'] == 2): ?>高级简历<?php endif; ?><i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			<?php if ($_GET['settr']): ?>
				<div class="has-select-item f-left" type="settr"><?php if ($_GET['settr'] == 3): ?>3天内<?php elseif ($_GET['settr'] == 7): ?>7天内<?php elseif ($_GET['settr'] == 15): ?>15天内<?php elseif ($_GET['settr'] == 30): ?>30天内<?php endif; ?><i class="fliter-clear-icon"></i></div>
			<?php endif; ?>
			</div>
			<div class="fliter-clear f-right" id="clear_all_selected"><a href="javascript:;" class="clear-link">清空所选</a></div>
		</div>
	</div>
</div>
<!-- 人才列表 -->
<?php echo tpl_function_qishi_resume_list(array('set' => "列表名:resume,分页显示:1,显示数目:GET[inforow],特长描述长度:130,填补字符:...,关键字:GET[key],职位分类:GET[jobcategory],行业:GET[trade],地区分类:GET[citycategory],专业:GET[major],工作经验:GET[experience],标签:GET[resumetag],学历:GET[education],性别:GET[sex],照片:GET[photo],等级:GET[talent],日期范围:GET[settr],排序:rtime>desc"), $this);?>
<div class="jobinfolists">
	<div class="tit">
		<div class="seq f-left"><span>排序</span>
			<a href="<?php echo $this->_run_modifier("sort:rtime-page:1-key:", 'qishi_parse_url', 'plugin', 1); ?>
" class="seq-item <?php if ($_GET['sort'] == '' || $_GET['sort'] == 'rtime-page'): ?>selected<?php endif; ?> time">更新时间</a>
		</div>
		<div class="pagerow">
			<div class="pageminnav"><?php echo $this->_vars['pagemin']; ?>
</div>
		</div>
		<div class="clear"></div>
	</div>
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
&uid=<?php echo $_SESSION['uid']; ?>
" class="underline" ><?php if ($this->_vars['list']['checked']): ?><font color='#800080'><?php echo $this->_vars['list']['fullname']; ?>
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
					<div class="list-item item5 f-left"><?php if ($this->_vars['list']['experience_cn']):  echo $this->_vars['list']['experience_cn'];  else: ?>&nbsp;<?php endif; ?></div>
					<div class="list-item item6 f-left"><?php echo $this->_vars['list']['district_cn']; ?>
</div>
					<div class="list-item item7 f-left" style="font-family:微软雅黑;"><?php if ($this->_vars['list']['intention_jobs_']):  echo $this->_vars['list']['intention_jobs_'];  else: ?>&nbsp;<?php endif; ?></div>
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
 | 期望薪资：<?php echo $this->_vars['list']['wage_cn']; ?>
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
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>