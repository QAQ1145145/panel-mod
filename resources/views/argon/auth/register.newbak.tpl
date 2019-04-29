<!DOCTYPE html>
<html lang="zh">
 <head> 
  <meta charset="UTF-8" /> 
  <meta content="IE=edge" http-equiv="X-UA-Compatible" /> 
  <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport" /> 
  <meta name="theme-color" content="#3f51b5" /> 
  <title>{$config["appName"]}</title> 
  <link href="/static/css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="/static/css/material-dash.css" rel="stylesheet" /> 
  <link rel="stylesheet" href="/static/css/animate.min.css" /> 
  <link href="/static/css/sweetalert.css" rel="stylesheet" /> 
  <script type="text/javascript" src="/static/js/sweetalert.min.js"></script> 
  <link href="/static/css/bad06cf570b944349541ccad5a6f7f24.css" rel="stylesheet" /> 
  <link rel="shortcut icon" href="/theme/material/images/users/favicon.png" type="image/x-icon" /> 
  <style>
@import url(/static/css/font-awesome.min.css);
   
@font-face { 
	font-family: title-speed;
	src: url('/fonts/LobsterTwo-Regular.otf');
} 
   
.navbar-brand{
  font-family: title-speed;
  font-size: 1.2rem;
  font-weight: 500;
  
 }

   
   
</style>
 </head>  
 <body class="off-canvas-sidebar"> 
  <nav class="navbar navbar-primary navbar-transparent navbar-absolute"> 
   <div class="container"> 
    <div class="navbar-header"> 
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> 
     <a class="navbar-brand animated swing" href="/">{$config["appName"]}</a> 
    </div> 
    <div class="collapse navbar-collapse"> 
     <ul class="nav navbar-nav navbar-right"> 
      <li> <a href="../"> <i class="material-icons">dashboard</i> 首页 </a> </li> 
      <li class=" active "> <a href="register"> <i class="material-icons">person_add</i> 注册 </a> </li> 
      <li class=""> <a href="login"> <i class="material-icons">fingerprint</i> 登录 </a> </li> 
      <li class=""> <a href="/user#download"> <i class="material-icons">turned_in_not</i> 下载 </a> </li> 
     </ul> 
    </div> 
   </div> 
  </nav> 
  <div class="wrapper wrapper-full-page"> 
   <div class="full-page register-page" filter-color="black" data-image="https://img.xjh.me/random_img.php?type=bg&amp;ctype=nature&amp;return=302"> 
    <div style="display:none;">
     <img src="/static/picture/mimi.jpg" />
    </div> 
    <div class="container"> 
     <div class="row"> 
      <div class="col-md-10 col-md-offset-1"> 
       <div class="card card-signup  animated slideInRight"> 
        <h2 class="card-title text-center">Register</h2> 
        <div class="row"> 
         <div class="col-md-5 col-md-offset-1"> 
          <div class="card-content"> 
           <div class="info info-horizontal"> 
            <div class="icon icon-rose"> 
             <i class="material-icons">timeline</i> 
            </div> 
            <div class="description"> 
             <h4 class="info-title">游戏</h4> 
             <p class="description"> 提供绝地求生，战地，彩虹六号，黑沙等热门游戏加速服务，无论是PC还是PS4, XBox平台均可使用 </p> 
            </div> 
           </div> 
           <div class="info info-horizontal"> 
            <div class="icon icon-primary"> 
             <i class="material-icons">code</i> 
            </div> 
            <div class="description"> 
             <h4 class="info-title">娱乐</h4> 
             <p class="description"> 多条高速线路，可观看油管4k视频，速度快，无缓冲 </p> 
            </div> 
           </div> 
           <div class="info info-horizontal"> 
            <div class="icon icon-info"> 
             <i class="material-icons">group</i> 
            </div> 
            <div class="description"> 
             <h4 class="info-title">学习</h4> 
             <p class="description"> 为开发学习助力，可用于python, java, Android, IOS, js, node, php等开发文档的搜索与使用 </p> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="col-md-5"> 
          <div class="social text-center"> 
           <button class="btn btn-just-icon btn-round btn-twitter"> <i class="fa fa-twitter"></i> </button> 
           <button class="btn btn-just-icon btn-round btn-dribbble"> <i class="fa fa-dribbble"></i> </button> 
           <button class="btn btn-just-icon btn-round btn-facebook"> <i class="fa fa-facebook"> </i> </button> 
           <button class="btn btn-just-icon btn-round btn-facebook"> <i class="fa fa-google"> </i> </button> 
          </div> 
          <form class="form" method="" action=""> 
           <div class="card-content"> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">face</i> </span> 
             <div class="form-group is-empty">
              <input placeholder="昵称" id="name" class="form-control" 　type="text" />
              <span class="material-input"></span>
             </div> 
            </div> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">email</i> </span> 
             <div class="form-group is-empty">
              <input placeholder="邮箱" id="email" class="form-control" 　type="text" />
              <span class="material-input"></span>
             </div> 
            </div> 
            <div class="input-group">
              {if $enable_email_verify == 'true'} 
             <span class="input-group-addon"> <i class="material-icons">visibility</i> </span> 
             <div class="form-group"> 
              <input placeholder="验证码" id="email_code" class="form-control" type="text" /> 
              <button id="email_verify" class="btn btn-info" style="margin-top:-40px;width:38%;float:right; margin-bottom:0px; z-index:99; padding: 10px 5px" type="button">获取验证码</button> 
             </div> {/if} 
            </div> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">lock_outline</i> </span> 
             <div class="form-group is-empty">
              <input placeholder="密码" id="passwd" class="form-control" type="password" />
              <span class="material-input"></span>
             </div> 
            </div> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">lock_outline</i> </span> 
             <div class="form-group is-empty">
              <input placeholder="重复密码" id="repasswd" class="form-control" type="password" />
              <span class="material-input"></span>
             </div> 
            </div> 
            <div class="bimoe-form-group" style="display:none"> 
             <span class="bimoe-lxfs"> <select class="bimoe-select" id="imtype"> <option value="1">微信</option> <option value="2" selected="">QQ</option> <option value="3">Google+</option> <option value="4">Telegram</option> </select> </span>
            </div> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">insert_emoticon</i> </span> 
             <div class="form-group is-empty">
              <input placeholder=" 联系账号" id="wechat" class="form-control" type="text" />
              <span class="material-input"></span>
             </div> 
            </div> 
            <div class="input-group"> 
             <span class="input-group-addon"> <i class="material-icons">label_outline</i> </span> 
             <div class="form-group is-empty">
              <input placeholder="邀请码" id="code" class="form-control" type="text" value="{$code}">
              <span class="material-input"></span>
             </div> 
            </div> 
           </div> 
           <div class="footer text-center"> 
            <button class="btn btn-primary btn-round" id="reg" type="button"> <i class="material-icons">favorite</i> 注册 
             <div class="ripple-container"></div></button> 
           </div> 
          </form> 
         </div> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <div class="full-page-background" style="background-image: url(https://img.xjh.me/random_img.php?type=bg&amp;ctype=nature&amp;return=302) "></div>
   </div> 
  </div> 
  <script type="text/javascript" src="/static/js/jquery-2.2.1.min.js"></script> 
  <script>
  function checkByteLength(str,minlen,maxlen) {
    if (str == null) return false;
    //为空返回false
    var l = str.length;
    var blen = 0;
    for(i=0; i<l; i++) {
      //循环取得检验值的长度
      if ((str.charCodeAt(i) & 0xff00) != 0) {
        blen ++;
      }
      blen ++;
    }
    if (blen > maxlen || blen < minlen) {
      //判断长度是否合法
      return false;
    }
    return true;
  }


  function validateUsername(value){
    var patn = /^[a-zA-Z]+[a-zA-Z0-9]+$/; 
    if(!checkByteLength(value,4,16)) return false;
    
    //if(!patn.test(value)){
    var pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+$/gi;
	if (pattern.test(value)) {
      return true; 
    }else{
      return false;
    }
    
  }
 
/*
function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 *1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else {
        var expires = "";
    }
    document.cookie = name + "=" + value + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1,c.length);
        }
        if (c.indexOf(nameEQ) == 0) {
            return c.substring(nameEQ.length,c.length);
        }
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name,"",-1);
}
*/
  /*
   $(document).ready(function(){
     
      var tos = document.querySelector('input[name="optionsCheckboxes"]');
      
     
      tos.onchange = function() {
       if(tos.checked) {
        $("#myModal").modal();
        
       } else {
         
       }
	};
    
     
   })
  */
  
    $(document).ready(function(){
          var affid = 0;

          function register(){
            
          if(!(typeof affid === 'number' && affid%1 === 0)) {
            swal('Oops...', "邀请affid不合法",'error');

            return false;
          }
            
          if(!validateUsername($("#name").val())) {
  　　　　　swal('Oops...', "用户名不合法,仅支持4~16位字母数字或中文",'error');

            return false;
          }
            
          /** 迷改 邮箱验证 */
            if($("#email").val()==null || $("#email").val()==''){
              swal('Oops...', "邮箱不能为空！",'error');
              return;
            }

            var email_arr = $("#email").val().split('@');
            var email_blacklist = ["qq.com","sina.com", "163.com","sina.cn", "gmail.com", "live.com", "163.com", "139.com", "outlook.com", "189.cn", "foxmail.com", "vip.qq.com", "hotmail.com", "126.com", "aliyun.com", "yeah.net", "sohu.com", "live.jp", "msn.com", "icloud.com"];
            if ($.inArray(email_arr[1], email_blacklist) == "-1") {
              swal('Oops...', "暂不支持此邮箱，请更换如QQ、谷歌、新浪、网易等常见邮箱。",'error');
              return false;
            }  

            $.ajax({
                type:"POST",
                url:"/auth/register",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    name: $("#name").val(),
                    aff:  affid,
                    passwd: $("#passwd").val(),
                    repasswd: $("#repasswd").val(),
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val(),
					code: $("#code").val(),
					emailcode: $("#email_code").val()                },
                success:function(data){
                    if(data.ret == 1){
                        swal({
                          title: data.msg, 
                          text: "欢迎使用叮当加速", 
                          type:"success"
                        },
                        function(){
   						 window.location.href = '/auth/login';
                        });
                    }else{
                    	swal(
                        'Oops...',
                        data.msg,
                        'error'
                                );
                    }
                },
                error:function(jqXHR){
			swal("发生错误："+jqXHR.status);
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                $("#tos_modal").modal();
            }
        });
		
		
		$("#reg").click(function(){
            register();
        });
		

    })
</script> 
  <script>
var wait=60;
function time(o) {
		if (wait == 0) {
			o.removeAttr("disabled");
            //document.getElementById("litheader").className = "";
            //document.getElementById("email_verify").className = "";
			o.text("获取验证码");
			wait = 60;
		} else {
            //document.getElementById("litheader").className = "poweron";
            //document.getElementById("email_verify").className = "denied";
			o.attr("disabled","disabled");
			o.text("重新发送(" + wait + ")");
			wait--;
			setTimeout(function() {
				time(o)
			},
			1000)
		}
	}
/*
function checkByteLength(str,minlen,maxlen) {
  if (str == null) return false;
  //为空返回false
  var l = str.length;
  var blen = 0;
  for(i=0; i<l; i++) {
  //循环取得检验值的长度
  if ((str.charCodeAt(i) & 0xff00) != 0) {
  	blen ++;
  }
  	blen ++;
  }
  if (blen > maxlen || blen < minlen) {
  //判断长度是否合法
  	return false;
  }
  return true;
}
  

function validateUsername(value){
    var patn = /^[a-zA-Z]+[a-zA-Z0-9]+$/; 
    if(!checkByteLength(value,4,16)) return false;
      if(!patn.test(value)){
      return false;
    }
    return true; 
}
*/

    $(document).ready(function () {
      	//swal('Oops...', "当前站点为新版本测试站点，\n正式使用请访问 https://v3.mimi.ooo/ ",'error');
      
        $("#email_verify").click(function () {
            if(!validateUsername($("#name").val())) {
  　　　　　	swal('Oops...', "用户名不合法,仅支持4~16位英文字母和数字",'error');
              return false;
            }

         	
          	
			time($("#email_verify"));
         
          
            $.ajax({
                type: "POST",
                url: "send",
                dataType: "json",
                data: {
                    email: $("#email").val()
                },
                success: function (data) {
                    if (data.ret) {
					  swal("发送成功", data.msg, 'success');
                    } else {
						swal('Oops...', data.msg,'error');
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
			$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script> 
  <script src="/static/js/perfect-scrollbar.jquery.min.js"></script> 
  <script src="/static/js/material-dashboard.js"></script> 
  <script src="/static/js/material.min.js"></script> 
  <script type="text/javascript" src="/static/js/love.js"></script>   
 </body>
</html>