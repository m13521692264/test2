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
	<p>当进行升级或者打补丁出现异常的时候，您可以使用本功能校验数据库。通过校验结果可以很清楚的了解到数据库方面的改动 , 从而进行排查或调整。 <br />
  </div>
<div class="toptit">操作按钮</div>
  <form id="form1" name="form1" method="post" action="?act=do_check"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <td height="60" style=" line-height:220%; color:#666666;">
	  <table width="600" height="100" border="0" cellpadding="2" cellspacing="2" id="selecttplcache">
      <tr>
          <td height="45" align="center">授权码：<input name="web_key" type="text" class="input_text_200" id="web_key" maxlength="25" value=""/></td>
        </tr>
        <tr>
          <td height="45" align="center"><input name="submit" type="submit" class="admin_submit"    value="开始校验" onclick="document.getElementById('selecttplcache').style.display='none';document.getElementById('hide').style.display='block';"/></td>
        </tr>
      </table>      
        <table width="600" height="100" border="0" cellpadding="5" cellspacing="0" id="hide" style="display:none">
          <tr>
            <td align="center" valign="bottom"><img src="images/ajax_loader.gif"  border="0" /></td>
          </tr>
          <tr>
            <td align="center" valign="top" style="color: #009900">正在校验数据库，请稍候......</td>
          </tr>
        </table></td>
    </tr>
  </table>

  <!-- 检测结果 -->
  <table width="600" height="50" border="0"  id="selecttplcache">
  <?php if ($this->_vars['act'] != 'check_database' && ! $this->_vars['less'] && ! $this->_vars['many'] && ! $this->_vars['different']): ?>
  <div class="toptit">校验结果</div>
      <tr>
          <td height="20" align="left" bgcolor="#FFFFFF" >
            &nbsp;&nbsp;&nbsp;&nbsp;网站数据库跟服务器一致。
          </td>
        </tr>
  <?php elseif ($this->_vars['act'] != 'check_database' && ( $this->_vars['less'] || $this->_vars['many'] || $this->_vars['different'] )): ?>
  <div class="toptit">校验结果</div>
  <tr>  
          <td height="20" align="left" bgcolor="#FFFFFF" >
            &nbsp;&nbsp;&nbsp;&nbsp;校验完成，<?php if ($this->_vars['less']): ?>检测到缺失&nbsp;<span style="font-weight: bold;color:#ff9900"><?php echo $this->_vars['less_num']; ?>
</span>&nbsp;个表，<?php endif; ?> <?php if ($this->_vars['many']): ?>检测到多出&nbsp;<span style="font-weight: bold;color:#ff9900"><?php echo $this->_vars['many_num']; ?>
</span>&nbsp;个表，<?php endif; ?> <?php if ($this->_vars['different']): ?>检测到&nbsp;<span style="font-weight: bold;color:#ff9900"><?php echo $this->_vars['diff_num']; ?>
</span>&nbsp;个表不同于服务器数据库。<?php endif; ?>
          </td>
        </tr>
  <?php endif; ?>
  </table>

  <!-- 本地数据库缺失的表 -->
  <?php if ($this->_vars['less']): ?>
  <table width="600" height="50" border="0"  id="selecttplcache1">
   <div class="toptit"><span style="font-weight: bold;color:#0000C6">[-]</span>&nbsp;<span style="font-weight: bold;color:#ff0000">缺失的表 (<?php echo $this->_vars['less_num']; ?>
)</span></div>
      <?php if (count((array)$this->_vars['less'])): foreach ((array)$this->_vars['less'] as $this->_vars['list']): ?>
        <tr>
          <td height="20" align="left" bgcolor="#FFFFFF" style=" border-bottom:1px #CCCCCC dashed">
            &nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_vars['list']; ?>

          </td>
        </tr>
      <?php endforeach; endif; ?>
     </table>
  <?php endif; ?>
  <!-- 本地数据库多出的表 -->
  <?php if ($this->_vars['many']): ?>
  <table width="600" height="50" border="0"  id="selecttplcache2">
   <div class="toptit"><span style="font-weight: bold;color:#0000C6">[-]</span>&nbsp;<span style="font-weight: bold;color:#009100">多出的表 (<?php echo $this->_vars['many_num']; ?>
)</span></div>
      <?php if (count((array)$this->_vars['many'])): foreach ((array)$this->_vars['many'] as $this->_vars['list']): ?>
        <tr>
          <td height="20" align="left" bgcolor="#FFFFFF" style=" border-bottom:1px #CCCCCC dashed">
             &nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_vars['list']; ?>

          </td>
        </tr>
      <?php endforeach; endif; ?>
      </table>
  <?php endif; ?>


  <!-- 本地数据库不同于服务器的表 -->
  <?php if ($this->_vars['different']): ?>
  <table width="600" height="50" border="0"  id="selecttplcache3">
   <div class="toptit"><span style="font-weight: bold;color:#0000C6">[-]</span>&nbsp;<span style="font-weight: bold;color:#000093">不同于服务器的表 (<?php echo $this->_vars['diff_num']; ?>
)</span></div>
      <?php if (count((array)$this->_vars['different'])): foreach ((array)$this->_vars['different'] as $this->_vars['diff_table'] => $this->_vars['list']): ?>
        <tr>
          <td height="20" align="left" bgcolor="#FFFFFF" style=" border-bottom:1px #CCCCCC dashed">
             &nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_vars['diff_table']; ?>

          </td>
        </tr>
      <?php endforeach; endif; ?>
      </table>
  <?php endif; ?>
   

  </form>  
</div>
<script type="text/javascript">
    $("#selecttplcache td").last().css("border","0");
    $("#selecttplcache1 td").last().css("border","0");
    $("#selecttplcache2 td").last().css("border","0");
    $("#selecttplcache3 td").last().css("border","0");
</script>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>