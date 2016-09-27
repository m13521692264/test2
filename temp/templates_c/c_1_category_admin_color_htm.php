<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 19:44 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
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
  <form id="form1" name="form1" method="post" action="?act=del_color">
  <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="list" class="link_lan"  >
    <tr>
      <td height="26" class="admin_list_tit admin_list_first" >
      <label id="chkAll"><input type="checkbox" name=" " title="全选/反选" id="chk"/>颜色</label></td>
      <td width="20%"   class="admin_list_tit">操作</td>
    </tr>
	<?php if (count((array)$this->_vars['color'])): foreach ((array)$this->_vars['color'] as $this->_vars['li']): ?>
     <tr>
      <td   class="admin_list admin_list_first" >
      	<div style=" background-color: <?php echo $this->_vars['li']['value']; ?>
; height:20px; width:60px;font-size:0px"></div>
	  </td>
      <td class="admin_list">
				 <a href="?act=edit_color&id=<?php echo $this->_vars['li']['id']; ?>
">修改</a>&nbsp;&nbsp;			 
			 <a onclick="return confirm('删除后无法恢复，你确定要删除吗？')" href="?act=del_color&id=<?php echo $this->_vars['li']['id']; ?>
&<?php echo $this->_vars['urltoken']; ?>
">删除</a>
		</td>
    </tr>
	 <?php endforeach; endif; ?>
	</table>
	<table width="100%" border="0" cellspacing="10"  class="admin_list_btm">
<tr>
        <td>
        <input name="ButADD" type="button" class="admin_submit" id="ButADD" value="添加颜色"  onclick="window.location='?act=add_color'"/>
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