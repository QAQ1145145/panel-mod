<!DOCTYPE html>
<html>
<head>
  <title>叮当加速—专注外服游戏加速</title>
  <meta name="msvalidate.01" content="4652A53480D3E379798BE86168C0A149" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://cdn.godann.com/kitui/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="https://cdn.godann.com/kitui/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!--<link type="text/css" href="https://cdn.godann.com/kitui/css/argon.css" rel="stylesheet">-->
  <link href="/argon-halloween.css" rel="stylesheet">
</head>

<body>
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="/">
          <img src="/white.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="/">
                  <img src="/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection"></i>
                <span class="nav-link-inner--text">介绍</span>
              </a>
              <div class="dropdown-menu">
                <a href="https://wiki.maile3.com" class="dropdown-item" target="_blank">帮助文档</a>
                <a href="/staff" class="dropdown-item">STAFF</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-books"></i>
                <span class="nav-link-inner--text">服务及保障</span>
              </a>
              <div class="dropdown-menu">
                <a href="/legal" class="dropdown-item">条款总则</a>
                <a href="/legal/tos" class="dropdown-item">服务条款</a>
                <a href="/legal/privacy" class="dropdown-item">隐私条款</a>
                <a href="/legal/aup" class="dropdown-item">可接受使用政策</a>
              </div>
            </li>
			{if $user->isLogin}
            <li class="nav-item dropdown">
              <a href="/user" class="nav-link" >
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">用户中心</span>
              </a>
            </li>
			{else}
			 <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-atom"></i>
                <span class="nav-link-inner--text">登录</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user" class="dropdown-item">登录</a>
                <a href="/auth/register" class="dropdown-item">注册</a>
              </div>
            </li>
			{/if}
          </ul>
        </div>
      </div>
    </nav>
  </header>
  {if $config["enable_crisp"] == 'true'}{include file='crisp.tpl'}{/if}
  <main>
    <div class="position-relative">
      <!-- shape Hero -->
      <section class="section-shaped my-0">
        <div class="shape shape-style-1 shape-default shape-skew">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="container shape-container d-flex">
          <div class="col px-0">
            <div class="row">
              <div class="col-lg-6">
                <h1 class="display-3  text-white">{$config["appName"]}</h1>
                <p class="lead  text-white">专注外服加速，助你轻松游戏</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- 1st Hero Variation -->
    </div>
	
	
	
    <section class="section section-nucleo-icons">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center">
            <h2 class="display-3">高速 | 安全 | 低价</h2>
            <p class="lead">
              {$config["appName"]} 依托全球 20+ 家运营商互联网基础服务提供商和云计算服务提供商的 IP 和优质云计算资源，采用全球范围内的业界顶级数据中心，中国优化线路(CN2、GIA等) ，带宽总量高达 30Gbps，可以为每位用户提供最高可达 1Gbps 的带宽，随时随地加速您的网络环境，帮助您访问您喜欢的网站和服务，改善外服游戏体验，为您开辟全球业务保驾护航。
            </p>
          </div>
        </div>
      </div>
      <div class="container pt-lg ">
        <div class="row row-grid mt-5">
          <div class="col-lg-4">
            <div class="icon icon-lg icon-shape bg-gradient-white shadow rounded-circle text-primary">
              <i class="ni ni-planet text-primary"></i>
            </div>
            <h5 class="mt-3">优质节点</h5>
            <p class="mt-3">精选优质云服务供应商和顶级数据中心的线路配合TCP拥塞控制算法，有效降低延时和网络抖动，更能承受诸多生产环境考验，为用户需要的应用加速和功能解锁提供解决方案</p>
          </div>
          <div class="col-lg-4">
            <div class="icon icon-lg icon-shape bg-gradient-white shadow rounded-circle text-primary">
              <i class="ni ni-lock-circle-open text-primary"></i>
            </div>
            <h5 class="mt-3">安全可靠</h5>
            <p class="mt-3">经过{$config["appName"]}的数据全程采用通用隧道协议传输，提供众多值得信赖的加密和特征混淆方式供您选择，全面保障隐私和数据安全</p>
          </div>
          <div class="col-lg-4">
            <div class="icon icon-lg icon-shape bg-gradient-white shadow rounded-circle text-primary">
              <i class="ni ni-money-coins text-primary"></i>
            </div>
            <h5 class="mt-3">价格灵活</h5>
            <p class=" mt-3">我们提供了多种多样的套餐，您可以任意选择自己需要的。当然我们也会对大客户提供定制服务</p>
          </div>
        </div>
      </div>
    </section>
	
	
	
    <section class="section section-lg">
      <div class="container">
        <div class="row justify-content-center text-center mb-lg">
          <div class="col-lg-8">
            <h2 class="display-3">弹性套餐</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="row row-grid">
              <div class="col-lg-3">
                <div class="card card-lift--hover shadow border-0">
                  <div class="card-body py-5">
                      <h6 class="category">免费套餐</h6>
							<h1 class="card-title">￥0<small></small></h1>
                          <ul>
                            <li><b>Random</b> 节点</li>
                            <li><b>签到领取</b> 流量</li>
                            <li><b>3</b> 台设备(IP)</li>
                            <li><b>永久</b> 有效期</li>
                          </ul>
                    <a href="/user" class="btn btn-primary mt-4">免费使用</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="card card-lift--hover shadow border-0">
                  <div class="card-body py-5">
                      <h6 class="category">轻度套餐</h6>
							<h1 class="card-title">￥4.9<small>/月</small></h1>
                       <ul>
                         <li><b>15+</b> 节点</li>
                         <li><b>30GB</b> 流量</li>
                         <li><b>3</b> 台设备(IP)</li>
                         <li><b>30</b> 天有效期</li>
                       </ul>
                    <a href="/user/shop" class="btn btn-primary mt-4">立刻购买</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="card card-lift--hover shadow border-0">
                  <div class="card-body py-5">
                      <h6 class="category">普通套餐</h6>
							<h1 class="card-title">￥7.9<small>/月</small></h1>
                                <ul>
                            <li><b>15+</b> 节点</li>
                            <li><b>100GB</b> 流量</li>
                            <li><b>3</b> 台设备(IP)</li>
                            <li><b>30</b> 天有效期</li>
                                </ul>
                    <a href="/user/shop" class="btn btn-primary mt-4">立刻购买</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="card card-lift--hover shadow border-0">
                  <div class="card-body py-5">
                      <h6 class="category">高级套餐</h6>
							<h1 class="card-title">￥9.9<small>/月</small></h1>
                                <ul>
                            <li><b>60+</b> 节点</li>
                            <li><b>200GB</b> 流量</li>
                            <li><b>6</b> 台设备(IP)</li>
                            <li><b>30</b> 天有效期</li>
                                </ul>
                    <a href="/user/shop" class="btn btn-primary mt-4">立刻购买</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
	
{include file='newui_footer.tpl'}