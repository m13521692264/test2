<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:50 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<div class="admin_main_nr_dbox">
 <div class="pagetit">
	<div class="ptit"> <?php echo $this->_vars['pageheader']; ?>
</div>
  <div class="clear"></div>
</div>
<div class="toptip">
	<h2>提示：</h2>
	<p>
安装在线支付插件需申请对应在线支付服务公司的服务账户。
</p>
</div>
  <table width="100%" border="0" cellpadding="0" cellspacing="0"  class="link_lan" id="list" >
    <tr>
            <td width="15%"  class="admin_list_tit admin_list_first">名称</td>
            <td width="34%" class="admin_list_tit">支付方式简短描述</td>
            <td align="center" class="admin_list_tit">手续费</td>
            <td align="center" class="admin_list_tit">排序</td>
            <td width="15%" align="center" class="admin_list_tit">操作</td>
    </tr>
		 <?php if (count((array)$this->_vars['payment'])): foreach ((array)$this->_vars['payment'] as $this->_vars['li']): ?>
          <tr>
      <td class="admin_list admin_list_first" style="color:#3366CC"> <?php echo $this->_vars['li']['byname']; ?>
 </td>
            <td class="admin_list"> <?php echo $this->_vars['li']['p_introduction']; ?>
</td>
            <td align="center" class="admin_list"><?php echo $this->_vars['li']['fee']; ?>
 %</td>
            <td align="center" class="admin_list">
			<?php echo $this->_vars['li']['listorder']; ?>
      </td>
            <td align="center" class="admin_list">
				<?php if ($this->_vars['li']['p_install'] == 2): ?>
				<a href="?act=uninstall_payment&id=<?php echo $this->_vars['li']['id']; ?>
&<?php echo $this->_vars['urltoken']; ?>
" onclick="return confirm('你确定要卸载吗？')">卸载</a> &nbsp;&nbsp;&nbsp;&nbsp;
				<a href="?act=action_payment&name=<?php echo $this->_vars['li']['typename']; ?>
" >编辑</a>
				<?php else: ?>
				<a href="?act=action_payment&type=install&name=<?php echo $this->_vars['li']['typename']; ?>
">安装</a>
				<?php endif; ?>				</td>
          </tr>
         
          <?php endforeach; endif; ?>
  </table>
  <table width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>