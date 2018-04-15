<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#3f51b5">
	<title>{$config["appName"]}</title>
	<!-- css -->
	<link href="/theme/material/css/base.min.css" rel="stylesheet">
	<link href="/theme/material/css/project.min.css" rel="stylesheet">
	<link href="/theme/material/css/icon.css" rel="stylesheet">
	
	<!-- favicon -->
	<!-- ... -->
</head>
  <style> 
.divcss5{ position:fixed; bottom:0;} 
</style> 
<body class="page-brand">
	<header class="header header-transparent header-waterfall ui-header">
		<ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg">format_align_justify</span>
				</a>
			</li>
		</ul>
		
		<ul class="nav nav-list pull-right">
			<li class="dropdown margin-right">
				<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
				{if $user->isLogin}
					<span class="access-hide">{$user->user_name}</span>
                	  <span class="icon icon-cd margin-right">account_circle</span>
				<!--	<span class="avatar avatar-sm"><img alt="alt text for John Smith avatar" src="{$user->gravatar}"></span>  -->
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>用户中心</a>
						</li>
						<li>
							<a class="padding-right-lg waves-attach" href="/user/logout"><span class="icon icon-lg margin-right">exit_to_app</span>登出</a>
						</li>
					</ul>
				{else}
					<span class="access-hide">未登录</span>
             			 <span class="icon icon-cd margin-right">account_circle</span>
				<!--	<span class="avatar avatar-sm"><img alt="alt text for John Smith avatar" src="/theme/material/images/users/avatar-001.jpg"></span> -->
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/login"><span class="icon icon-lg margin-right">vpn_key</span>登录</a>
						</li>
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/register"><span class="icon icon-lg margin-right">person_add</span>注册</a>
						</li>
					</ul>
				{/if}
					
			</li>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
		<div class="menu-scroll">
			<div class="menu-content">
				<a class="menu-logo" href="/"><i class="icon icon-lg">language</i>&nbsp;点击返回官网</a>
				<ul class="nav">

					{if $user->isLogin}
					<li>
						<a  href="/user"><i class="icon icon-lg">person</i>&nbsp;用户中心</a>
					</li>
					<li>
						<a  href="/user/logout"><i class="icon icon-lg">call_missed_outgoing</i>&nbsp;退出</a>
					</li>
					{else}
					<li>
						<a  href="/auth/login"><i class="icon icon-lg">vpn_key</i>&nbsp;登录</a>
					</li>
					<li>
						<a  href="/auth/register"><i class="icon icon-lg">person_add</i>&nbsp;注册</a>
					</li>
                  	<li>
				     <a  href="/password/reset"><i class="icon icon-lg">security</i>&nbsp;重置密码</a>
					</li>
                  
                  <li>
                    <div class="divcss5">
    					<img  src="/images/Ambassador-menu.png" width="230" height="300"/>
                      </div>
					</li>
					{/if}
				</ul>
			</div>
		</div>
	</nav>
 <script type="text/javascript"> window.$crisp=[];window.CRISP_WEBSITE_ID="eb7f99b0-aa25-4855-84dc-d6b2db6b1766";(function(){ d=document;s=d.createElement("script"); s.src="https://client.crisp.chat/l.js"; s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})(); </script>





	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-lg-push-0 col-sm-12 col-sm-push-0">
						<h1 class="content-heading">TOS</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
						<section class="content-inner margin-top-no">



							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>用户协议 Terms of Service</p>
										    <p>{$config["appName"]}，以下简称本站。</p>
									</div>
								</div>
							</div>
							
							<h2 class="content-sub-heading">隐私</h2>
								
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										
											<p>
												<ul>
													<li>用户注册时候需要提供邮箱以及密码，并自行保管。邮箱为用户的唯一凭证。</li>
													<li>本站会加密存储用户密码，尽量保证数据安全，但并不保证这些信息的绝对安全。</li>
												</ul>
											</p>
									</div>
								</div>
							</div>
							
							
							<h2 class="content-sub-heading">使用条款</h2>
								
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										
											<p>
												<ul>
													<li>禁止使用本站服务进行任何违法恶意活动。</li>
													<li>使用任何节点，需遵循节点所属国家的相关法律以及中国法律。</li>
													<li>禁止滥用本站提供的服务。</li>
													<li>对于免费用户，我们有权在不通知的情况下删除账户。</li>
													<li>任何违法使用条款的用户，我们将会删除违规账户并没收使用本站服务的权利。</li>
											   </ul>
											</p>
									</div>
								</div>
							</div>
							
							
							
							<h2 class="content-sub-heading">其它</h2>
								
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										
											<p>
												<ul>
													<li>本站仅限人类及猫注册使用。</li>
													<li>TOS更新时用户需要遵守最新TOS。</li>
											   </ul>
											</p>
									</div>
								</div>
							</div>


		
							
						</section>
			
			
			
		</div>
	</main>


{include file='footer.tpl'}