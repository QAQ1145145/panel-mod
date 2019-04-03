





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
	<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">充值结果</h1>


        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="col-lg-12 col-md-12">
                <div class="margin-bottom-no">
                    <div class="card-main">
                        <div class="heading">
                            {if ($success == 1)}
                                <p>已充值成功 {$money} 元！请进入 <a href="/user/shop">套餐购买</a> 页面来选购您的套餐。</p>
                            {else}
                                <p>正在处理您的支付，请您稍等。此页面会自动刷新，或者您可以选择关闭此页面，余额将自动到账</p>
                                <script>
                                    setTimeout('window.location.reload()',5000);
                                </script>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
      
    </section>
    

	


{include file='user/newui_footer.tpl'}

