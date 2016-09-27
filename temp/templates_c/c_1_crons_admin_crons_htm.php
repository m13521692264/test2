<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.default.php'); $this->register_modifier("default", "tpl_modifier_default",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:50 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<script type="text/javascript">
$(document).ready(function()
{
	
	$(".exe").QSdialog({
	DialogTitle:"系统提示",
	DialogContent:"计划任务正在执行，请等待...",
	DialogContentType:"text",
	DialogAddObj:"body",	
	DialogAddType:""	
	});
	//点击批量取消	
	$("#ButDel").click(function(){
		if (confirm('你确定要删除吗？'))
		{
			$("form[name=form1]").submit()
		}
	});
		
});
</script>
<div class="admin_main_nr_dbox">
 <div class="pagetit">
	<div class="ptit"> <?php echo $this->_vars['pageheader']; ?>
</div>
	<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("crons/admin_crons_nav.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  <div class="clear"></div>
</div>
 <div class="toptip">
	<h2>提示：</h2>
	<p>
计划任务是一项使系统在规定时间自动执行某些特定任务的功能，在需要的情况下，您也可以方便的将其用于功能的扩展。<br />
计划任务是与系统核心紧密关联的功能特性，不当的设置可能造成功能的隐患，严重时可能导致网站无法正常运行。
</p>
</div>
  <form id="form1" name="form1" method="post" action="?act=del">
  <?php echo $this->_vars['inputtoken']; ?>

  <table width="100%" border="0" cellpadding="0" cellspacing="0"  id="list" class="link_lan">
    <tr>
      <td  class="admin_list_tit admin_list_first">
      <label id="chkAll"><input type="checkbox" name="chkAll"  id="chk" title="全选/反选" />名称</label>
	  </td>
      <td   align="center" class="admin_list_tit"  width="10%"> 可用 </td>
      <td   align="center" class="admin_list_tit"  width="10%">类型</td>
      <td   align="center"   class="admin_list_tit"  width="160">上次执行时间</td>
	  <td   align="center"   class="admin_list_tit"  width="160">下次执行时间</td>
      <td width="130" align="center"  class="admin_list_tit" >操作</td>
    </tr>
	 <?php if (count((array)$this->_vars['list'])): foreach ((array)$this->_vars['list'] as $this->_vars['list']): ?>
    <tr>
      <td   class="admin_list admin_list_first">
	  <input name="id[]" type="checkbox"  value="<?php echo $this->_vars['list']['cronid']; ?>
" />
	  <?php echo $this->_vars['list']['name']; ?>

	 </td>
      <td align="center"  class="admin_list">
	 <?php if ($this->_vars['list']['available'] == "1"): ?>可用<?php else: ?><span style="color:#999999">不可用</span><?php endif; ?>
	 </td>
	   <td align="center"  class="admin_list"> 
	   <?php if ($this->_vars['list']['admin_set'] == "1"): ?>内置<?php else: ?>自定义<?php endif; ?>
	   </td>
      <td align="center"  class="admin_list"><?php echo $this->_run_modifier($this->_vars['list']['lastrun'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</td>
      <td align="center"   class="admin_list"><?php echo $this->_run_modifier($this->_vars['list']['nextrun'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</td>
      <td align="center"   class="admin_list">
	  <a href="?act=edit&id=<?php echo $this->_vars['list']['cronid']; ?>
">编辑</a>
	  <a href="?act=execution&id=<?php echo $this->_vars['list']['cronid']; ?>
&<?php echo $this->_vars['urltoken']; ?>
"  class="exe">执行</a>
	  </td>
    </tr>
	 <?php endforeach; endif; ?>
  </table>
  </form>
  <?php if (! $this->_vars['list']): ?>
<div class="admin_list_no_info">没有任何信息！</div>
<?php endif; ?>
<table width="100%" border="0" cellspacing="10" cellpadding="0" class="admin_list_btm">
      <tr>
        <td>
<input type="button" class="admin_submit" id="ButAudit" value="添加任务"  onclick="window.location='?act=add'"/>
<input type="button" class="admin_submit" id="ButDel" value="删除所选"/>
		</td>
        <td width="305" align="right">
	<!--	<form id="formseh" name="formseh" method="get" action="?">	
			<div class="seh">
			    <div class="keybox"><input name="key" type="text"   value="<?php echo $_GET['key']; ?>
" /></div>
			    <div class="selbox">
					<input name="key_type_cn"  id="key_type_cn" type="text" value="<?php echo $this->_run_modifier($_GET['key_type_cn'], 'default', 'plugin', 1, "标题"); ?>
" readonly="true"/>
						<div>
								<input name="key_type" id="key_type" type="hidden" value="<?php echo $this->_run_modifier($_GET['key_type'], 'default', 'plugin', 1, "1"); ?>
" />
												 
						</div>				
				</div>
				<div class="sbtbox">
				<input name="act" type="hidden" value="list" />
				<input type="submit" name="" class="sbt" id="sbt" value="搜索"/>
				</div>
				<div class="clear"></div>
		  </div>
		  </form>
		 -->
	    </td>
      </tr>
  </table>
<div class="page link_bk"><?php echo $this->_vars['page']; ?>
</div>
  
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>