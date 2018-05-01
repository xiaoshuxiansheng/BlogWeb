function deleteUser(userId){
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        //document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
        var json=JSON.parse(xmlhttp.responseText);  
        alert(userId);  
        }
      }
      xmlhttp.open("GET","admin/userdelete?userId="+userId,true);
      xmlhttp.send();
}

function openUserDetail(){
	  window.open ("test", "newwindow", "height=100, width=400, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
	 }
jQuery(document).ready(function($) {
	$('.btn.btn-w-m.btn-danger.userDetail').click(function(){
		$('.theme-popover-mask').fadeIn(100);
		//$('.theme-popover').slideDown(200);
		$(this).next().slideDown(200);//为什么这里取又是next
		var userId=($(this).attr("userId"));//为什么这里取值是this
		$.get("admin/getUserdetail?userId="+userId,function(data,status){
			 $('strong#signTime').text("签到时间："+data.signtime);
			 if (data.isvacate!=0){
				 $('strong#isVacate').text("是否申请请假：已经申请");
			 }
			 else{
				 $('strong#isVacate').text("是否申请请假：无申请");
			 }
			 $('strong#applyreason').text("请假原因："+data.applyreason);
			 $('strong#applytime').text("请假时间："+data.applytime);
			 
			 if (data.isagree!=0){
				 $('strong#isagree').text("是否批准：批准");
				 
			 }
			 else{
				$('strong#isagree').text("是否批准：不批准");
			 }
		});
		//管理员操作，是否同意
		//同意
		 $('.btn-agree').click(function(){
			 $.get("admin/Agree?userId="+userId,function(data,status){
				 $('strong#isagree').text("是否批准：批准");
			});
				
			})
			
			//禁止
			 $('.btn-ban').click(function(){
			 $.get("admin/Ban?userId="+userId,function(data,status){
				 $('strong#isagree').text("是否批准：不批准");
			});
				
			})
		 
		
	})
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
		//$(this).parent().next().slideUp(200);
	})
	
	

})