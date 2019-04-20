





{include file='user/newui_header.tpl'}

{$ssr_prefer = URL::SSRCanConnect($user, 0)}


  <main class="profile-page">
    <section class="section-profile-cover section-shaped my-0">
      <div class="shape shape-style-1 shape-default shape-skew alpha-4">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </section>
    <section class="section section-skew">
      <div class="container">
        <div class="card card-profile shadow mt--300">
          <div class="px-4">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2" >
                <div class="card-profile-image">
                  <a data-container="body" data-original-title="Popover on Top" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                    <img src="/images/Avatar.png" alt="user-image" class="rounded-circle" width="50%">
                  </a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
                <div class="card-profile-actions py-4 mt-lg-0">
                  <div class="text-center">
                  <a href="/user" class="btn btn-sm btn-default ">用户中心</a>
                  <a href="/user/node" class="btn btn-sm btn-primary">节点列表</a>
                  <a href="/user/shop" class="btn btn-sm btn-primary">兑换套餐</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 order-lg-1">
                <div class="card-profile-stats d-flex justify-content-center">
                  <div>
                    <span class="heading">{$user->money}</span>
                    <span class="description">剩余金币</span>
                  </div>
                  <div>
                    <span class="heading">Lv.{$user->class}</span>
                    <span class="description">等级</span>
                  </div>
                  <div>
					<span class="heading">{$user->online_ip_count()}/{if $user->node_connector==0}不限制{else}{$user->node_connector}{/if}</span>
					<span class="description">在线IP数</span>
                  </div>
                </div>
              </div>
            </div>





			        <div class="row row-grid justify-content-between align-items-center mt-lg">
						<div class="col-lg-8">
                <div class="card card-lift shadow border-0">
                  <div class="card-body">
                  <div class="progress-label">
                    <span>流量使用情况</span>
                  </div>
              <div class="progress-wrapper">
                <div class="progress-info">
                  <div class="progress-percentage">
                    <span style="color:#B5B5B5;" title="{number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% 剩余">{$user->usedTraffic()}</span>
                    <span style=""> / </span><span style="color:#32CD32;" title="{number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% 剩余">{$user->enableTraffic()}</span>
                    <span>({number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}%)</span>
                  </div>
                </div>
                <div class="progress">
                  <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: {number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}%;"></div>
                </div>
              </div>
                 <div class="row">
                    {if $user->isAbleToCheckin() == 1}
                    <button id="checkin" class="btn btn-primary mt-4" style="margin-left: 1rem;">签到</button>
                    {else}
                    <button disabled="disabled" class="btn btn-primary mt-4" style="margin-left: 1rem;">今日已签到</button>
                    {/if}
					<p class="col mt-4" style="text-align: right;"><font style="font-weight: 650;">上次签到时间：</font>&nbsp;&nbsp;{$user->lastCheckInTime()} <br> <font style="font-size:15px;">小提示：<a href="https://t.me/ddjiasu" target="_blank">Telegram群</a>内签到可获得双倍流量</font>
                  	</p>
                  </div>
                  </div>
                </div>
            </div>
			<div class="col-lg-4">
                <div class="card card-lift shadow border-0">
                  <div class="card-body">
                  <div class="progress-label">
                    <span>流量重置日和到期日期</span>
                  </div>
						<h2 class="card-title">
                          {if $user->auto_reset_day !==0}
                          <p class="mt-4" style="font-weight: 650;">{$user->auto_reset_day}日重置流量 {if $user->node_speedlimit!=0}限速{$user->node_speedlimit}Mbps{else}不限速{/if}</p>
                          {else if strtotime($user->class_expire)<time()}
                          <p class="mt-4" style="font-weight: 650;">不重置流量 {if $user->node_speedlimit!=0}限速{$user->node_speedlimit}Mbps{else}不限速{/if}</p>
                          {else if $lastDay == "01月01日" }
                          <p class="mt-4" style="font-weight: 650;">{date('m-d',strtotime($user->class_expire))}重置流量 {if $user->node_speedlimit!=0}限速{$user->node_speedlimit}Mbps{else}不限速{/if}</p>
                          {else}
                          <p class="mt-4" style="font-weight: 650;">{$lastDay}重置流量 {if $user->node_speedlimit!=0}限速{$user->node_speedlimit}Mbps{else}不限速{/if}</p>
                          {/if}
                          <p class="mt-4" style="font-weight: 650;">{$user->class_expire}到期</p>
						</h2>
                    <a class="btn btn-primary mt-4" href="/user/shop">续费</a>
                  </div>
                </div>
            </div>
        </div>


            <div class="mt-5 py-5 border-top text-center">
              <div class="row justify-content-center">
                <div class="col-lg-9">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">{if $user->lastSsTime()=='从未使用喵'}不知道如何使用？{else}系统公告{/if}</small>
              </div>
										{if $user->lastSsTime()=='从未使用喵'}
										<p style="color:#ff9180">系统检测到您从没使用过，是否需要帮助呢？</p>
										<p style="color:#ff9180">来这里看看我们的<a href="https://wiki.ddjiasu.me" target="_blank"/>教程</a>吧</p>
										<hr>
										{/if}
										<p>{$ann->content}更新日期<code>{$ann->date}</code></p>
                        <p style="background-color:transparent;color: #ff4081;text-decoration: none;cursor: pointer;"><a href="/user/announcement">更多公告</a></p>
              			<!--<p style="background-color:transparent;color: #ff4081;text-decoration: none;cursor: pointer;"><a href="tg://proxy?server=65.52.167.176&port=24000&secret=ddae034d152d3d98aa6ac004e394aa8faa">点击配置TG代理</a>-->
                </div>
              </div>
            </div>



            <div class="mt-5 py-5 border-top text-center">
              <div class="row justify-content-center">
                <div class="col-lg-9">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">配置中心</small>
              </div>
              <div class="nav-wrapper">
                <ul class="nav nav-pills nav-fill flex-column flex-md-row" id="tabs-text" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-0 active" id="all_ssr-tab" data-toggle="tab" href="#all_ssr" role="tab" aria-controls="all_ssr" aria-selected="true">SSR快速配置</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-0" id="all_info-tab" data-toggle="tab" href="#all_info" role="tab" aria-controls="all_info" aria-selected="false">配置信息</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-0" id="download-tab" data-toggle="tab" href="#download" role="tab" aria-controls="download" aria-selected="false">软件下载</a>
                  </li>
                  <!--{if URL::SSCanConnect($user)}
                  <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-0" id="all_ss-tab" data-toggle="tab" href="#all_ss" role="tab" aria-controls="all_ss" aria-selected="false">SS快速配置</a>
                  </li>
                   {/if}-->
                  <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-0" href="https://wiki.ddjiasu.me" target="_blank">使用教程</a>
                  </li>
                </ul>
              </div>
              <div class="card shadow">
                <div class="card-body">
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="all_ssr" role="tabpanel" aria-labelledby="all_ssr-tab">
													{$pre_user = URL::cloneUser($user)}
														{$user = URL::getSSRConnectInfo($pre_user)}
														{$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
														{$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
                      										<div sryle="padding:18px">
                                                              	<h4 style="margin-top:12px">AppleID</h4>
                                                                <p>AppleID:<code>
                                                                    {if $user->class>1}                                          	 down@m-e.me
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code>密码<code>
                                                                {if $user->class>1}															En112211
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code></p><hr>
                     										</div>
															<div style="padding:18px">
																<h4 style="margin-top:12px">订阅连接</h4>
																<p><code><a class="copy-text" data-clipboard-text="{$config["baseUrl"]}/link/{$ssr_sub_token}?mu=0">{$config["baseUrl"]}/link/{$ssr_sub_token}?mu=0</a></code></p>
																<button class="btn btn-primary mt-4 copy-text" data-clipboard-text="{$config["baseUrl"]}/link/{$ssr_sub_token}?mu=0">点击拷贝</button>
															</div>
																<hr>
															<div style="padding:18px">
																<h4 style="margin-top:12px">配置文件</h4>
                                                              	<p><code>/user/getpcconf?is_mu=0&is_ss=0</code></p>
																<a class="btn btn-primary mt-4" href="/user/getpcconf?is_mu=0&is_ss=0">点击下载</a>
															</div>
																<hr>
															<div style="padding:18px">
																<h4 style="margin-top:12px">一键订阅</h4>
																<a href="javascript:void(0);" class="btn-dl btn btn-primary mt-4" style="margin-right:0px;width:200px;" data-onekeyfor="sub0">Shadowrocket<br>一键订阅</a>
                                                              	<input type="text" class="input form-control form-control-monospace cust-link col-xx-12 col-sm-8 col-lg-7" style="display:none;" name="input1" id="sub0" readonly value="{$subUrl}{$ssr_sub_token}" readonly="true"><br>
                                                              	<a href="quantumult://configuration?server={str_replace(array('+','/','='),array('-','_',''),{base64_encode("{$config["baseUrl"]}/link/{$ssr_sub_token}?mu=0")})}&filter=aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2xoaWUxL1J1bGVzL21hc3Rlci9RdWFudHVtdWx0L1F1YW50dW11bHQuY29uZg&rejection=aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2xoaWUxL1J1bGVzL21hc3Rlci9RdWFudHVtdWx0L1F1YW50dW11bHRfVVJMLmNvbmY" class="btn-dl btn btn-primary mt-4" style="margin-right:0px;width:200px;">Quantumult<br>一键订阅&amp;规则</a>
                      										</div>
																<hr>
															<div style="padding:18px">
																<h4 style="margin-top:12px">使用教程</h4>
																<a class="btn btn-primary mt-4" href="https://wiki.ddjiasu.me" target="_blank">点击查看</a>
															</div>
																<hr>
                      </div>
                    <div class="tab-pane fade" id="all_info" role="tabpanel" aria-labelledby="all_info-tab">
                                      	<p>{$agent}</p>
														<dl class="dl-horizontal">
															<p><dt>端口</dt>
															<dd><code>{$user->port}</code></dd></p>

															<p><dt>密码</dt>
															<dd><code>{$user->passwd}</code></dd></p>

															<p><dt>自定义加密</dt>
															<dd><code>{$user->method}</code></dd></p>

															<p><dt>自定义协议</dt>
															<dd><code>{$user->protocol}</code></dd></p>

															<p><dt>自定义混淆</dt>
															<dd><code>{$user->obfs}</code></dd></p>
														</dl>
														<a class="btn btn-primary mt-4" href="/user/url_reset">重置所有链接</a>
                 </div>
                    									<div class="tab-pane fade" id="all_ss" role="tabpanel" aria-labelledby="all_ss-tab">
															{$user = URL::getSSConnectInfo($pre_user)}
															{$ss_url_all = URL::getAllUrl($pre_user, 0, 1)}
															{$ss_url_all_mu = URL::getAllUrl($pre_user, 1, 1)}
															{$ss_url_all_win = URL::getAllUrl($pre_user, 0, 2)}
																<h4 style="margin-top:12px">配置文件</h4>
                                                              	<p><code>/user/getpcconf?is_mu=1&is_ss=0</code></p>
																<a class="btn btn-primary mt-4" href="/user/getpcconf?is_mu=0&is_ss=1">点击下载</a>
																<hr>
																<h4 style="margin-top:12px">所有连接</h4>
																<button class="btn btn-primary mt-4 copy-text" data-clipboard-text="{$ss_url_all_win}">点击拷贝</button>
                      											<hr>
                      											<div style="padding:18px">
																<h4 style="margin-top:12px">使用教程</h4>
																<a class="btn btn-primary mt-4 copy-text" href="https://wiki.ddjiasu.me" target="_blank">点击查看</a>
																</div>
																<hr>
                     									</div>
												<div class="tab-pane fade" id="download" role="tabpanel" aria-labelledby="download-tab">
											<!----->
                                                  <h4 style="margin-top:12px">叮当加速器 For Windows</h4>
                    							  <p><img src="/images/clients/logo.png" style="margin-top:12px" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="https://qcloud.coding.net/u/bfsdo0/p/tap-mod/git/raw/master/%E5%8F%AE%E5%BD%93%E5%8A%A0%E9%80%9F%E5%99%A8-setup.exe">立即下载</a>
                                                  <hr>
                                                  <!--<h4 style="margin-top:12px">ShadowsocksR For Windows</h4>
                    							  <p><img src="images/clients/ss-windows.svg" style="margin-top:12px" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="https://qcloud.coding.net/u/bfsdo0/p/tap-mod/git/raw/master/ssr-win.7z">软件下载</a>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="https://www.ddjiasu.me/user/getpcconf?is_mu=0&is_ss=0">配置下载</a>
                                                  <hr>-->
                                                  <h4 style="margin-top:12px">Shadowrocket</h4>
                    							  <p><img src="/images/clients/shadowrocket.svg" style="margin-top:12px" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="itms-services://?action=download-manifest&url=https://down.m-e.me/shadowrocket.plist">立即下载</a>
                      										<div sryle="padding:18px">
                                                              	<h4 style="margin-top:12px">AppleID</h4>
                                                                <p>AppleID:<code>
                                                                    {if $user->class>1}                                          	 down@m-e.me
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code>密码<code>
                                                                {if $user->class>1}															En112211
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code></p>
                     										</div>
                                                  <hr>
                                                  <h4 style="margin-top:12px">Quantumult</h4>
                                                  <p><img src="/images/clients/quantumult.jpg" style="margin-top:12px;border-radius:50%;" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="itms-services://?action=download-manifest&url=https://down.m-e.me/quantumult.plist">立即下载</a>
                      										<div sryle="padding:18px">
                                                              	<h4 style="margin-top:12px">AppleID</h4>
                                                                <p>AppleID:<code>
                                                                    {if $user->class>1}                                          	 down@m-e.me
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code>密码<code>
                                                                {if $user->class>1}															En112211
                                                                    {else}															VIP可见
                                                                    {/if}
                                                                </code></p>
                     										</div>
                                                  <hr>
                                                  <h4 style="margin-top:12px">Shadowsocks For Android</h4>
                    							  <p><img src="/images/clients/ss-android.png" style="margin-top:12px" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="https://qcloud.coding.net/u/bfsdo0/p/tap-mod/git/raw/master/ssr-android.apk">立即下载</a>
                                                  <hr>
                                                  <h4 style="margin-top:12px">ShadowsocksR For MacOS</h4>
                    							  <p><img src="/images/clients/ss-mac.svg" style="margin-top:12px" width="80px" align="center"></p>
                                                  <a class="btn btn-primary mt-2" style="margin-right:0;" href="https://qcloud.coding.net/u/bfsdo0/p/tap-mod/git/raw/master/ssr-mac.dmg">立即下载</a>
                                                  <hr>
                                                  <h4 style="margin-top:12px">Linux、路由器</h4>
                                                  <a class="btn btn-primary mt-4" style="margin-right:0;" href="https://wiki.ddjiasu.me/?p=29" target="_blank">请戳这里</a>
                                                  <hr>
                                            <!----->
                 </div>
                  </div>
                </div>
              </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

    </section>


	<div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">退订确认</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <p>是否退订当前套餐</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link  ml-auto" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="delete_input">确定</button>
            </div>
        </div>
    </div>
    </div>



    <div class="modal fade" id="info_form" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
              <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                  <div class="modal-body p-0">
                    <div class="card bg-secondary shadow border-0">
                      <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                          <small>账户信息</small>
                        </div>
                          <div class="text-center">


                          </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
{include file='newui_dialog.tpl'}


{include file='user/newui_footer.tpl'}

<script src="/theme/material/js/shake.js/shake.js"></script>

<script>
;(function(){
	'use strict'

	let onekeysubBTN = document.querySelectorAll('[data-onekeyfor]');
	for (let i=0;i<onekeysubBTN.length;i++) {
		onekeysubBTN[i].addEventListener('click',()=>{
			let onekeyId = onekeysubBTN[i].dataset.onekeyfor;
			AddSub(onekeyId);
		});
	}

	function AddSub(id){
		let url = document.getElementById(id).value;
		let tmp = window.btoa(url);
		tmp = tmp.substring(0,tmp.length);
		url = "sub://" + tmp + "#" + "叮当加速";
		window.location.href = url;
	}
})();
</script>

<script>
$(function(){
	new Clipboard('.copy-text');
});
$(".copy-text").click(function () {
	$("#result").modal();
	$("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
});

{if $geetest_html == null}
window.onload = function() {
    var myShakeEvent = new Shake({
        threshold: 15
    });
    myShakeEvent.start();
    window.addEventListener('shake', shakeEventDidOccur, false);
    function shakeEventDidOccur () {
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}
        $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
					$("#result").modal();
                    $("#msg").html(data.msg);
                  	window.setTimeout("location.href='/user'", {$config['jump_delay']});
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status);
                }
            });
    }
};
$(document).ready(function () {
	$("#checkin").click(function () {
		$.ajax({
			type: "POST",
			url: "/user/checkin",
			dataType: "json",
			success: function (data) {
				$("#checkin-msg").html(data.msg);
				$("#checkin-btn").hide();
				$("#result").modal();
				$("#msg").html(data.msg);
                  	window.setTimeout("location.href='/user'", {$config['jump_delay']})
			},
			error: function (jqXHR) {
				$("#result").modal();
				$("#msg").html("发生错误：" + jqXHR.status);
			}
		})
	})
})
{else}
window.onload = function() {
    var myShakeEvent = new Shake({
        threshold: 15
    });
    myShakeEvent.start();
    window.addEventListener('shake', shakeEventDidOccur, false);
    function shakeEventDidOccur () {
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}
        c.show();
    }
};
var handlerPopup = function (captchaObj) {
	c = captchaObj;
	captchaObj.onSuccess(function () {
		var validate = captchaObj.getValidate();
		$.ajax({
			url: "/user/checkin", // 进行二次验证
			type: "post",
			dataType: "json",
			data: {
				// 二次验证所需的三个值
				geetest_challenge: validate.geetest_challenge,
				geetest_validate: validate.geetest_validate,
				geetest_seccode: validate.geetest_seccode
			},
			success: function (data) {
				$("#checkin-msg").html(data.msg);
				$("#checkin-btn").hide();
				$("#result").modal();
				$("#msg").html(data.msg);
			},
			error: function (jqXHR) {
				$("#result").modal();
				$("#msg").html("发生错误：" + jqXHR.status);
			}
		});
	});
	// 弹出式需要绑定触发验证码弹出按钮
	captchaObj.bindOn("#checkin");
	// 将验证码加到id为captcha的元素里
	captchaObj.appendTo("#popup-captcha");
	// 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
};
initGeetest({
	gt: "{$geetest_html->gt}",
	challenge: "{$geetest_html->challenge}",
	product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
	offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
}, handlerPopup);
{/if}
</script>
<script>
function delete_modal_show(id) {
	deleteid=id;
	$("#delete_modal").modal();
}

$(document).ready(function(){
	function delete_id(){
		$.ajax({
			type:"DELETE",
			url:"/user/bought",
			dataType:"json",
			data:{
				id: deleteid
			},
			success:function(data){
				if(data.ret){
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
				}else{
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error:function(jqXHR){
				$("#result").modal();
				$("#msg").html(data.msg+"  发生错误了。");
			}
		});
	}
	$("#delete_input").click(function(){
		delete_id();
	});
})

</script>