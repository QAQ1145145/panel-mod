<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>
			{$config["appName"]}
		</title>
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=1280" />
		<link rel="stylesheet" href="theme/asky/css/theme.asky.css" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta name="apple-mobile-web-app-title" content="叮当加速" />
		<meta name="google" value="notranslate" />
		<script type="text/javascript">
			  (function() {
      var sUserAgent = navigator.userAgent;
      if (sUserAgent.indexOf('Android') > -1 || sUserAgent.indexOf('iPhone') > -1 || sUserAgent.indexOf('iPad') > -1 || sUserAgent.indexOf('iPod') > -1 || sUserAgent.indexOf('Symbian') > -1) {
          location.href = 'index.m';
      }
  })();
		</script>
	</head>
	<body>
		<div id="stage">
			<article class="step-1">
				<div class="step-1-in">
					<div id="test">
						<header>
							<div class="layout">
								<h1>
									{$config["appName"]}
								</h1>
								<nav>
									<a href="https://wiki.ddjiasu.net">
										帮助
									</a>
									{if $user->isLogin}
									<a href="/user/logout">
										登出
									</a>
									<a href="user/" class="login-link">
										用户中心
									</a>
									{else}
									<a href="auth/login" class="login-link">
										登录
									</a>
									{/if}
								</nav>
							</div>
						</header>
						<h2>
							<span class="line line-1">
								可能是
								<span class="moji-1">
									最稳
								</span>
								的
							</span>
							<span class="line line-2">
								网络提供商
							</span>
						</h2>
						<i class="bg">
						</i>
						<i class="hr">
						</i>
						<div class="shell-box">
							<i class="shell-shadow">
							</i>
							<i class="shell">
								<span>
								</span>
							</i>
						</div>
						<a class="link-reg" href="user">
							开始使用
						</a>
						<i class="light">
						</i>
					</div>
				</div>
			</article>
			<span class="tip tip-1">
				请向下滑动
			</span>
			<article class="step-2">
				<div class="content">
					<h3 class="ui-h ui-h-1">
						技术优势
					</h3>
					<ul>
						<li class="feature-1">
							<div class="icon">
								<big>
									70+
								</big>
								<cite>
									节点
								</cite>
							</div>
							<h4>
								多地区接入
							</h4>
							<p>
								提供最稳定的游戏加速服务
							</p>
						</li>
						<li class="feature-3">
							<div class="icon">
								<big>
									15+
								</big>
								<cite>
									IPLC
								</cite>
							</div>
							<h4>
								极致内网专线
							</h4>
							<p>
								延迟固定，全天稳定加速
							</p>
						</li>
						<li class="feature-3">
							<div class="icon">
								<big>
									10
								</big>
								<cite>
									Gbps
								</cite>
							</div>
							<h4>
								千兆上网带宽
							</h4>
							<p>
								多条大带宽线路, 轻松跑满本地
							</p>
						</li>
						<li class="feature-4">
							<div class="icon">
								<big>
								</big>
								<cite>
									叮当加速器
								</cite>
							</div>
							<h4>
								专属客户端
							</h4>
							<p>
								使用从此变得So Easy！
							</p>
						</li>
						<li class="feature-5">
							<div class="icon">
								<big>
									3
								</big>
								<cite>
									ms
								</cite>
							</div>
							<h4>
								超低延迟
							</h4>
							<p>
								专属低延时游戏加速线路, 从此联机不掉帧
							</p>
						</li>
						<li class="feature-6">
							<div class="icon">
								<big>
									20
								</big>
								<cite>
									%
								</cite>
							</div>
							<h4>
								超高推广返利
							</h4>
							<p>
								快点推荐小伙伴一起用吧！
							</p>
						</li>
					</ul>
				</div>
				<i class="after">
				</i>
			</article>
			<article class="step-3">
				<h3 class="ui-h ui-h-2">
					服务购买
				</h3>
				<!-- <div class="switch index-nav" id="switch">
				<div id="span-2" onclick="selectDatacenter(&quot;la&quot;)" class="span-2 active">
				普通套餐
				</div>
				<div id="span-3" onclick="selectDatacenter(&quot;hk&quot;)" class="span-3">
				特殊套餐
				</div>
				</div>
				-->
				<ul>
					<li>
						<div class="head">
							<h4 id="price-1">
								<big>
									3.9金币/月
								</big>
								<small>
									随缘套餐
								</small>
							</h4>
						</div>
						<div class="shop-content-extra">
							<p>
								<span style="font-size:75%;">
									✓ 专属客户端
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际标准接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✕ 国际高级接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✕ 中国大陆(回国服务)
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✕ 游戏专线服务
								</span>
							</p>
							<br>
							<p>
								<span style="font-size:75%;">
									流量 / GiB：16
								</span>
							</p>
						</div>
						<a class="button" href="user/shop">
							购买
						</a>
					</li>
					<li>
						<div class="head">
							<h4 id="price-2">
								<big>
									15.9金币/月
								</big>
								<small>
									主力套餐
								</small>
							</h4>
						</div>
						<div class="shop-content-extra">
							<p>
								<span style="font-size:75%;">
									✓ 专属客户端
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际标准接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际高级接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 中国大陆(回国服务)
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 游戏专线服务
								</span>
							</p>
							<br>
							<p>
								<span style="font-size:75%;">
									流量 / GiB：128
								</span>
							</p>
						</div>
						<a class="button" href="user/shop">
							购买
						</a>
					</li>
					<li>
						<div class="head">
							<h4 id="price-3">
								<big>
									22.9金币/月
								</big>
								<small>
									大流量套餐
								</small>
							</h4>
						</div>
						<div class="shop-content-extra">
							<p>
								<span style="font-size:75%;">
									✓ 专属客户端
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际标准接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际高级接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 中国大陆(回国服务)
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 游戏专线服务
								</span>
							</p>
							<br>
							<p>
								<span style="font-size:75%;">
									流量 / GiB：512
								</span>
							</p>
						</div>
						<a class="button" href="user/shop">
							购买
						</a>
					</li>
					<li>
						<div class="head">
							<h4 id="price-4">
								<big>
									32.9元/月
								</big>
								<small>
									最高等级
								</small>
							</h4>
						</div>
						<div class="shop-content-extra">
							<p>
								<span style="font-size:75%;">
									✓ 专属客户端
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际标准接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 国际高级接入点
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 中国大陆(回国服务)
								</span>
							</p>
							<p>
								<span style="font-size:75%;">
									✓ 游戏专线服务
								</span>
							</p>
							<br>
							<p>
								<span style="font-size:75%;">
									流量 / GiB：不限
								</span>
							</p>
						</div>
						<a class="button" href="user/shop">
							购买
						</a>
					</li>
				</ul>
				<div class="note layout" id="price-note">
					<p align="center">
						※ 等级越高, 可用流量越多
					</p>
				</div>
			</article>
			<article class="step-4">
				<div id="step4">
					<div class="content span-3">
						<i>
						</i>
						<h3 class="ui-h ui-h-3">
							高性能加密方式
						</h3>
						<div class="note layout">
							<p>
								采用最新的通信协议
							</p>
							<p>
								抗干扰, 低功耗
							</p>
						</div>
						<!-- <a class="button" href="https://netspeeder.net/user/shop" target="_blank">188元 <small>/年</small></a>
						-->
						<div class="note layout">
							<p class="op5">
								需搭配指定客户端使用
							</p>
						</div>
					</div>
					<i class="shell-2">
					</i>
				</div>
			</article>
			<footer class="step-5">
				<div class="htko">
					<p>
						一切的开端，梦的延续
					</p>
				</div>
				<div class="layout">
					<div class="l">
						<a href="https://t.me/ddjiasu" target="_blank">
							@叮当加速
						</a>
						<a href="index.html">
							隶属于英国 KerNET Limited
						</a>
					</div>
					<div class="r">
						<a href="http://www.miitbeian.gov.cn/" target="_blank">
							冀ICP备14003409号-1
						</a>
					</div>
				</div>
			</footer>
		</div>
		<script src="theme/asky/js/themeindex.js">
		</script>
		<div style="display:none">
			<script type="text/javascript" src="theme/asky/js/ta.js" charset="UTF-8">
			</script>
		</div>
	</body>

</html>