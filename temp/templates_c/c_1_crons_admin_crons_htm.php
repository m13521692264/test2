<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.default.php'); $this->register_modifier("default", "tpl_modifier_default",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:50 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<script type="text/javascript">
$(document).ready(function()
{
	
	$(".exe").QSdialog({
	DialogTitle:"ϵͳ��ʾ",
	DialogContent:"�ƻ���������ִ�У���ȴ�...",
	DialogContentType:"text",
	DialogAddObj:"body",	
	DialogAddType:""	
	});
	//�������ȡ��	
	$("#ButDel").click(function(){
		if (confirm('��ȷ��Ҫɾ����'))
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
	<h2>��ʾ��</h2>
	<p>
�ƻ�������һ��ʹϵͳ�ڹ涨ʱ���Զ�ִ��ĳЩ�ض�����Ĺ��ܣ�����Ҫ������£���Ҳ���Է���Ľ������ڹ��ܵ���չ��<br />
�ƻ���������ϵͳ���Ľ��ܹ����Ĺ������ԣ����������ÿ�����ɹ��ܵ�����������ʱ���ܵ�����վ�޷��������С�
</p>
</div>
  <form id="form1" name="form1" method="post" action="?act=del">
  <?php echo $this->_vars['inputtoken']; ?>

  <table width="100%" border="0" cellpadding="0" cellspacing="0"  id="list" class="link_lan">
    <tr>
      <td  class="admin_list_tit admin_list_first">
      <label id="chkAll"><input type="checkbox" name="chkAll"  id="chk" title="ȫѡ/��ѡ" />����</label>
	  </td>
      <td   align="center" class="admin_list_tit"  width="10%"> ���� </td>
      <td   align="center" class="admin_list_tit"  width="10%">����</td>
      <td   align="center"   class="admin_list_tit"  width="160">�ϴ�ִ��ʱ��</td>
	  <td   align="center"   class="admin_list_tit"  width="160">�´�ִ��ʱ��</td>
      <td width="130" align="center"  class="admin_list_tit" >����</td>
    </tr>
	 <?php if (count((array)$this->_vars['list'])): foreach ((array)$this->_vars['list'] as $this->_vars['list']): ?>
    <tr>
      <td   class="admin_list admin_list_first">
	  <input name="id[]" type="checkbox"  value="<?php echo $this->_vars['list']['cronid']; ?>
" />
	  <?php echo $this->_vars['list']['name']; ?>

	 </td>
      <td align="center"  class="admin_list">
	 <?php if ($this->_vars['list']['available'] == "1"): ?>����<?php else: ?><span style="color:#999999">������</span><?php endif; ?>
	 </td>
	   <td align="center"  class="admin_list"> 
	   <?php if ($this->_vars['list']['admin_set'] == "1"): ?>����<?php else: ?>�Զ���<?php endif; ?>
	   </td>
      <td align="center"  class="admin_list"><?php echo $this->_run_modifier($this->_vars['list']['lastrun'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</td>
      <td align="center"   class="admin_list"><?php echo $this->_run_modifier($this->_vars['list']['nextrun'], 'date_format', 'plugin', 1, "%Y-%m-%d %H:%M"); ?>
</td>
      <td align="center"   class="admin_list">
	  <a href="?act=edit&id=<?php echo $this->_vars['list']['cronid']; ?>
">�༭</a>
	  <a href="?act=execution&id=<?php echo $this->_vars['list']['cronid']; ?>
&<?php echo $this->_vars['urltoken']; ?>
"  class="exe">ִ��</a>
	  </td>
    </tr>
	 <?php endforeach; endif; ?>
  </table>
  </form>
  <?php if (! $this->_vars['list']): ?>
<div class="admin_list_no_info">û���κ���Ϣ��</div>
<?php endif; ?>
<table width="100%" border="0" cellspacing="10" cellpadding="0" class="admin_list_btm">
      <tr>
        <td>
<input type="button" class="admin_submit" id="ButAudit" value="��������"  onclick="window.location='?act=add'"/>
<input type="button" class="admin_submit" id="ButDel" value="ɾ����ѡ"/>
		</td>
        <td width="305" align="right">
	<!--	<form id="formseh" name="formseh" method="get" action="?">	
			<div class="seh">
			    <div class="keybox"><input name="key" type="text"   value="<?php echo $_GET['key']; ?>
" /></div>
			    <div class="selbox">
					<input name="key_type_cn"  id="key_type_cn" type="text" value="<?php echo $this->_run_modifier($_GET['key_type_cn'], 'default', 'plugin', 1, "����"); ?>
" readonly="true"/>
						<div>
								<input name="key_type" id="key_type" type="hidden" value="<?php echo $this->_run_modifier($_GET['key_type'], 'default', 'plugin', 1, "1"); ?>
" />
												 
						</div>				
				</div>
				<div class="sbtbox">
				<input name="act" type="hidden" value="list" />
				<input type="submit" name="" class="sbt" id="sbt" value="����"/>
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