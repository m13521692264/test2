<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.default.php'); $this->register_modifier("default", "tpl_modifier_default",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.date_format.php'); $this->register_modifier("date_format", "tpl_modifier_date_format",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/function.qishi_get_classify.php'); $this->register_function("qishi_get_classify", "tpl_function_qishi_get_classify",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_parse_url.php'); $this->register_modifier("qishi_parse_url", "tpl_modifier_qishi_parse_url",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:49 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<script type="text/javascript">
$(document).ready(function()
{	
	//纵向列表排序
	$(".listod .txt").each(function(i){
	var li=$(this).children(".select");
	var htm="<a href=\""+li.attr("href")+"\" class=\""+li.attr("class")+"\">"+li.text()+"</a>";
	li.detach();
	$(this).prepend(htm);
	});
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
  <div class="clear"></div>
</div>
<div class="seltpye_y">

	<div class="tit link_lan">
	<strong>商品列表</strong><span>(共找到<?php echo $this->_vars['total']; ?>
条)</span>
	<a href="?act=list">[恢复默认]</a>
	<div class="pli link_bk"><u>每页显示：</u>
	<a href="<?php echo $this->_run_modifier("perpage:10", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['perpage'] == "10"): ?>class="select"<?php endif; ?>>10</a>
	<a href="<?php echo $this->_run_modifier("perpage:20", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['perpage'] == "20"): ?>class="select"<?php endif; ?>>20</a>
	<a href="<?php echo $this->_run_modifier("perpage:30", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['perpage'] == "30"): ?>class="select"<?php endif; ?>>30</a>
	<a href="<?php echo $this->_run_modifier("perpage:60", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['perpage'] == "60"): ?>class="select"<?php endif; ?>>60</a>
	<div class="clear"></div>
	</div>
	</div>		
	<div class="list">
	  <div class="t">添加时间</div>	  
	  <div class="txt link_lan">
		<a href="<?php echo $this->_run_modifier("settr:", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['settr'] == ""): ?>class="select"<?php endif; ?>>不限</a>
		<a href="<?php echo $this->_run_modifier("settr:3", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['settr'] == "3"): ?>class="select"<?php endif; ?>>三天内</a>
		<a href="<?php echo $this->_run_modifier("settr:7", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['settr'] == "7"): ?>class="select"<?php endif; ?>>一周内</a>
		<a href="<?php echo $this->_run_modifier("settr:30", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['settr'] == "30"): ?>class="select"<?php endif; ?>>一月内</a>
	  </div>
    </div>
	
	<div class="list listod">
	  <div class="t">商品顶级分类</div>	  
	  <div class="txt link_lan">
	  <a href="<?php echo $this->_run_modifier("category:", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['category'] == ""): ?>class="select"<?php endif; ?>>不限</a>
	  <?php echo tpl_function_qishi_get_classify(array('set' => "列表名:c_province,类型:QS_shop_category,id:0"), $this);?>
	  <?php if (count((array)$this->_vars['c_province'])): foreach ((array)$this->_vars['c_province'] as $this->_vars['clist']): ?>
	  <a href="<?php echo $this->_run_modifier("category:" . $this->_vars['clist']['id'] . "", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['category'] == $this->_vars['clist']['id']): ?>class="select"<?php endif; ?>><?php echo $this->_vars['clist']['categoryname']; ?>
</a>
	  <?php endforeach; endif; ?>
	  </div>
    </div>
	<div class="clear"></div>
</div>


 
  <form id="form1" name="form1" method="post" action="?act=shop_del">
  <?php echo $this->_vars['inputtoken']; ?>

  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="link_lan">
    <tr>
      <td  class="admin_list_tit admin_list_first" width="10%">
      <label id="chkAll"><input type="checkbox" name="chkAll"  id="chk" title="全选/反选" />
       商品编号</label>
	  </td>
      <td  class="admin_list_tit" align="center">商品名称</td>
	  <td  class="admin_list_tit" align="center" >品牌</td>
	  <td  class="admin_list_tit" align="center">所属分类</td>
      <td  class="admin_list_tit" align="center">库存</td>
      <td    class="admin_list_tit" align="center"  width="10%">每人限购</td>
	  <td  align="center"  class="admin_list_tit"  width="10%">所需积分</td>
	  <td    class="admin_list_tit"  width="10%" align="center" >添加时间</td>
	  <td    class="admin_list_tit"  width="10%" align="center" >操作</td>
    </tr>
	<?php if (count((array)$this->_vars['list'])): foreach ((array)$this->_vars['list'] as $this->_vars['list']): ?>
	<tr>
      <td  class="admin_list admin_list_first">
      
	  <input name="id[]" type="checkbox" id="id" value="<?php echo $this->_vars['list']['id']; ?>
"  />
		<?php echo $this->_vars['list']['shop_number']; ?>

		<?php if ($this->_vars['list']['shop_img'] <> ""): ?>
		<span style="color: #009900"  class="vtip" title="<img src=<?php echo $this->_vars['QISHI']['site_dir']; ?>
data/shop/<?php echo $this->_vars['list']['shop_img']; ?>
  border=0  align=absmiddle>">[照片]</span>
		<?php endif; ?>	
	  </td>
      <td  class="admin_list" align="center">
	  <span title="<?php echo $this->_vars['list']['shop_title']; ?>
"><?php echo $this->_vars['list']['shop_title']; ?>
</span></td>
	  <td   class="admin_list" align="center" >
	  <?php echo $this->_vars['list']['shop_brand']; ?>


	  </td>
      <td   class="admin_list" align="center">
	  <?php echo $this->_vars['list']['category_cn']; ?>


	  </td>
      <td  align="center"   class="admin_list">
      	<?php echo $this->_vars['list']['shop_stock']; ?>

	  </td>
	  <td class="admin_list" align="center" >
		<?php echo $this->_vars['list']['shop_customer']; ?>

	  </td>
	  <td  class="admin_list" align="center" >
	  <?php echo $this->_vars['list']['shop_points']; ?>

	  </td>
	   <td  class="admin_list" align="center">
	  	<?php echo $this->_run_modifier($this->_vars['list']['addtime'], 'date_format', 'plugin', 1, "%Y-%m-%d"); ?>

	  </td>
	  <td    class="admin_list"  align="center" ><a href="?act=shop_edit&id=<?php echo $this->_vars['list']['id']; ?>
">修改</a>&nbsp;&nbsp;<a href="?act=shop_del&id=<?php echo $this->_vars['list']['id']; ?>
">删除</a></td>
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
        	<input type="button" class="admin_submit" onclick="javascript:location.href='?act=shop_add'" value="添加产品"/>
			<input type="button" class="admin_submit" id="ButDel" value="删除"/>
		</td>
        <td width="305" align="right">
		<form id="formseh" name="formseh" method="get" action="?">	
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
		
	    </td>
      </tr>
  </table>
<div class="page link_bk"><?php echo $this->_vars['page']; ?>
</div>



	<div id="GetDelInfo" style="display: none" >
	  <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" >
		<tr>
		  <td style="padding-left:30px;"><strong  style="color:#0066CC; font-size:14px;">仅删除已选信息？</strong></td>
		  <td style="padding-left:30px; border-left:1px #CCCCCC solid"><strong  style="color:#0066CC; font-size:14px;">按分类删除？</strong></td>
		</tr>
		<tr>
		  <td  style="padding-left:30px;"><input type="submit" name="deleteid" value="确定删除" class="admin_submit" onclick="return confirm('删除后将不可恢复，确定删除？')"/></td>
		  <td  style="padding-left:30px; border-left:1px #CCCCCC solid">
		  <select name="d_tid" style=" font-size:12px;">
			<option value="0" selected="selected">请选择礼品卡分类</option>
			<?php if (count((array)$this->_vars['category'])): foreach ((array)$this->_vars['category'] as $this->_vars['cli']): ?>
  <option value="<?php echo $this->_vars['cli']['t_id']; ?>
"><?php echo $this->_vars['cli']['t_name']; ?>
</option>
	<?php endforeach; endif; ?>		     
	          </select>		  </td>
		</tr>
		  <tr>
		  <td  style="padding-left:30px;">&nbsp;</td>
		  <td  style="padding-left:30px; border-left:1px #CCCCCC solid"><input type="submit" name="deletetid" value="确定删除" class="admin_submit"  onclick="return confirm('删除后将不可恢复，确定删除？')"/></td>
	    </tr>
	  </table>
  </div>
		
		
	
	<div id="GetDownInfo" style="display: none" >
	  <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" >
		<tr>
		  <td style="padding-left:30px;"><strong  style="color:#0066CC; font-size:14px;">仅下载已选信息？</strong></td>
		  <td style="padding-left:30px; border-left:1px #CCCCCC solid"><strong  style="color:#0066CC; font-size:14px;">按分类下载？</strong></td>
		</tr>
		<tr>
		  <td  style="padding-left:30px;"><input type="submit" name="downid" value="下载" class="admin_submit DialogClose"  /></td>
		  <td  style="padding-left:30px; border-left:1px #CCCCCC solid">
		  <select name="t_id" style=" font-size:12px;">
			<option value="0" selected="selected">请选择礼品卡分类</option>
			<?php if (count((array)$this->_vars['category'])): foreach ((array)$this->_vars['category'] as $this->_vars['cli']): ?>
  <option value="<?php echo $this->_vars['cli']['t_id']; ?>
"><?php echo $this->_vars['cli']['t_name']; ?>
</option>
	<?php endforeach; endif; ?>		     
	          </select>		  </td>
		</tr>
		  <tr>
		  <td  style="padding-left:30px;">&nbsp;</td>
		  <td  style="padding-left:30px; border-left:1px #CCCCCC solid"><input type="submit" name="downtid" value="下载" class="admin_submit DialogClose"  /></td>
	    </tr>
	  </table>
  </div>	
		
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>