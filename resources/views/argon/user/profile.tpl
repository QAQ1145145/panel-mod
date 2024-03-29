





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
                    <img src="/images/Avatar.png" alt="user-image" class="rounded-circle" width="50%" >
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
			<div class="col-lg">
                <div class="card card-lift shadow border-0">
                  <div class="card-body">
					<p class="card-heading">我的帐号</p>
						<dl class="dl-horizontal">
							<dt>用户名</dt>
							<dd>{$user->user_name}</dd>
							<dt>邮箱</dt>
							<dd>{$user->email}</dd>
						</dl>
                    <a class="btn btn-primary mt-4" href="kill">&nbsp;删除我的账户</a>
                  </div>
                </div>
            </div>
        </div>
            <div class="mt-5 py-5 text-center">
              <div class="row justify-content-center">
                <div class="col-lg-12">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">最近五分钟使用IP</small>
              </div>
										<div class="table-responsive">
											<table class="table">
												<tr>

													<th>IP</th>
													<th>归属地</th>
												</tr>
												{foreach $userip as $single=>$location}
													<tr>

														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
			  
                </div>
              </div>
            </div>
			       <div class="mt-5 py-5 text-center">
              <div class="row justify-content-center">
                <div class="col-lg-12">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">最近十次登录IP</small>
              </div>
										<div class="table-responsive">
											<table class="table">
												<tr>

													<th>IP</th>
													<th>归属地</th>
												</tr>
												{foreach $userloginip as $single=>$location}
													<tr>

														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </section>
    

	
	
{include file='newui_dialog.tpl'}


{include file='user/newui_footer.tpl'}

