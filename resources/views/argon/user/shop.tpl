
{include file='user/newui_header.tpl'}



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
                  <a href="/user/code" class="btn btn-sm btn-primary">兑换金币</a>
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
					
						<div class="col-lg-12">
							<div class="card card-lift shadow border-0">
								<div class="card-body">
									<p>注意：购买同级别套餐将叠加到期时间，您可以用金币兑换下面的套餐。</p>
                                	<p>当前剩余金币：<code>{$user->money} </code>{if $user->money <4.9}&nbsp;&nbsp;(好像金币不足了哦){/if}</p>
								</div>
							</div>
						</div>	
					</div>

			        <div class="row row-grid justify-content-between align-items-center mt-lg">
					
					
					
					
					 {foreach $shops as $shop}
					
              <div class="col-lg-4" style=" margin-top: 3rem;">
                <div class="card card-lift--hover shadow border-0">
                  <div class="card-body py-5">
                      <h6 class="category">{$shop->name}</h6>
							<h1 class="card-title">￥{$shop->price}<small>/{if $shop->class_expire() ==30 || $shop->class_expire() ==31}月{else}{if $shop->class_expire() == 90 }季{else}{if $shop->class_expire() == 180 }半年{else}{if $shop->class_expire() == 360 }年{else}次{/if}{/if}{/if}{/if}</small></h1>
                       			套餐详情<br>
                                    <ul>
                                      <li>重置流量{$shop->bandwidth()}G</li>
                                      <li>网络加速/游戏加速解锁</li>
                                      {if $shop->user_class()>=4}
                                      <li>可用节点：60+条</li>
                                      {else if $shop->user_class()>=2}
                                      <li>可用节点：20+条</li>
                                      {/if}
                                      <li>限制在线IP数:{$shop->connector()}个</li>
                                      <li>速度限制:{if $shop->speedlimit()!=0}{$shop->speedlimit()}Mbps{else}不限速{/if}</li>
                                      {if $shop->auto_renew>31}
                                      <li>每月{date(d)}日重置流量</li>
                                      {/if}
                                    </ul>
                  <!----
                                {if $shop->auto_renew==0}
										<p><span class="label label-red">
										不能自动续费
										</span></p>
										{else}
										<p><span class="label label-red">
										可选在 {$shop->auto_renew} 天后自动续费
										</span></p>
								{/if}
								{if $shop->auto_reset_bandwidth==0}
										<p><span class="label label-red">
										不可自动重置
										</span></p>
										{else}
										<p><span class="label label-red">
										可自动重置
										</span></p>
								{/if}
				   ---->
                                 <a id="buy_button" class="btn btn-sm btn-primary pull-right" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew},{$shop->auto_reset_bandwidth})">兑换</a>
              </div>
                </div>
              </div>
			  
					{/foreach}
						{$shops->render()}
        </div>
       </div>
     </div>
   </div>
    </section>
	
<div class="modal fade"  id="coupon_modal" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">您有优惠码吗？</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
									<div class="form-group form-group-label">
										<label class="floating-label" for="coupon">有的话，请在这里输入。没有的话，直接确定吧</label>
										<input class="form-control" id="coupon" type="text">
									</div>
            </div>
            <div class="modal-footer">
                <button  class="btn btn-primary"  data-dismiss="modal" id="coupon_input">确定</button>
            </div>
        </div>
    </div>
    </div>
					
					
					
	<div class="modal fade"  id="order_modal"  tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-default">订单确认</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
             					<p><font color="red">如您是更换套餐,那剩余流量和有效期将会重置。</font></p>					   
									<p id="name">商品名称：</p>
									<p id="credit">优惠额度：</p>
									<p id="total">使用金币：</p>
									
									<div class="checkbox switch" id="autor">       
									<p id="auto_reset">在到期时自动续期</p>
										<label class="custom-toggle">
											<input type="checkbox" id="autorenew" >
											<span class="custom-toggle-slider rounded-circle"></span>
										</label>
									</div>

									
									
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="order_input" type="button">确定</button>
            </div>
        </div>
    </div>
    </div>
					
	<div class="modal fade"  id="tx_modal" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
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
{include file='newui_dialog.tpl'}


{include file='user/newui_footer.tpl'}



<script>
function buy(id,auto,auto_reset) {
	auto_renew=auto;
	if(auto==0)
	{
		document.getElementById('autor').style.display="none";
	}
	else
	{
		document.getElementById('autor').style.display="";
	}
	
	if(auto_reset==0)
	{
		document.getElementById('auto_reset').style.display="none";
	}
	else
	{
		document.getElementById('auto_reset').style.display="";
	}
	
	shop=id;
	$("#coupon_modal").modal();
}


$("#coupon_input").click(function () {
		$.ajax({
			type: "POST",
			url: "coupon_check",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop
			},
			success: function (data) {
				if (data.ret) {
					$("#name").html("商品名称："+data.name);
					$("#credit").html("优惠额度："+data.credit);
					$("#total").html("花费金币："+data.total);
					$("#order_modal").modal();
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
	
$("#order_input").click(function () {

		if(document.getElementById('autorenew').checked)
		{
			var autorenew=1;
		}
		else
		{
			var autorenew=0;
		}
			
		$.ajax({
			type: "POST",
			url: "buy",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop,
				autorenew: autorenew
			},
			success: function (data) {
				if (data.ret) {
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href='/user/shop'", {$config['jump_delay']});
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
</script>