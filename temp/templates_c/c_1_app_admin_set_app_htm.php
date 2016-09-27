<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:49 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<div class="admin_main_nr_dbox">
 <div class="pagetit">
	<div class="ptit"> <?php echo $this->_vars['pageheader']; ?>
</div>
	<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("app/admin_set_app_nav.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  <div class="clear"></div>
</div>
<div class="toptip">
	<h2>提示：</h2>
	<p>
APP设置主要是设置移动端的关于我们或者是版本号等部分的信息。<br />
</p>
</div>
<div class="toptit">关于我们</div>
  <form action="admin_app.php?act=set_save" method="post" name="form1" id="form1">
 <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="right" valign="top" style="padding-left:16px;height:50px;width:90px;">网站介绍：</td>
      <td><textarea name="site_introduce" class="input_text_400" id="site_introduce" style="height:100px;"><?php echo $this->_vars['config']['site_introduce']; ?>
</textarea></td>
    </tr>
    <tr>
      <td align="left">&nbsp;</td>
      <td height="50"> 
        <input name="submit" type="submit" class="admin_submit"    value="保存修改"/>
      </td>
    </tr>
  </table>
  </form>
  <div class="toptit">摇一摇设置</div>
  <form action="admin_app.php?act=set_save" method="post" name="form2" id="form2">
 <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="right" valign="center" style="padding-left:16px;height:40px;width:90px;">搜索范围距离：</td>
      <td><input class="input_text_200" name="shake_range" type="text" id="shake_range" value="<?php echo $this->_vars['config']['shake_range']; ?>
" style="width:50px;"/>
      千米 &nbsp;&nbsp;(以千米为计量单位,若不设置默认为0.5千米)
      </td>
    </tr>
    <tr>
      <td align="left">&nbsp;</td>
      <td height="50"> 
        <input name="submit" type="submit" class="admin_submit"    value="保存修改"/>
      </td>
    </tr>
  </table>
  </form>
  <div class="toptit">版本信息</div>
  <form action="admin_app.php?act=set_save" method="post" name="form3" id="form3">
    <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="right" valign="center" style="padding-left:16px;height:40px;width:90px;">android版本号：</td>
      <td><input class="input_text_200" name="app_version" type="text" id="app_version" value="<?php echo $this->_vars['config']['app_version']; ?>
"/></td>
    </tr>
    <tr>
      <td align="right" valign="center" style="padding-left:16px;height:40px;width:90px;">ios版本号：</td>
      <td><input class="input_text_200" name="ios_version" type="text" id="ios_version" value="<?php echo $this->_vars['config']['ios_version']; ?>
"/></td>
    </tr>
    <tr>
      <td align="left">&nbsp;</td>
      <td height="50"> 
        <input name="submit" type="submit" class="admin_submit"    value="保存修改"/>
      </td>
    </tr>
  </table>
  </form>

  <div class="toptit">下载链接</div>
  <form action="admin_app.php?act=set_save" method="post" name="form4" id="form4">
    <?php echo $this->_vars['inputtoken']; ?>

    <table width="100%" border="0" cellspacing="5" cellpadding="5">
    <tr>
      <td align="right" valign="center" style="padding-left:16px;height:40px;width:90px;">android：</td>
      <td><input class="input_text_200" name="android_download" type="text" id="android_download" value="<?php echo $this->_vars['config']['android_download']; ?>
"/></td>
    </tr>
    <tr>
      <td align="right" valign="center" style="padding-left:16px;height:40px;width:90px;">ios：</td>
      <td><input class="input_text_200" name="ios_download" type="text" id="ios_download" value="<?php echo $this->_vars['config']['ios_download']; ?>
"/></td>
    </tr>
    <tr>
      <td align="left">&nbsp;</td>
      <td height="50"> 
        <input name="submit" type="submit" class="admin_submit"    value="保存修改"/>
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