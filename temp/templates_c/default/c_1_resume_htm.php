<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_link.php'); $this->register_function("qishi_link", "tpl_function_qishi_link",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_resume_list.php'); $this->register_function("qishi_resume_list", "tpl_function_qishi_resume_list",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_get_classify.php'); $this->register_function("qishi_get_classify", "tpl_function_qishi_get_classify",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_url.php'); $this->register_modifier("qishi_url", "tpl_modifier_qishi_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_pageinfo.php'); $this->register_function("qishi_pageinfo", "tpl_function_qishi_pageinfo",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-23 17:32 CST */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><?php echo tpl_function_qishi_pageinfo(array('set' => "列表名:page,调用:QS_resume"), $this);?>
<title><?php echo $this->_vars['page']['title']; ?>
 - <?php echo $this->_vars['QISHI']['site_name']; ?>
</title>
<meta name="description" content="<?php echo $this->_vars['page']['description']; ?>
">
<meta name="keywords" content="<?php echo $this->_vars['page']['keywords']; ?>
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
css/resume.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type='text/javascript' ></script>
<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.resume-search.js" type='text/javascript'></script>
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
				<div class="type-input-box f-left">
					<div class="key">请输入关键字</div>
					<input type="text" name="key" id="key" style="display:none;"/>
					<input name="jobcategory" id="jobcategory" type="hidden" value="" />
					<input name="trade" id="trade" type="hidden" value="" />
					<input name="citycategory" id="citycategory" type="hidden" value="" data-code="<?php echo $this->_vars['QISHI']['districtid']; ?>
" />
					<input name="major" id="major" type="hidden" value="" />
					<input name="experience" id="experience" type="hidden" value=""/>
					<input name="resumetag" id="resumetag" type="hidden" value=""/>
					<input name="education" id="education" type="hidden" value=""/>
					<input name="sex" id="sex" type="hidden" value=""/>
					<input name="photo" id="photo" type="hidden" value=""/>
					<input name="talent" id="talent" type="hidden" value=""/>
					<input name="settr" id="settr" type="hidden" value=""/>
				</div>
			</div>
			<div class="t-search-btn f-left"><input type="button" detype="QS_resumelist" id="searcnbtn" value="搜&nbsp;索" /></div>
		</div>
		<div class="fliter-wrap" style="border-bottom:none;">
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
					<div class="fl-content-li" type="experience" code="<?php echo $this->_vars['list']['id']; ?>
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
					<div class="saixuan">
						<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_education,类型:QS_education"), $this);?>
						<div class="saixuans">
							<div class="line"></div>
							<?php if (count((array)$this->_vars['c_education'])): foreach ((array)$this->_vars['c_education'] as $this->_vars['list']): ?>
							<a defvalue="<?php echo $this->_vars['list']['id']; ?>
" type="education" href="javascript:;"><?php echo $this->_vars['list']['categoryname']; ?>
</a>
							<?php endforeach; endif; ?>
						</div>
						最高学历
					</div>
					<div class="saixuan">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1" type="sex" href="javascript:;">男</a>
							<a defvalue="2" type="sex" href="javascript:;">女</a>
						</div>
						性别要求
					</div>
					<div class="saixuan">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1" type="photo" href="javascript:;">有</a>
							<a defvalue="0" type="photo" href="javascript:;">无</a>
						</div>
						简历照片
					</div>
					<div class="saixuan">
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="1" type="talent" href="javascript:;">普通</a>
							<a defvalue="2" type="talent" href="javascript:;">高级</a>
						</div>
						简历等级
					</div>
					<div class="saixuan">
						<?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_scale,类型:QS_scale"), $this);?>
						<div class="saixuans">
							<div class="line"></div>
							<a defvalue="3" type="settr" href="javascript:;">3天内</a>
							<a defvalue="7" type="settr" href="javascript:;">7天内</a>
							<a defvalue="15" type="settr" href="javascript:;">15天内</a>
							<a defvalue="30" type="settr" href="javascript:;">30天内</a>
						</div>
						更新时间
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="data-box">
		<div class="data-title">
			<h3>照片简历</h3>
			<a href="<?php echo $this->_run_modifier("QS_resumelist,photo:1", 'qishi_url', 'plugin', 1); ?>
" target="_blank" class="right-link">更多>></a>
		</div>
		<div class="photo-resumes-list clearfix">
			<?php echo tpl_function_qishi_resume_list(array('set' => "列表名:resume,显示数目:14,照片:1,意向职位长度:18,填补字符:...,排序:rtime>desc"), $this);?>
			<?php if (count((array)$this->_vars['resume'])): foreach ((array)$this->_vars['resume'] as $this->_vars['list']): ?>
			<div class="photo-resume-item f-left" onclick="javascript:window.location.href='<?php echo $this->_vars['list']['resume_url']; ?>
'">
				<div class="photo-box">
					<div class="avater-img"><img src="<?php echo $this->_vars['list']['photosrc']; ?>
" alt="<?php echo $this->_vars['list']['fullname']; ?>
" width="70" height="70" border="0" /></div>
					<p><a href="<?php echo $this->_vars['list']['resume_url']; ?>
&uid=<?php echo $_SESSION['uid']; ?>
"><?php echo $this->_vars['list']['fullname']; ?>
</a></p>
				</div>
				<div class="photo-detail">
					<div class="date-time"><?php echo $this->_vars['list']['refreshtime_cn']; ?>
</div>
					<div class="detail-content"><?php echo $this->_vars['list']['education_cn']; ?>
,<?php echo $this->_vars['list']['experience_cn']; ?>
</div>
					<div class="detail-content"><?php echo $this->_vars['list']['intention_jobs']; ?>
</div>
				</div>
			</div>
			<?php endforeach; endif; ?>
		</div>
	</div>
	<div class="data-box">
		<div class="data-title">
			<h3>最新简历</h3>
			<a href="<?php echo $this->_run_modifier("QS_resumelist", 'qishi_url', 'plugin', 1); ?>
" class="right-link">更多>></a>
		</div>
		<div class="newst-resume-list clearfix">
			<?php echo tpl_function_qishi_resume_list(array('set' => "列表名:resume,显示数目:12,意向职位长度:25,填补字符:...,排序:rtime>desc"), $this);?>
			<?php if (count((array)$this->_vars['resume'])): foreach ((array)$this->_vars['resume'] as $this->_vars['list']): ?>
			<div class="newst-resume-item f-left">
				<div class="name-date"><a href="<?php echo $this->_vars['list']['resume_url']; ?>
&uid=<?php echo $_SESSION['uid']; ?>
"><?php echo $this->_vars['list']['fullname']; ?>
</a><span><?php echo $this->_vars['list']['refreshtime_cn']; ?>
</span></div>
				<div class="resume-detail"><?php echo $this->_vars['list']['education_cn']; ?>
 | <?php echo $this->_vars['list']['experience_cn']; ?>
 | 意向：<?php echo $this->_vars['list']['intention_jobs']; ?>
</div>
			</div>
			<?php endforeach; endif; ?>
		</div>
	</div>
</div>

	<div class="f_link">
		<div class="job_box">
				<div class="box_tit">
					<div class="tit">友情链接</div> <div class="more link_bk"><a href="<?php echo $this->_vars['QISHI']['site_dir']; ?>
link/add_link.php" target="_blank">申请>></a></div>
					<div class="clear"></div>
				</div>
				<div class="box_content">
					<?php echo tpl_function_qishi_link(array('set' => "列表名:link,显示数目:100,调用名称:QS_resume,类型:1"), $this);?>
					<div class="link_name link_bk">
							<?php if (count((array)$this->_vars['link'])): foreach ((array)$this->_vars['link'] as $this->_vars['list']): ?>
							<a style="word_link" href="<?php echo $this->_vars['list']['link_url']; ?>
" target="_blank"><?php echo $this->_vars['list']['title']; ?>
</a>
							<?php endforeach; endif; ?>
							<?php echo tpl_function_qishi_link(array('set' => "列表名:imglink,显示数目:14,调用名称:QS_resume,类型:2"), $this);?>
							<?php if ($this->_vars['imglink']): ?>
							<div class="link_img">
								<?php if (count((array)$this->_vars['imglink'])): foreach ((array)$this->_vars['imglink'] as $this->_vars['list']): ?>
								<div class="l_img"><a href="<?php echo $this->_vars['list']['link_url']; ?>
" target="_blank"><img src="<?php echo $this->_vars['list']['link_logo']; ?>
" alt="<?php echo $this->_vars['list']['title']; ?>
" border="0" width="120" height="40" /></a> </div>
								<?php endforeach; endif; ?>
								<div class="clear"></div>
							</div>
							<?php endif; ?>
					</div>
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
