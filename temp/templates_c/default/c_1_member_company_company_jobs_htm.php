<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_parse_url.php'); $this->register_modifier("qishi_parse_url", "tpl_modifier_qishi_parse_url",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-25 14:32 CST */ ?>
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

<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.js" type="text/javascript" language="javascript"></script>

<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min.js" type="text/javascript" language="javascript"></script>

<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/dialog-min-common.js" type="text/javascript" language="javascript"></script>

<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.vtip-min.js" type="text/javascript" language="javascript"></script>

<script src="<?php echo $this->_vars['QISHI']['site_template']; ?>
js/jquery.reasontip-min.js" type='text/javascript' language="javascript"></script>

<script type="text/javascript">

$(document).ready(function(){

	// 发布职位 成功提示弹出
	var addjobs_save_succeed="<?php echo $this->_vars['jobs_one']['id']; ?>
";
	if(addjobs_save_succeed>0)

	{
		var d=dialog({

	        title: '系统提示',

	        content: $(".addjob-success-dialog"),

	        cancelDisplay: false,

	        cancel: function () {

	        	window.location.href="?act=jobs";

	        }

	    }).showModal();

	}

	// 单个关闭

	$(".ctrl-close").click(function(event) {

		var mycoDialog=dialog(),

		url = $(this).attr("url");

		mycoDialog.title('系统提示');

		mycoDialog.content('<div class="del-dialog"><div class="tip-block"><span class="del-tips-text close-tips-text">关闭后将不对外展示招聘信息，您确定要关闭吗？</span></div></div><div class="center-btn-wrap"><input type="button" value="确定" class="btn-65-30blue btn-big-font DialogSubmit" /><input type="button" value="取消" class="btn-65-30grey btn-big-font DialogClose" /></div>');

	    mycoDialog.width('300');

	    mycoDialog.showModal();

	    /* 关闭 */

	    $(".DialogClose").live('click',function() {

	      mycoDialog.close().remove();

	    });

	    // 确定

	    $(".DialogSubmit").click(function() {

	    	if (url) {window.location.href=url};

	    });

	});

	/*

		顶部筛选 36 

	*/

	$('.data-filter').on('click', function(e){

		$(this).find('.filter-down').toggle();

		// 动态设置下拉列表宽度

		var fWidth = $(this).find('.filter-span').outerWidth(true) - 2;

		$(this).find(".filter-down").width(fWidth);

		// 点击其他位置收起下拉

		$(document).one("click",function(){

			$('.filter-down').hide();

		});

		e.stopPropagation();

		//点击下拉时收起其他下拉

		$(".data-filter").not($(this)).find('.filter-down').hide();

	});

	vtip_reason("<?php echo $this->_vars['QISHI']['site_dir']; ?>
","jobs_reason");

	// 单个刷新

	$('.refresh').on('click', function()

	{

		var jobsid = $(this).attr("jobsid"),
                
		ajax_url = "company_ajax.php?act=jobs_refresh_ajax&jobsid="+jobsid,

		msg = '';

		var myDialog = dialog();

		myDialog.title('刷新提示');

		myDialog.content("加载中...");

		myDialog.width('300');

		myDialog.showModal();

		jQuery.ajax({

			url: ajax_url,

			success: function (data) {

				myDialog.content(data);

				/* 关闭 */

				$(".DialogClose").live('click',function() {

				myDialog.close().remove();

				});

				/* 确定操作 */

				$(".DialogSubmit").click(function() 

				{

					window.location.href="company_jobs.php?act=jobs_perform&y_id="+jobsid+"&refresh=1";

				});

			}

		});

	});

	// 批量刷新

	$("#refresh_all").on('click', function(){

		var length=$("#form1 :checkbox[name='y_id[]'][checked]").length;

		$.get("company_ajax.php?act=jobs_all_refresh_ajax",{length:length},

		function(result)

		{

			var myDialog=dialog();

				myDialog.title('刷新提示');

				myDialog.content(result);

				myDialog.width('300');

				myDialog.showModal();

				/* 关闭 */

				$(".DialogClose").live('click',function() {

					myDialog.close().remove();

					return false;

				});

				// 确定

				$(".DialogSubmit").click(function() 

				{

					$("#form1").submit();

				});

		});

	});

	/*批量 关闭职位 */

	$("#display2").click(function(){

		var length=$("#form1 .check-control :checkbox[checked]").length;

		if(length>0)

		{

			var cof = confirm("您是否要关闭您选中的职位，您共选中"+length+"个职位,确定关闭吗？");

			if(cof) {

				return true;

			} else {

				return false;

			}

		} else {
			alert("您没有选中职位！");

			return false;

		}
	});

	// 删除弹出

	delete_dialog('.ctrl-del','#form1');
});

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
">会员中心</a> > 职位管理</div>

<div class="usermain">

  <div class="leftmenu  com link_bk">
  	 <?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("member_company/left.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  </div>

  <div class="rightmain">

 	<div class="bbox1 link_bk my_account">

		<div class="topnav">

			<div class="topnav get_resume">

                            <div class="titleH1"><div class="h1-title">管理职位</div></div>

                            <div class="navs link_bk">

                                <a href="?act=<?php echo $this->_vars['act']; ?>
&status=100" <?php if ($_GET['status'] == "100"): ?>class="se"<?php endif; ?>>

                                发布中职位<span >(<?php echo $this->_vars['jobs_total'][1]; ?>
)</span></a>

                                <a href="?act=<?php echo $this->_vars['act']; ?>
&status=200" <?php if ($_GET['status'] == "200"): ?>class="se"<?php endif; ?>>

                                审核中职位<span >(<?php echo $this->_vars['jobs_total'][2]; ?>
)</span></a>

                                <a href="?act=<?php echo $this->_vars['act']; ?>
&status=300" <?php if ($_GET['status'] == "300"): ?>class="se"<?php endif; ?>>未显示职位<span class="check">(<?php echo $this->_vars['jobs_total'][3]; ?>
)</span></a>

                                <a href="?act=<?php echo $this->_vars['act']; ?>
" <?php if ($_GET['status'] == ""): ?>class="se"<?php endif; ?>>

                                全部职位<span >(<?php echo $this->_vars['jobs_total'][0]; ?>
)</span></a>

                                <div class="clear"></div>

                            </div>
			</div>
		</div>

<form id="form1" name="form1" method="post" action="?act=jobs_perform">
		<!-- 新的发布中职位 -->
    <?php if ($_GET['jobtype'] == ""): ?>
        
    <style>
    .c-data-top.com-job-ma .top-item1, .c-data-content.com-job-ma .content1{
            width:350px;
    }
    .content1-1,
    .top-item1-1{
            width:200px;
    }
    .content1-1 a,
    .top-item1-1 a{
            color:#0180cf;
    }
    </style>

    <div class="company-data-list">

            <div class="c-data-top com-job-ma clearfix">

                    <div class="item f-left check-item"><input type="checkbox" name="chkAll"   id="chk" title="全选/反选" /></div>

                    <div class="item f-left top-item1">职位名称</div>
                    <div class="item f-left top-item1-1">&nbsp;</div>

                    <div class="item f-left top-item2">
                        <span class="filter-span">最后刷新时间<i class="filter-icon"></i></span>
                    </div>

                    <div class="item f-left top-item3">
                        <span class="filter-span">&nbsp;&nbsp;操&nbsp;&nbsp;作<i class="filter-icon"></i></span>
                    </div>

            </div>

            <style>
            select.bdr1{ border:#ccc solid 1px; background:#fff;}
            </style>
            <?php if ($this->_vars['jobs']): ?>

            <?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['li']): ?>

            <div class="c-data-row check-control">

                    <div class="c-data-content com-job-ma clearfix">

                        <div class="c-item f-left check-item"><input name="y_id[]" type="checkbox" id="y_id"  value="<?php echo $this->_vars['li']['id']; ?>
"/></div>

                <div class="c-item f-left content1">
                        <div class="job-ma-block">
<!--							<div><a href="/jobs/jobs-show.php?id=<?php echo $this->_vars['li']['id']; ?>
" target="_blank" class="name-link underline" title="<?php echo $this->_vars['li']['jobs_name_']; ?>
"><?php echo $this->_vars['li']['job_name']; ?>
</a></div>-->
<div><a href="#" target="_blank" class="name-link underline" title="<?php echo $this->_vars['li']['jobs_name_']; ?>
"><?php echo $this->_vars['li']['job_name']; ?>
</a></div>
                                <p>应聘简历：<a href="company_recruitment.php?act=apply_jobs&jobsid=<?php echo $this->_vars['li']['id']; ?>
&jobname=<?php echo $this->_vars['li']['jobs_name_']; ?>
" class="data-ctrl underline"><?php echo $this->_vars['li']['countresume']; ?>
</a></p>
                        </div>
                </div>
        <div class="c-item f-left content1-1">
            &nbsp;
        </div>
            <div class="c-item f-left content2"><span class="hasyuyue"><?php echo $this->_run_modifier($this->_vars['li']['refurbish_time'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M:%S"); ?>
</span></div>
            <div class="c-item f-left content3">
                <div class="job-ma-ctrl">
                    <?php if ($this->_vars['li']['status'] == 100): ?>
                    <a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a url="?act=jobs_perform&display2=1&y_id=<?php echo $this->_vars['li']['id']; ?>
" href="javascript:;" class="data-ctrl underline ctrl-close">关闭</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a><br>
                    <a  href="javascript:;" jobsid="<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline refresh">刷新</a>
                    <?php else: ?>
                     <a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="?act=jobs_perform&display1=1&y_id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">恢复</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a><br>
                    <?php endif; ?>
                </div>
            </div>

            </div>

            </div>

            <?php endforeach; endif; ?>

            <script type="text/javascript">

                    /*查看预约*/

                    $(".appointmentShow").live('click', function()

                    {

                            var id =$(this).attr('data');

                            var myDialog = dialog();

                        jQuery.ajax({

                            url: 'company_ajax.php?act=auto_refresh&id='+id,

                            success: function (data) {

                                myDialog.content(data);

                                myDialog.title('预约详情');

                                myDialog.width('500');

                                myDialog.showModal();

                            }

                        });

                    });

                    $(".appointmentSee").die().live('click', function(event) {

                            var appointDia =  dialog({

                                    title: '预约刷新',

                                    content: $('.yuyue-dialog'),

                                    width: '420px'

                            });

                            appointDia.showModal();

                            $(".DialogClose").live('click',function() {

                          appointDia.close().remove();

                        });

                            var jobNameIdArray = $(this).attr('data').split(",");

                            $("#appointJobName").html(jobNameIdArray[0]).attr("jobid",jobNameIdArray[1]);

                            $("#aloneIntegralDays").keyup(function() {

                                    var dayCount = parseInt($(this).val()), thepointAll = parseInt($("#consumptionPoint").html()), thepointEvery = parseInt($("#everyDayConsumptionPoint").html());

                                    dayCount ? dayCount = dayCount : dayCount = 0;

                                    $("#aloneIntegral").html(dayCount*thepointEvery);

                                    $("#theConsumptionPoint").html(dayCount*thepointEvery);

                                    if (thepointAll < dayCount*thepointEvery) { // 本次消耗积分大于总积分不能预约

                                            $('input[name=toMakeAppointment]').removeClass('toMakeAppointment');

                                            $("#theNoEnouPoint").show();

                                    } else {

                                            $('input[name=toMakeAppointment]').addClass('toMakeAppointment');

                                            $("#theNoEnouPoint").hide();

                                    }

                            });

                            $(".toMakeAppointment").die().live('click', function(event) {

                                    if (!$("#aloneIntegralDays").val()) {

                                            alert("填写预约天数！");

                                            $("#aloneIntegralDays").focus();

                                            return false;

                                    }

                                    var dataCode = $("#appointJobName").attr('jobid')+","+$("#aloneIntegralDays").val()+","+$("#theConsumptionPoint").html();

                                    $.get('company_recruitment.php?act=refresh_appointment', {data_arr:dataCode}, function(data){

                                            appointDia.content(data);

                                    });

                            });

                            $(".batchAppoint").click(function(e) {

                                    appointDia.content($('.yuyue-all-dialog'));

                                    appointDia.width("540px");

                                    var oldDataPool = new Array(), oldListHtmArray = $(".yue-left-block .yue-item");

                                    $.each(oldListHtmArray, function(index, val) {

                                            var oldHtmId = $(this).attr('reid'), oldHtmCn = $(this).find(".appoint").attr('data');

                                            oldDataPool.push(oldHtmId+','+oldHtmCn);

                                    });

                                    $(".appoint").die().live('click', function() {

                                            var yitObj = $(this).closest('.yue-item'), jobName = $(this).attr('data'), jobId = yitObj.attr('reid'), rightListHtm = '';

                                            oldDataPool.splice(jQuery.inArray(jobId+','+jobName,oldDataPool),1);

                                            yitObj.remove();

                                            rightListHtm += '<div class="hasyue-item clearfix" reid="'+jobId+'"><div class="hasyue-job f-left">'+jobName+'</div><a href="javascript:;" class="notyue-btn f-left cancelAppoint" data="'+jobName+'">取消</a><div class="yue-time f-right"><input class="batchAppDays" type="text" /> 天</div></div>';

                                            $(".yue-right-block").append(rightListHtm);

                                            // 批量预约时计算消耗积分

                                            $(".batchAppDays").die().live('keyup', function(event) {

                                                    var pvdysa= parseInt($("#bacMoreTime").html()), evallPointVal = 0;

                                                    $(".yue-right-block .batchAppDays").each(function(index, el) {

                                                            var evdysa = parseInt($(this).val());

                                                            evdysa ? evdysa = evdysa : evdysa = 0;

                                                            evallPointVal += pvdysa*evdysa;

                                                    });

                                                    $("#bAlPiont").html(evallPointVal);

                                                    if (parseInt($("#bAlPiontLast").html()) < evallPointVal) {

                                                            $("#noEnouPoint").show();

                                                            $('input[name=aKeyAppoint]').removeClass('aKeyAppoint');

                                                    } else {

                                                            $("#noEnouPoint").hide();

                                                            $('input[name=aKeyAppoint]').addClass('aKeyAppoint');

                                                    }

                                            });

                                            // 一键预约

                                            $(".aKeyAppoint").die().live('click', function(event) {

                                                    if (!$(".yue-right-block .hasyue-item").length > 0) {

                                                            alert("请先预约职位！");return false;

                                                    };

                                                    var isalertPoi = 0;

                                                    $(".yue-right-block .batchAppDays").each(function(index, el) {

                                                            isalertPoi += parseInt($(this).val());

                                                    });

                                                    if (!isalertPoi > 0) {

                                                            alert("请填写预约天数！");return false;

                                                    };

                                                    var aPArray = new Array();

                                                    $(".yue-right-block .hasyue-item").each(function(ind, eldd) {

                                                            var ajid = $(this).attr('reid'), ajname = $(this).find(".batchAppDays").val(),

                                                                    ajpoint = parseInt($(this).find('.batchAppDays').val());

                                                            ajpoint ? ajpoint = ajpoint : ajpoint = 0;

                                                            var ajpointAll = ajpoint*parseInt($("#bacMoreTime").html())

                                                            aPArray[ind] = ajid+","+ajname+","+ajpointAll;

                                                    });

                                                    $.get('company_recruitment.php?act=refresh_appointment', {data_arr:aPArray}, function(data) {

                                                            appointDia.content(data);

                                                    });

                                            });

                                            $(".cancelAppoint").die().live('click', function() {

                                                    var oldYitObj = $(this).closest('.hasyue-item'), oldJobName = $(this).attr('data'), oldJobId = oldYitObj.attr('reid'), leftListHtm = '<div class="yue-title clearfix"><span class="f-left">可预约职位</span></div>';

                                                    oldDataPool.push(oldJobId+','+oldJobName);

                                                    oldYitObj.remove();

                                                    $.each(oldDataPool, function(index, val) {

                                                            var leftHtmArray = val.split(",");

                                                            leftListHtm += '<div class="yue-item clearfix" reid="'+leftHtmArray[0]+'"><p class="yue-job f-left">'+leftHtmArray[1]+'</p><a href="javascript:;" class="yue-btn f-right appoint" data="'+leftHtmArray[1]+'">预约</a></div>';

                                                    })

                                                    $(".yue-left-block").html(leftListHtm);

                                            });

                                    });

                            })

                    });

            </script>
            <div class="c-data-row last">

                    <div class="c-data-content apply_jobs clearfix">

                            <div class="c-item f-left check-item"><input type="checkbox" name="chkAll"   id="chk2" title="全选/反选" /></div>

                            <div class="data-last-btn f-left">

                                    <?php if ($this->_vars['QISHI']['operation_mode'] == "3"): ?>

                                    <input type="hidden" name="refresh" id="refresh" value="1" />

                                    <input type="button" name="refresh" class="btn-65-30blue"  value="刷新职位"  id="refresh_all"/>

                                    <?php else: ?>

                                    <input type="hidden" name="refresh" id="refresh" value="1" />

                                    <input type="button" name="refresh" class="btn-65-30blue"  value="刷新职位"  id="refresh_all"/>

                                    <?php endif; ?>

                                    <input type="submit" value="关闭" name="display2" class="btn-65-30blue" id="display2"/>

                                    <input type="button" name="delete" class="btn-65-30blue ctrl-del" value="删除" id="delete" act="?act=jobs_perform&delete=1"/>

                            </div>

                    </div>

            </div>

            <?php else: ?>

            <div class="c-data-row emptytip">没有找到对应的职位信息</div>

            <?php endif; ?>

    </div>

		<?php endif; ?>

		<!-- 审核中的 职位 -->

		<?php if ($_GET['jobtype'] == "2"): ?>

		<div class="company-data-list">

			<div class="c-data-top com-job-ma clearfix">

				<div class="item f-left check-item"><input type="checkbox" name="chkAll"   id="chk"/></div>

				<div class="item f-left top-item1">职位名称</div>

				<div class="item f-left top-item2">工作地区</div>

				<div class="item f-left top-item3" style="text-align: center;">操作</div>

			</div>

			<?php if ($this->_vars['jobs']): ?>

			<?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['li']): ?>

			<div class="c-data-row">

				<div class="c-data-content com-job-ma3 clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="y_id[]" id="y_id"  value="<?php echo $this->_vars['li']['id']; ?>
" class="checkbox" /></div>

					<div class="c-item f-left content1" style="width:535px;">

						<div class="job-ma-block">

							<div><a href="<?php echo $this->_vars['li']['jobs_url']; ?>
" target="_blank" class="name-link underline" title="<?php echo $this->_vars['li']['jobs_name_']; ?>
"><?php echo $this->_vars['li']['jobs_name']; ?>
</a></div>

							<p>应聘简历：<?php echo $this->_vars['li']['countresume']; ?>
 | 更新时间：<?php echo $this->_run_modifier($this->_vars['li']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</p>

						</div>

					</div>

					<div class="c-item f-left content2" style="width:218px;"><?php echo $this->_vars['li']['district_cn']; ?>
</div>

					<div class="c-item f-left content3">

						<a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

					</div>

				</div>

			</div>

			<?php endforeach; endif; ?>

			<div class="c-data-row last">

				<div class="c-data-content apply_jobs clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="chkAll"   id="chk2"/></div>

					<div class="data-last-btn f-left">

						<input type="button" name="delete" class="btn-65-30blue ctrl-del" value="删除" id="delete" act="?act=jobs_perform&delete=1"/>

					</div>

				</div>

			</div>

			<?php else: ?>

			<div class="c-data-row emptytip">没有找到对应的职位信息</div>

			<?php endif; ?>

		</div>

		<?php endif; ?>

		<!-- 未显示 职位 -->

		<?php if ($_GET['jobtype'] == "3"): ?>

		<div class="company-data-list">

			<div class="c-data-top com-job-ma clearfix">

				<div class="item f-left check-item"><input type="checkbox" name="chkAll"   id="chk"/></div>

				<div class="item f-left top-item1">职位名称</div>

				<div class="item f-left top-item2">

					<div class="data-filter span4">

						<span class="filter-span">职位状态<i class="filter-icon"></i></span>

						<ul class="filter-down">

							<li><a href="<?php echo $this->_run_modifier("state:0", 'qishi_parse_url', 'plugin', 1); ?>
">全部</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:1", 'qishi_parse_url', 'plugin', 1); ?>
">未通过</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:2", 'qishi_parse_url', 'plugin', 1); ?>
">已关闭</a></li>

						</ul>

					</div>

				</div>

				<div class="item f-left top-item3" style="text-align: center;">操作</div>

			</div>

			<?php if ($this->_vars['jobs']): ?>

			<?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['li']): ?>

			<div class="c-data-row">

				<div class="c-data-content com-job-ma3 clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="y_id[]" id="y_id"  value="<?php echo $this->_vars['li']['id']; ?>
" class="checkbox" /></div>

					<div class="c-item f-left content1" style="width:535px;">

						<div class="job-ma-block">

							<div><a href="<?php echo $this->_vars['li']['jobs_url']; ?>
" target="_blank" class="name-link underline" title="<?php echo $this->_vars['li']['jobs_name_']; ?>
"><?php echo $this->_vars['li']['jobs_name']; ?>
</a></div>

							<p>应聘简历：<?php echo $this->_vars['li']['countresume']; ?>
 | 更新时间：<?php echo $this->_run_modifier($this->_vars['li']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</p>

						</div>

					</div>

					<div class="c-item f-left content2" style="width:218px;"><?php echo $this->_vars['li']['status_cn']; ?>
</div>

					<div class="c-item f-left content3">

						<?php if ($this->_vars['li']['status'] == 2): ?>

						<a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="?act=jobs_perform&display1=1&y_id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">恢复</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php else: ?>

						<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php endif; ?>

					</div>

				</div>

			</div>

			<?php endforeach; endif; ?>

			<div class="c-data-row last">

				<div class="c-data-content apply_jobs clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="chkAll"   id="chk2"/></div>

					<div class="data-last-btn f-left">

						<input type="button" name="delete" class="btn-65-30blue ctrl-del" value="删除" id="delete" act="?act=jobs_perform&delete=1"/>

					</div>

				</div>

			</div>

			<?php else: ?>

			<div class="c-data-row emptytip">没有找到对应的职位信息</div>

			<?php endif; ?>

		</div>

		<?php endif; ?>

		<!-- 全部职位 职位 -->

		<?php if ($_GET['jobtype'] == "1"): ?>

		<div class="company-data-list">

			<div class="c-data-top com-job-ma clearfix">

				<div class="item f-left check-item"><input type="checkbox" id="chk" name="chkAll"></div>

				<div class="item f-left top-item1">职位名称</div>

				<div class="item f-left top-item2">

					<div class="data-filter span4">

						<span class="filter-span">职位状态<i class="filter-icon"></i></span>

						<ul class="filter-down">

							<li><a href="<?php echo $this->_run_modifier("state:0", 'qishi_parse_url', 'plugin', 1); ?>
">全部</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:1", 'qishi_parse_url', 'plugin', 1); ?>
">发布中</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:2", 'qishi_parse_url', 'plugin', 1); ?>
">审核中</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:3", 'qishi_parse_url', 'plugin', 1); ?>
">未通过</a></li>

							<li><a href="<?php echo $this->_run_modifier("state:4", 'qishi_parse_url', 'plugin', 1); ?>
">已关闭</a></li>

						</ul>

					</div>

				</div>

				<div class="item f-left top-item3" style="text-align: center;">操作</div>

			</div>

			<?php if ($this->_vars['jobs']): ?>

			<?php if (count((array)$this->_vars['jobs'])): foreach ((array)$this->_vars['jobs'] as $this->_vars['li']): ?>

			<div class="c-data-row">

				<div class="c-data-content com-job-ma3 clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="y_id[]" id="y_id"  value="<?php echo $this->_vars['li']['id']; ?>
" class="checkbox" /></div>

					<div class="c-item f-left content1" style="width:535px;">

						<div class="job-ma-block">

							<div><a href="<?php echo $this->_vars['li']['jobs_url']; ?>
" target="_blank" class="name-link underline" title="<?php echo $this->_vars['li']['jobs_name_']; ?>
"><?php echo $this->_vars['li']['jobs_name']; ?>
</a></div>

							<p>应聘简历：<?php echo $this->_vars['li']['countresume']; ?>
 | 更新时间：<?php echo $this->_run_modifier($this->_vars['li']['refreshtime'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M");  if ($this->_vars['li']['status'] == 1): ?>  <a  href="javascript:;" jobsid="<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline refresh">[刷新]</a><?php endif; ?></p>

						</div>

					</div>

					<div class="c-item f-left content2" style="width:218px;"><span style="<?php if ($this->_vars['li']['status'] == 2 || $this->_vars['li']['status'] == 4): ?>color:red;<?php elseif ($this->_vars['li']['status'] == 3): ?>color:#FFB443;<?php else:  endif; ?>"><?php echo $this->_vars['li']['status_cn']; ?>
</span></div>

					<div class="c-item f-left content3">

						<?php if ($this->_vars['li']['status'] == 100): ?>

						<a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="?act=jobs_perform&display2=1&y_id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">关闭</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php elseif ($this->_vars['li']['status'] == 301 || $this->_vars['li']['status'] == 302): ?>

						<a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="?act=jobs_perform&display1=1&y_id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">恢复</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php elseif ($this->_vars['li']['status'] == 3): ?>

						<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php else: ?>

						<a href="?act=editjobs&id=<?php echo $this->_vars['li']['id']; ?>
" class="data-ctrl underline">修改</a>&nbsp;<a href="javascript:;" class="data-ctrl underline ctrl-del" url="?act=jobs_perform&delete=1&y_id=<?php echo $this->_vars['li']['id']; ?>
">删除</a>

						<?php endif; ?>

					</div>

				</div>

			</div>

			<?php endforeach; endif; ?>

			<div class="c-data-row last">

				<div class="c-data-content apply_jobs clearfix">

					<div class="c-item f-left check-item"><input type="checkbox" name="chkAll"   id="chk2" title="全选/反选" /></div>

					<div class="data-last-btn f-left">

						<input type="button" name="delete" class="btn-65-30blue ctrl-del" value="删除" id="delete" act="?act=jobs_perform&delete=1"/>

					</div>

				</div>

			</div>

			<?php else: ?>

			<div class="c-data-row emptytip">没有找到对应的职位信息</div>

			<?php endif; ?>

		</div>

		<?php endif; ?>



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

<!-- 发布职位成功弹出 -->

<div class="addjob-success-dialog" style="display:none">

	<div class="success-tip">职 位 发 布 成 功<a href="?act=addjobs" class="underline">继续发布职位</a></div>
</div>

</body>

</html>