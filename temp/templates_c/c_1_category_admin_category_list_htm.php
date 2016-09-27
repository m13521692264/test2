<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 19:53 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<script type="text/javascript">
$(document).ready(function()
{
	//点击批量取消
	$("#ButDel").click(function(){
		if (confirm('你确定要删除吗？'))
		{
			$("form[name=form1]").attr("action","?act=del_category");
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
echo $this->_fetch_compile_include("category/admin_category_nav.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  <div class="clear"></div>
</div>
<div class="toptip">
	<h2>提示：</h2>
	<p>
正式运营后删除分类会导致与此分类关联的信息类别丢失，修改不会受影响。
</p>
</div>
  <form id="form1" name="form1" method="post" action="?act=category_save">
  <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="list" class="link_lan"  >
    <tr>
      <td height="26" class="admin_list_tit admin_list_first">
      <label id="chkAll">
	  <input type="checkbox" name=" " title="全选/反选" id="chk"/><?php echo $this->_vars['group']['g_name']; ?>

	<span style="color: #999999; font-size:11px;">(<?php echo $this->_vars['group']['g_alias']; ?>
)</span>
	  </label>
	  </td>
	  <td width="30%"   align="center"  class="admin_list_tit">排序</td>
      <td width="30%"   class="admin_list_tit">操作</td>
    </tr>
<?php if (count((array)$this->_vars['category'])): foreach ((array)$this->_vars['category'] as $this->_vars['li']): ?>
     <tr>
      <td   class="admin_list admin_list_first" >
      <input type="checkbox" name="id[]" value="<?php echo $this->_vars['li']['c_id']; ?>
"   />
	  <input name="c_id[]" type="hidden" value="<?php echo $this->_vars['li']['c_id']; ?>
" />
	  <input name="c_name[]" type="text"  value="<?php echo $this->_vars['li']['c_name']; ?>
" class="input_text_200"/>
	  <span style="color:#CCCCCC">(id:<?php echo $this->_vars['li']['c_id']; ?>
)</span>
	  </td>
	   <td align="center"  class="admin_list">
		 <input name="c_order[]" type="text"  value="<?php echo $this->_vars['li']['c_order']; ?>
" class="input_text_50"/>
			 </td>
      <td class="admin_list">
	 <a href="?act=edit_category&id=<?php echo $this->_vars['li']['c_id']; ?>
">修改</a>
	 &nbsp;&nbsp;
	 <a onclick="return confirm('删除后无法恢复，你确定要删除吗？')" href="?act=del_category&id=<?php echo $this->_vars['li']['c_id']; ?>
&<?php echo $this->_vars['urltoken']; ?>
">删除</a>
		</td>
    </tr>
	<?php endforeach; endif; ?>
	</table>
	<?php if (! $this->_vars['category']): ?>
<div class="admin_list_no_info">此组分类下还没有分类，请添加。</div>
<?php endif; ?>
	<table width="100%" border="0" cellspacing="10"  class="admin_list_btm">
<tr>
        <td>
		<?php if ($this->_vars['category']): ?>
		<input name="ButSave" type="submit" class="admin_submit" id="ButSave" value="保存修改"/>
		<?php endif; ?>
        <input name="ButADD" type="button" class="admin_submit" id="ButADD" value="添加分类"  onclick="window.location='?act=add_category&alias=<?php echo $this->_vars['group']['g_alias']; ?>
'"/>
		<input name="ButDel" type="button" class="admin_submit" id="ButDel"  value="删除所选" />
		<input name="location" type="button" class="admin_submit"   value="返回分类组" onclick="window.location='?act=grouplist'" />
		</td>
        <td width="305" align="right">

	    </td>
      </tr>
  </table>
  </form>
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>