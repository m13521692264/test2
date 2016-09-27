<?php require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.default.php'); $this->register_modifier("default", "tpl_modifier_default",false);  require_once('/Users/Kevin/waibao/codes/yjobs/include/template_lite/plugins/modifier.qishi_parse_url.php'); $this->register_modifier("qishi_parse_url", "tpl_modifier_qishi_parse_url",false);  /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:49 CST */  $_templatelite_tpl_vars = $this->_vars;
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
	
	<div class="seltpye_x">
		<div class="left">测评类型</div>	
			<div class="right">
				<a href="<?php echo $this->_run_modifier("type_id:", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['type_id'] == ""): ?>class="select"<?php endif; ?>>不限</a>
				<?php if ($this->_vars['evaluat_type']): ?>
				<?php if (count((array)$this->_vars['evaluat_type'])): foreach ((array)$this->_vars['evaluat_type'] as $this->_vars['li']): ?>
				<a href="<?php echo $this->_run_modifier("type_id:" . $this->_vars['li']['id'] . "", 'qishi_parse_url', 'plugin', 1); ?>
" <?php if ($_GET['type_id'] == $this->_vars['li']['id']): ?>class="select"<?php endif; ?>><?php echo $this->_vars['li']['name']; ?>
</a>
				<?php endforeach; endif; ?>
				<?php endif; ?>
				<div class="clear"></div>
			</div>
		<div class="clear"></div>
	</div>
	<div class="seltpye_y" >
		<div class="tit link_lan">
			<strong>试卷列表</strong><span>(共找到<?php echo $this->_vars['total']; ?>
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
	</div>

	<form id="form1" name="form1" method="post" action="?act=paper_del">
	<?php echo $this->_vars['inputtoken']; ?>

		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="link_lan">
			<tr>
				<td  class="admin_list_tit admin_list_first" width="15%">
				<label id="chkAll"><input type="checkbox" name="chkAll"  id="chk" title="全选/反选" />
				试卷标题</label>
				</td>
				<td  class="admin_list_tit" align="center" width="15%">关键词</td>
				<td  align="center"  class="admin_list_tit"  width="15%">适用人群</td>
				<td  class="admin_list_tit" align="center">测题数</td>
				<td  class="admin_list_tit" align="center" >答题时长</td>
				<td  class="admin_list_tit" align="center">价格</td>
				<td    class="admin_list_tit" align="center"  width="10%">答题人数</td>
				<td    class="admin_list_tit"  width="10%" align="center" >操作</td>
			</tr>
			<?php if (count((array)$this->_vars['list'])): foreach ((array)$this->_vars['list'] as $this->_vars['list']): ?>
			<tr>
				<td  class="admin_list admin_list_first">
					<input name="id[]" type="checkbox" id="id" value="<?php echo $this->_vars['list']['id']; ?>
"  />
					<a href="<?php echo $this->_vars['list']['url']; ?>
" target="_blank"><span title="<?php echo $this->_vars['list']['title']; ?>
"><?php echo $this->_vars['list']['title']; ?>
</span></a>
				</td>
				<td  class="admin_list" align="center">
					<span title="<?php echo $this->_vars['list']['keywords']; ?>
"><?php echo $this->_vars['list']['keywords']; ?>
</span>
				</td>
				<td  class="admin_list" align="center">
					<span title="<?php echo $this->_vars['list']['suitable_crowd']; ?>
"><?php echo $this->_vars['list']['suitable_crowd']; ?>
</span>
				</td>
				<td   class="admin_list" align="center">
					<?php echo $this->_vars['list']['question_num']; ?>

				</td>
				<td  align="center"   class="admin_list">
					<?php if ($this->_vars['list']['timelimit'] > 0):  echo $this->_vars['list']['timelimit']; ?>
 分钟<?php else: ?>--<?php endif; ?>
				</td>
				<td class="admin_list" align="center" >
					<?php echo $this->_vars['list']['price']; ?>

				</td>
				<td  class="admin_list" align="center" >
					<a href="?act=record_list"><?php if ($this->_vars['list']['join_num'] > 0):  echo $this->_vars['list']['join_num'];  else: ?>0<?php endif; ?></a>
				</td>
				<td class="admin_list"  align="center" >
					<a href="?act=question_list&id=<?php echo $this->_vars['list']['id']; ?>
">管理</a>&nbsp;&nbsp;
					<a href="?act=paper_edit&id=<?php echo $this->_vars['list']['id']; ?>
">修改</a>&nbsp;&nbsp;
					<a href="?act=paper_del&id=<?php echo $this->_vars['list']['id']; ?>
">删除</a>
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
        	<input type="button" class="admin_submit" onclick="javascript:location.href='?act=paper_add'" value="添加试卷"/>
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