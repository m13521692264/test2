//ios
if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
   //alert(navigator.userAgent); 
   
   //add a new meta node of viewport in head node
	head = document.getElementsByTagName('head');
	viewport = document.createElement('meta');
	viewport.name = 'viewport';
	viewport.content = 'target-densitydpi=device-dpi, width=' + 750 + 'px, user-scalable=no';
	head.length > 0 && head[head.length - 1].appendChild(viewport);    
   
}


$(function(){
	/*04BD+�鳤����ҳ ѡ���������*/
	function loadCardTabrr(){
		if($('.bd_view .head ul li.selected').size()<=0){
			return false;
		}
		var navSelected = $('.bd_view .head ul li.selected');
		$('.bd_view .head .f-line').css({left: navSelected[0].offsetLeft + 'px','width':navSelected.width()});
		
 		$('.bd_view .head li').hover(function(){
			$('.bd_view .head li').removeClass('selected');
			$(this).addClass('selected');
			$('.bd_view .body').hide().eq($(this).index()).show();
			$('.bd_view .head .f-line').stop().animate({left: $(this)[0].offsetLeft + 'px','width':$(this).width()},200);
		});
	}	
	/*load*/
	loadCardTabrr();/*��������*/	
})

$(function(){
	/*a_������ǩ�� ѡ���������*/
	function loadCardTabr(){
		if($('.card_tabr .head ul li.selected').size()<=0){
			return false;
		}
		var navSelected = $('.card_tabr .head ul li.selected');
		$('.card_tabr .head .f-line').css({left: navSelected[0].offsetLeft + 'px','width':navSelected.width()});
		
 		$('.card_tabr .head li').hover(function(){
			$('.card_tabr .head li').removeClass('selected');
			$(this).addClass('selected');
			$('.card_tabr .body').hide().eq($(this).index()).show();
			$('.card_tabr .head .f-line').stop().animate({left: $(this)[0].offsetLeft + 'px','width':$(this).width()},200);
		});
	}	
	/*load*/
	loadCardTabr();/*��������*/	
	
	//pie
	if($('.mypie').size()>0){
		$('.mypie').circliful();
	}
	
	/*���ǩ��*/
	$('.card_dialog .img i').click(function(){
		$(this).parent().fadeOut(function(){
			$(this).remove();
		});
	})
	
	//���۹���
	$('.comment_list li').each(function(){
		var obj = $(this);
		obj.find('.ico').click(function(){
			if(obj.hasClass('selected')){
				obj.removeClass('selected');
			}
			else{
				obj.addClass('selected');
			}
		})
	})
	
	$('.comment_list .bd dd').each(function(){
		var obj = $(this);
		obj.find('i').click(function(){
			var i = $(this).index();
			obj.find('i').removeClass('selected');
			obj.find('i:lt('+ (i+1) +')').addClass('selected');
			
			if(i==0){
				var txt = '�ܲ�';
			}
			if(i==1){
				var txt = '��';
			}
			if(i==2){
				var txt = 'һ��';
			}
			if(i==3){
				var txt = '��';
			}
			if(i==4){
				var txt = '�ܺ�';
			}
			obj.find('span').html(txt);
		})
	})
	
	//����������ʾ
	$('.comment_list .txtarea').each(function(){
		var max = 100;
		var obj = $(this);
		obj.find('textarea').keyup(function(){
			var l = $(this).val().length;
			var l2 = max-l > 0 ? max-l :0;
			if(l2==0){
				var num=$(this).val().substr(0,max);
				$(this).val(num); 
			}
			obj.find('h4 i').html(l2);
		})
	})
	
	//ǩ������
	$('.sign_mgr_d .body li').each(function(){
		
		var obj = $(this);
		obj.find('.ico').click(function(){
			if($('.layout').hasClass('dojs')) return false;
			
			if($(this).hasClass('selected')){
				$(this).removeClass('selected');
				obj.find('.ico h4').html('ȡ�����');
				obj.find('.txt h5').html('�����Ϊ�Ÿ���');
			}
			else{
				$(this).addClass('selected');
				obj.find('.ico h4').html('�Ÿ���');
				obj.find('.txt h5').html('�޼�¼');
			}
		})
	})
	
	$('.sign_mgr_t .body li').each(function(){
		
		var obj = $(this);
		obj.find('.ico').click(function(){
			if($('.layout').hasClass('dojs')) return false;
			
			if($(this).hasClass('selected')){
				$(this).removeClass('selected');
				obj.find('.ico h4').html('ȡ�����');
				obj.find('.txt h5').html('�����Ϊ����');
			}
			else{
				$(this).addClass('selected');
				obj.find('.ico h4').html('����');
				obj.find('.txt h5').html('�޼�¼');
			}
		})
	})
	//ǩ����ѡ��
	var updateSignMgrSize = function(){
		if($('.sign_mgr').size()>0){
			var n = $('.sign_mgr .body input:checked').size();
			$('#yx').html(n);
		}
	}
	updateSignMgrSize();
	$('.sign_mgr .body input').change(function(){
		updateSignMgrSize();
	})
	
	//ȫѡ
	$('.sign_mgr #qx').change(function(){
		if($(this).is(':checked')){
			$('.sign_mgr .body input').attr('checked','checked');
		}
		else{
			$('.sign_mgr .body input').removeAttr('checked');
		}
		updateSignMgrSize();
	})
	
	//ǩ���鿴��ʽ
	$('#qdfs').change(function(){
		var obj = $(this);
		var v = $(this).val();
		
		$('.sign_mgr .body dd').each(function(){
			if(v=='all'){
				$(this).show();
			}
			else if(v=='yes'){
				if($(this).find('input').is(':checked')){
					$(this).show();
				}
				else{
					$(this).hide();
				}
			}
			else if (v=='no'){
				if($(this).find('input').is(':checked')){
					$(this).hide();
				}
				else{
					$(this).show();
				}
			}
			else if (v=='link'){
				window.location.href = obj.data('url');
			}
		})
	})
	
	//ǩ��״̬
	$('.sign_mgr .body dd').each(function(){
		var obj = $(this);
		
		obj.find('.c3').click(function(){
			
			if($('.layout').hasClass('dojs')) return false;
			
			if($(this).hasClass('c3_1')){
				var c = 'c3_2';
			}
			else if($(this).hasClass('c3_2')){
				var c = 'c3_3';
			}
			else if($(this).hasClass('c3_3')){
				var c = 'c3_1';
			}
			$(this).removeClass().addClass('c3 '+ c);
			
			//״̬2
			if(c=='c3_1' || c=='c3_3'){
				obj.find('input').removeAttr('checked');
			}
			else{
				obj.find('input').attr('checked','checked');
			}
		})
	})
	//��������
	$('#pl').click(function(){
		if($('.layout').hasClass('dojs')){
			$('.layout').removeClass('dojs');
			$(this).html('��������');
			$('.sign_mgr input').attr('disabled','disabled');
			 //$('.sign_mgr form').reset();
			window.location.reload();
		}
		else{
			$('.layout').addClass('dojs');
			$(this).html('ȡ��');
			$('.sign_mgr input').removeAttr('disabled');
			
		}
	})
	
	//�鳤����ҳ�����˵�
	$('.user_head h2').click(function(){
		if($('.user_head .sub').hasClass('selected')){
			$('.user_head .sub').removeClass('selected');
			
			
		}
		else{
			$('.user_head .sub').addClass('selected');
			
			
		}
	})
	//ǩ��������
	$('.sign_info .body .tels').change(function(){
		var v = $(this).val();
		$('.sign_info .body .tele').attr('href', 'tel:'+v);
	})
	
	//ǩ��ͼƬ
	$('.sign_list .head .ico').click(function(){
		
		if($(this).hasClass('all')){
			var c = 'yes';
		}
		else if($(this).hasClass('yes')){
			var c = 'no';
		}
		else if($(this).hasClass('no')){
			var c = 'all';
		}
		
		$(this).removeClass().addClass('ico '+ c);
		
		$('.sign_mgr .body dd').each(function(){
			var obj = $(this);
			
			obj.show();
			if(c=='yes'){
				
				if(obj.find('input').is(':checked')){
					
				}
				else{
					obj.hide();
				}
			}
			else if(c=='no'){
				if(obj.find('input').is(':checked')){
					obj.hide();
				}
				else{
					
				}
			}
			else if (c=='all'){
				
			}
		})
		return false;
	})
	
	//ǩ���鿴ͼƬ
	$('.sign_list .body .img').click(function(){
		$('#ifm').attr('src',$(this).attr('href')).show();
		return false;
	})
	
	//������ǩ���鿴ͼƬ
	$('.card_list .addr').click(function(){
		$('#ifm').attr('src',$(this).attr('href')).show();
		return false;
	})
	
	//���۹���
	$('#zk').click(function(){
		if($(this).hasClass('open')){
			$(this).removeClass('open').html('ȫ��չ��');
			$('.comment_list li').removeClass('selected');
		}
		else{
			$(this).addClass('open').html('ȫ���պ�');
			$('.comment_list li').addClass('selected');
			
		}
	})
	
	//���۲鿴��ʽ
	$('#pjfs').change(function(){
		var obj = $(this);
		var v = $(this).val();
		if(v=='all'){
			$('.comment_list li').show();
		}
		else if(v=='yes'){
			$('.comment_list li').hide();
			$('.comment_list li.replyed').show();
		}
		else if (v=='no'){
			$('.comment_list li').hide();
			$('.comment_list li').not('.replyed').show();
		}
		else if (v=='link'){
			window.location.href = obj.data('url');
		}
	})
	
	
	$('.pic_view .slides').css('height', parseInt($(window).height())-90);
	//ͼƬ�鿴��
	if($('.pic_view').size()>0){
		setTimeout(function(){
		var glide = $('.pic_view').glide({

			//autoplay:true,//�Ƿ��Զ����� Ĭ��ֵ true�������Ҫ�����ô�ֵ

			animationTime:500, //��������Ч����ֻ�е������֧��CSS3��ʱ����Ч

			arrows:false, //�Ƿ���ʾ���ҵ�����
			//arrowsWrapperClass: "arrowsWrapper",//�����ͷ�������ⲿDIV����
			//arrowMainClass: "slider-arrow",//�����ͷ��������
			//arrowRightClass:"slider-arrow--right",//�����Ҽ�ͷ����
			//arrowLeftClass:"slider-arrow--left",//�������ͷ����
			arrowRightText:"",//�������ҵ��������ֻ��߷���Ҳ��������
			arrowLeftText:"",

			nav:false, //��������Ҳ���Ǳ�������ʾ��С����
			navCenter:true, //��������λ���Ƿ����
			navClass:"slider-nav",//���������ⲿdiv����
			navItemClass:"slider-nav__item", //������С�������ʽ
			navCurrentItemClass:"slider-nav__item--current" //��ѡ�к����ʽ
		});
		},10)
	}
	
	$('.pic_view li').click(function(){
		var obj = $(this);
		f = $(this).parent().parent().parent();
		if(obj.hasClass('jshow')){
			obj.removeClass('jshow');
			f.find('.pic_desc').slideDown();
			f.find('.user_head').slideDown();
		}
		else{
			obj.addClass('jshow');
			f.find('.pic_desc').slideUp();
			f.find('.user_head').slideUp();
		}
	})
	
	//����
	$('.user_head .ico_prev').not('.nojs').click(function(){
		
		history.back();
	})
})

$(function(){
    $('#signIn').on("click", function () {
        $.post("personal_ajax.php", {"act":"sign","signTime":$("#signInTime").html(),"signAddr":$("#signInAddr").html(),"signDesc":$("#signDesc").val(),"jobInfoId":$("#job_info_id").val(),"jobId":$("#job_id").val(),"type":$(this).attr('data-type'),"enrollId":$("#enroll_id").val()},
		function (data,textStatus)
		 {
                     alert(data);
                     location.reload();
		 }
	);
	});
        $('#signOut').on("click", function () {
        $.post("personal_ajax.php", {"act":"sign","signTime":$("#signOutTime").html(),"signAddr":$("#signOutAddr").html(),"signDesc":$("#signOutDesc").val(),"jobInfoId":$("#job_info_id").val(),"jobId":$("#job_id").val(),"type":$(this).attr('data-type'),"enrollId":$("#enroll_id").val()},
		function (data,textStatus)
		 {
                     alert(data);
                     location.reload();
		 }
	);
	});
        $('#signPic').on("change", function () {
            window.URL = window.URL || window.webkitURL;
                var fileList = $(".imglist");
		var files = this.files,
                img = new Image();
		if(window.URL){
			//File API
			  alert(files[0].name + "," + files[0].size + " bytes");
		      img.src = window.URL.createObjectURL(files[0]); //����һ��object URL����������ı���·��
		      img.width = 200;
		      img.onload = function(e) {
		         window.URL.revokeObjectURL(this.src); //ͼƬ���غ��ͷ�object URL
		      }
                      alert(img.src);
		      fileList.appendChild(img);
		}else if(window.FileReader){
			//opera��֧��createObjectURL/revokeObjectURL������������FileReader����������
			var reader = new FileReader();
			reader.readAsDataURL(files[0]);
			reader.onload = function(e){
				alert(files[0].name + "," +e.total + " bytes");
				img.src = this.result;
				img.width = 200;
				fileList.appendChild(img);
			}
		}else{
			//ie
			obj.select();
			obj.blur();
			var nfile = document.selection.createRange().text;
			document.selection.empty();
			img.src = nfile;
			img.width = 200;
			img.onload=function(){
		      alert(nfile+","+img.fileSize + " bytes");
		    }
			fileList.appendChild(img);
		}
        });
	//�鳤����ҳ
		$('.ui-select select').change(function(){
			var obj = $(this);
			//alert($(this).val());
			obj.parent().find('span').html($(this).find('option:selected').text());			
		})

	//��̬��ʾʱ��

		window.setInterval(function () {
			var _now = new Date();
			$(".ui-current-time-show").html(_now.getHours() + ":" + _now.getMinutes() +":" + _now.getSeconds());
		},1000);
	//��ʾ��ǰ��ַ
	showLocalAddress($(".ui-current-address"));

	//ǩ������ҳ������select
	$(".scroll-select").find(".prev").on("click",function (event) {
		var _select = $(this).closest(".scroll-select").find(".ui-show-select");
		var index = _select.prop('selectedIndex');
		if(index>0)
		_select.find("option").eq(index-1).attr("selected",true);
	});

	$(".scroll-select").find(".next").on("click",function (event) {
		var _select = $(this).closest(".scroll-select").find(".ui-show-select");
		var index = _select.prop('selectedIndex');
		if(index<_select.find("option").length)
		_select.find("option").eq(index+1).attr("selected",true);
	});
})
//�򿪵���
function openDiv(id){
	$('#'+ id).show();
	showCurrent($(".ui-current-time-static"));
	showLocalAddress($(".ui-current-address"));
	return false;
}
//�رյ���
function closeDiv(id){
	$('#'+ id).hide();
	return false;
}

//��ǰʱ��
function showCurrent(ele) {
	var _now = new Date();
	ele.html(_now.getHours() + ":" + _now.getMinutes() +":" + _now.getSeconds());
}

function showLocalAddress(ele) {
	$.ajax({
		url: "http://api.map.baidu.com/highacciploc/v1?qterm=pc&ak=1wvtkXp4ETKwIy3Byu2Ou3cOYBGuqdYL&coord=bd09ll&callback_type=jsonp",
		dataType: 'jsonp',
		success:function (data) {
			if(data){
				var lat = data.content.location.lat,
					lng = data.content.location.lng;
				$.ajax({
					url: "http://api.map.baidu.com/geocoder/v2/?ak=1wvtkXp4ETKwIy3Byu2Ou3cOYBGuqdYL&&location="+ lat + "," + lng +",&output=json&pois=1",
					dataType: 'jsonp',
					success:function (data) {
						ele.text(data.result.formatted_address);
					}
				});
			}
		}
	});
}


