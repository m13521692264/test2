<?php /* V2.10 Template Lite 4 January 2007  (c) 2005-2007 Mark Dickenson. All rights reserved. Released LGPL. 2016-09-20 16:51 CST */  $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_header.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
<link href="css/date_input.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.date_input.js" type='text/javascript' language="javascript"></script>
<script type="text/javascript">
$(document).ready(function()
{
//����
	$(function() { 
	$(".date_input").date_input(); 
	}); 
}); 
</script>
<script type="text/javascript" >
$(document).ready(function()
{
//��֤���ֹ��
	$("#sub1").click(function()
	{
	 if ($("#title").val()==""){alert ("����д������"); return false;}
	 if ($("#text_content").val()==""){alert ("����д����");return false;}
	 $("#FormData").submit();
	});
	//ͼƬ
	$("#sub2").click(function()
	{
	 if ($("#title").val()==""){alert ("����д������"); return false;}
	 if ($("#img_file").val()=="" && $("#img_path").val()==""){alert ("���ϴ�ͼƬ����дͼƬ·��");return false;}
	 $("#FormData").submit();
	});	
	//����
	$("#sub3").click(function()
	{
	 if ($("#code_content").val()==""){alert ("����д���������"); return false;}
	 $("#FormData").submit();
	});	
	//FLASH
	$("#sub4").click(function()
	{
	  if ($("#title").val()==""){alert ("����д������"); return false;}
	 if ($("#flash_file").val()=="" && $("#flash_path").val()==""){alert ("���ϴ�FLASH����дFLASH·��");return false;}
	 if ($("#flash_width").val()=="" || $("#flash_height").val()==""){alert ("����д���͸�");return false;}
	 $("#FormData").submit();
	});	
	
//����
	$("#sub5").click(function()
	{
	  if ($("#title").val()==""){alert ("����д������"); return false;}
	 if ($("#floating_file").val()=="" && $("#floating_path").val()==""){alert ("���ϴ�����д·��");return false;}
	 if ($("#floating_width").val()=="" || $("#floating_height").val()==""){alert ("����д���͸�");return false;}
	  if ($("#floating_left").val()=="" && $("#floating_right").val()==""){alert ("����д�������Ҿ�");return false;}
	  if ($("#floating_top").val()==""){alert ("����д����");return false;}
	  if ($("#floating_top").val()>800){alert ("���೬����800������������޷���ȷ��ʾ���Ƽ�������300��");return false;}
	 $("#FormData").submit();
	});	
	//��Ƶ
	$("#sub6").click(function()
	{
	  if ($("#title").val()==""){alert ("����д������"); return false;}
	 if ($("#video_file").val()=="" && $("#video_path").val()==""){alert ("���ϴ�����д·��");return false;}
	 if ($("#video_width").val()=="" || $("#video_height").val()==""){alert ("����д���͸�");return false;}
	 $("#FormData").submit();
	});	
}); 
</script>
<script type="text/javascript" >
$(document).ready(function()
{
	var add_alias="<?php echo $_GET['alias']; ?>
";
	//�ж��ǲ������Ӻ�������� �ģ�����ǣ���ָ�������
	if (add_alias=="")
	{
	selChange("<?php echo $this->_vars['ad_category']['0']['id']; ?>
,<?php echo $this->_vars['ad_category']['0']['type_id']; ?>
,<?php echo $this->_vars['ad_category']['0']['alias']; ?>
");	
	}
	else
	{
	selChange("<?php echo $_GET['category_id']; ?>
,<?php echo $_GET['type_id']; ?>
,<?php echo $_GET['alias']; ?>
");
	}	
	$("#category").change(function(){
	 selChange($(this).val());
	});
	function selChange(obj)
	{
	var str=obj.split(",");
	$("#category_id").val(str[0]);
	$("#type_id").val(str[1]);
	$("#alias").val(str[2]);
	$(".adshow").hide();
	$("#show"+str[1]).show();
	}
	$(":radio[name=floating_type]").click(function(){
	if ($(":radio[name=floating_type][checked]").val()=="1")
	{
	$("#show_url").show();
	}
	else
	{
	$("#show_url").hide();
	}
	});
	$(".choose_subsite").change(function(){
		$.get('admin_ajax.php?act=ajax_get_ad_categroy_by_subsite&subsite_id='+$(this).val(),function(data){
			$("#category").html(data);
		});
	});
	
}); 
</script>
<div class="admin_main_nr_dbox">
<div class="pagetit">
	<div class="ptit"> <?php echo $this->_vars['pageheader']; ?>
</div>
	<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("ads/admin_ad_nav.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
  <div class="clear"></div>
</div>
<div class="toptip">
	<h2>��ʾ��</h2>
	<p>
�ϴ����ļ�����ͨ��FTP�ϴ�
����дԶ�̵�ַ��ʱ�򣬽���ʹ�á�/����http:// ��  ��ͷ�ľ���·����
</p>
</div>
<div class="toptit">�������</div>
<form action="?act=ad_add_save" method="post" enctype="multipart/form-data"  name="FormData" id="FormData" >
<table width="100%" border="0" cellpadding="3" cellspacing="3">
              <tr>
                <td width="100" align="right">������(����)��</td>
                <td><input name="title" type="text" class="input_text_400" id="title" maxlength="100"/> <span class="admin_note">������ֻΪʶ����ϲ�ͬ�����Ŀ֮�ã������ڹ������ʾ</span></td>
              </tr>
			  <tr>
                <td align="right">��ʾ״̬��</td>
                <td>
				<label>
                  <input name="is_display" type="radio" value="1" checked="checked" />
                  ����</label>&nbsp;&nbsp;&nbsp;&nbsp;<label>
                  <input type="radio" name="is_display" value="0" />
ֹͣ </label></td>
              </tr>
               <tr>
			    <td align="right">���ӵ���</td>
			    <td>
			    	<label ><input name="subsite_id" class="choose_subsite" type="radio" value="0"  <?php if ($this->_vars['QISHI']['subsite_id'] == "0"): ?>checked="checked"<?php endif; ?> />ȫվ</label>
					&nbsp;&nbsp;&nbsp;
					<?php if (count((array)$this->_vars['subsite'])): foreach ((array)$this->_vars['subsite'] as $this->_vars['li']): ?>
					<label ><input name="subsite_id" class="choose_subsite" type="radio" value="<?php echo $this->_vars['li']['s_id']; ?>
" <?php if ($this->_vars['QISHI']['subsite_id'] == $this->_vars['li']['s_id']): ?>checked="checked"<?php endif; ?> /><?php echo $this->_vars['li']['s_sitename']; ?>
</label>
					&nbsp;&nbsp;&nbsp;
					<?php endforeach; endif; ?>
				  
				  </td>
			    </tr>
              <tr>
                <td align="right">ѡ����ࣺ</td>
                <td><select name="category"   id="category"  >           
  					<?php if (count((array)$this->_vars['ad_category'])): foreach ((array)$this->_vars['ad_category'] as $this->_vars['li']): ?>		
                  <option value="<?php echo $this->_vars['li']['id']; ?>
,<?php echo $this->_vars['li']['type_id']; ?>
,<?php echo $this->_vars['li']['alias']; ?>
" <?php if ($_GET['alias'] == $this->_vars['li']['alias']): ?>selected="selected"<?php endif; ?>><?php echo $this->_vars['li']['categoryname']; ?>
</option>
				 <?php endforeach; endif; ?>
                
                </select>
				<input name="category_id" id="category_id" type="hidden" value="" />
				<input name="type_id" id="type_id" type="hidden" value="" />
				<input name="alias" id="alias" type="hidden" value="" />				</td>
              </tr>
              <tr>
                <td align="right">��ʾ˳��</td>
                <td><input name="show_order" type="text" class="input_text_200" id="show_order"  value="50" maxlength="3" /> <span class="admin_note">����Խ��Խ��ǰ</span></td>
              </tr>
  <tr>
    <td align="right">��ʼʱ�䣺</td>
    <td>
      <input name="starttime" type="text" class="input_text_200 date_input"   maxlength="10"  value="<?php echo $this->_vars['datefm']; ?>
"  />  <span class="admin_note">���ù����ʼ��Ч��ʱ�䣬��ʽ yyyy-mm-dd������Ϊ��������ʼʱ��</span></td>
    </tr>
  <tr>
    <td align="right">����ʱ�䣺</td>
    <td>
      <input name="deadline" type="text" class="input_text_200 date_input" id="deadline" maxlength="10"  /> <span class="admin_note">���ù���������ʱ�䣬��ʽ yyyy-mm-dd������Ϊ�����ƽ���ʱ��</span></td>
    </tr>
   
  <tr>
    <td align="right">��ע��</td>
    <td><textarea name="note" id="note" style="width:300px; height:50px; font-size:12px; line-height:180%"></textarea></td>
    </tr>
    </table>
<div class="adshow" id="show1">
 <div class="toptit">���ֹ��</div>
 <table width="100%" border="0" cellpadding="3" cellspacing="3" >
                <tr>
                  <td width="100" align="right">��������(����)��</td>
                  <td><input name="text_content" type="text" class="input_text_400" id="text_content"  />  <span class="admin_note">���ֹ�����ʾ����</span></td>
                </tr>
                <tr>
                  <td align="right">�������ӣ�</td>
                  <td><input name="text_url" type="text" class="input_text_400" id="text_url"  />  <span class="admin_note">��:http://www.74cms.com</span></td>
                </tr>
                <tr>
                  <td align="right">������ɫ��</td>
                  <td>
				  
				  <div class="color_layer">	
		<div id="color_box" onclick="color_box_display()" ></div><input type="hidden" name="tit_color" id="tit_color" >
		<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_select_color.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>		</div>				  </td>
                </tr>
      </table>
	  <div style="padding-left:110px; padding-top:10px;">
	  <input type="button"  id="sub1" value="ȷ���ύ" class="admin_submit"   />
      <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
	  </div>
     
	</div>
<div class="adshow" id="show2">			
	 <div class="toptit">ͼƬ���</div>
	
	<table width="100%" border="0" cellpadding="3" cellspacing="3">
	
				<tr>
                  <td width="100" align="right">�����ϴ���</td>
                  <td >
				 <input name="img_file" type="file"   id="img_file" style="font-size:12px; height:24px; width:273px;" />
			 <span class="admin_note">(������ʽΪ��gif/jpg/bmp/png���ļ���С��1000KB)</span>				  </td>
                </tr>
                <tr>
                  <td width="100" align="right">��ͼƬ��ַ��</td>
                  <td ><input name="img_path" type="text" class="input_text_200" id="img_path" maxlength="250"/> <span class="admin_note">�磺/images/logo.gif �� http://www.baidu.com/img/baidu_logo.gif</span></td>
                </tr>
                <tr>
                  <td align="right">ͼƬ���ӣ�</td>
                  <td><input name="img_url" type="text" class="input_text_200" id="img_url" maxlength="250"/>
				  <span class="admin_note">��:http://www.74cms.com</span>
				  </td>
                </tr>
                <tr>
                  <td align="right">ͼƬ˵�����֣�</td>
                  <td><input name="img_explain" type="text" class="input_text_200" id="img_explain" maxlength="250"/></td>
                </tr>
				 <tr>
                  <td align="right">��ԱUID��</td>
                  <td>
				  
				  <input name="img_uid" type="text" class="input_text_200" id="img_uid" maxlength="10"/>
				  
				  <span class="admin_note">���û�ԱUID�󣬵�����ƶ���ͼƬ�Ͻ�����ʾ��ص�ְλ����ҵ��Ϣ</span>
				  </td>
                </tr>
      </table>
		  <div style="padding-left:110px; padding-top:10px;">
		  <input type="button"  id="sub2" value="ȷ���ύ" class="admin_submit"   />
		  <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
		  </div>
	</div>
	<div class="adshow" id="show3">	
		 <div class="toptit">������</div>
		<table width="100%" border="0" cellpadding="3" cellspacing="3">
                <tr>
                  <td width="100" align="right" valign="top"> ����(����):</td>
                  <td><textarea name="code_content" id="code_content" style="width:300px; height:50px; font-size:12px; line-height:180%"></textarea>              <span class="admin_note">��ֱ��������Ҫչ�ֵĹ�����</span></td>
                </tr>
      </table>
	   	<div style="padding-left:110px; padding-top:10px;">
		  <input type="button"  id="sub3" value="ȷ���ύ" class="admin_submit"   />
		  <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
	  </div>
	</div>
		<div class="adshow" id="show4">
		
		 <div class="toptit">Flash���</div>
		
		<table width="100%" border="0" cellpadding="3" cellspacing="3">
		<tr>
                  <td width="100" align="right">�����ϴ���</td>
          <td >
				 <input name="flash_file" type="file"   id="flash_file" style="font-size:12px; height:24px; width:273px;" />
                 <span style="color: #666666">(������ʽΪ��swf���ļ���С��1000KB)</span></td>
          </tr>
                <tr>
                  <td width="100" align="right">����Flash��ַ��</td>
                  <td><input name="flash_path" type="text" class="input_text_200" id="flash_path" maxlength="250"/>  <span class="admin_note">�磺/images/123.swf �� http://www.74cms.com/123.swf</span></td>
                </tr>
                <tr>
                  <td align="right">Flash����(����)��</td>
                  <td><input name="flash_width" type="text" class="input_text_200" id="flash_width" maxlength="5" />
                  px</td>
                </tr>
                <tr>
                  <td align="right">Flash�߶�(����)��</td>
                  <td><input name="flash_height" type="text" class="input_text_200" id="flash_height" maxlength="5"   />
                  px</td>
                </tr>
          </table>
		  <div style="padding-left:110px; padding-top:10px;">
		  <input type="button"  id="sub4" value="ȷ���ύ" class="admin_submit"   />
		  <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
		  </div>
	</div>
					<div class="adshow" id="show5">
					<div class="toptit">�������</div>
				<table width="100%" border="0" cellpadding="3" cellspacing="3">
                <tr>
                  <td width="100" align="right">���ͣ�</td>
                  <td><label>
                    <input name="floating_type" type="radio" value="1" checked="checked"  />
ͼƬ</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label>
                    <input type="radio" name="floating_type" value="2"  />
Flash </label></td>
                  </tr>
				  <tr>
                  <td width="100" align="right">�����ϴ���</td>
                  <td >
				 <input name="floating_file" type="file" id="floating_file" style="font-size:12px; height:24px; width:273px;" />
			 <span class="admin_note">(������ʽΪ��gif/jpg/bmp/png/swf���ļ���С��1000KB)</span></td>
                </tr>
                <tr>
                  <td align="right">����·����</td>
                  <td><input name="floating_path" type="text" class="input_text_200" id="floating_path" maxlength="250"/></td>
                  </tr>
                <tr id="show_url">
                  <td align="right" >���ӵ�ַ��</td>
                  <td><input name="floating_url" type="text" class="input_text_200" id="floating_url" maxlength="250"/></td>
                  </tr>
                <tr>
                  <td align="right">����(����)��</td>
                  <td><input name="floating_width" type="text" class="input_text_200" id="floating_width" maxlength="5"   />
                  px</td>
                  </tr> 
                <tr>
                  <td align="right">�߶�(����)��</td>
                  <td><input name="floating_height" type="text" class="input_text_200" id="floating_height" maxlength="5"   />
                  px</td>
                  </tr>
                   <tr>
                  <td align="right">���(ѡ��)��</td>
                  <td><input name="floating_left" type="text" class="input_text_200" id="floating_left"    value="" maxlength="5"   />
  px(������Ҿ�ѡ��һ�������������Ϊ0����˸���������ม����������Ϊ100����˸������ھ�����������100���ش�������)</td>
                  </tr>
				   <tr>
                  <td align="right">�Ҿ�(ѡ��)��</td>
                  <td><input name="floating_right" type="text" class="input_text_200" id="floating_right"   value="" maxlength="5"  />
  px(������Ҿ�ѡ��һ�������Ҿ�����Ϊ0����˸��������Ҳม����������Ϊ100����˸������ھ���������Ҳ�100���ش�������)</td>
                  </tr>
				   <tr>
                  <td align="right">����(����)��</td>
                  <td><input name="floating_top" type="text" class="input_text_200" id="floating_top"  value="" maxlength="5"  />
  px(�˸���������������˵ľ��룬���ж�������������ò�ͬ�Ķ��࣬���ⱻ�ڸ�)</td>
                  </tr>
            </table>
				 <div style="padding-left:110px; padding-top:10px;">
		  <input type="button"  id="sub5" value="ȷ���ύ" class="admin_submit"   />
		  <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
		  </div>
				</div>	
				<div class="adshow" id="show6">			
	 <div class="toptit">��Ƶ���</div>
	
	<table width="100%" border="0" cellpadding="3" cellspacing="3">
	
				<tr>
                  <td width="100" align="right">�����ϴ���</td>
                  <td >
				 <input name="video_file" type="file"   id="video_file" style="font-size:12px; height:24px; width:273px;" />
            <span class="admin_note">(������ʽΪ��swf/flv/f4v���ļ���С��5000KB,���ļ����FTP�ϴ�)</span></td>
                </tr>
                <tr>
                  <td width="100" align="right">����д·����</td>
                  <td ><input name="video_path" type="text" class="input_text_200" id="video_path" /> <span class="admin_note">�磺/images/logo.swf �� http://www.baidu.com/img/baidu_logo.swf</span></td>
                </tr>
               <tr>
                  <td align="right">��Ƶ����(����)��</td>
                  <td><input name="video_width" type="text" class="input_text_200" id="video_width" maxlength="5" />
                  px</td>
                </tr>
                <tr>
                  <td align="right">��Ƶ�߶�(����)��</td>
                  <td><input name="video_height" type="text" class="input_text_200" id="video_height" maxlength="5"   />
                  px</td>
                </tr>
      </table>
		  <div style="padding-left:110px; padding-top:10px;">
		  <?php echo $this->_vars['inputtoken']; ?>

		  <input type="button"  id="sub6" value="ȷ���ύ" class="admin_submit"   />
		  <input name="submit22" type="button" class="admin_submit"    value="�� ��" onclick="Javascript:window.history.go(-1)"/>
		  </div>
	</div>
</form>
</div>
<?php $_templatelite_tpl_vars = $this->_vars;
echo $this->_fetch_compile_include("sys/admin_footer.htm", array());
$this->_vars = $_templatelite_tpl_vars;
unset($_templatelite_tpl_vars);
 ?>
</body>
</html>