





{include file='user/main.tpl'}

{*{$ssr_prefer = URL::SSRCanConnect($user, 0)}*}


	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">用户中心</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
					<div style="word-break:break-all" class="col-lg-12 col-md-12">

						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									{*<p class="card-heading">公告</p>*}
									{*<p class="card-heading">系统中最新公告</p>
									<p>其他公告请到<a href="/user/announcement"/>公告面板</a>查看。</p>*}
									{if $ann != null}
									<p>{$ann->content}</p>
									{/if}
								</div>

							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-6">
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">开始使用</p>
									{*<p>
										订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>（请妥善保管，避免泄露）
									</p>
									<p><button class="btn btn-brand-accent" type="button" data-clipboard-text="https://aaaaa">测试</button></p>
									<p>初次使用请点击查看使用教程</p>*}

									<p><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="windows" type="button"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows使用教程</button></p>
									<p><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="macos" type="button"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS使用教程</button></p>
									<p><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="ios" type="button"><i class="icon icon-lg">laptop_mac</i>&nbsp;iOS使用教程</button></p>
									<p><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="android" type="button"><i class="icon icon-lg">android</i>&nbsp;Android使用教程</button></p>
									<p><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="sstap" type="button"><i class="icon icon-lg">desktop_windows</i>&nbsp;游戏加速使用教程</button></p>
									{*<p>
										测试一下：
										<br>国际加速 - 人在国内，极速访问全球网络：<a href="https://www.youtube.com/watch?v=D6tC1pyrsTM&t=3690s" target="_blank">点击测试YouTube4K视频</a>
										<br>回国加速 - 人在海外，解锁国内版权资源：<a href="https://www.bilibili.com/bangumi/play/ep173286" target="_blank">点击测试bilibili正版番剧</a>
									</p>*}
								</div>
							</div>
						</div>
					</div>
						
					<div class="col-lg-6 col-md-6">
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">账号信息</p>
									<dl class="dl-horizontal">
										{*<p><dt>帐号等级</dt>
										<dd>{$user->class}</dd></p>

										<p><dt>等级过期时间</dt>
										<dd>{$user->class_expire}</dd></p>
										
                                        <p><dt>在线设备数量</dt>
										<dd>{$user->online_ip_count()}</dd></p>
                                      
                                        <p><dt>设备数量限制</dt>
										{if $user->node_connector!=0}
										<dd>{$user->node_connector}个</dd>
										{else}
                                        <dd>不限制</dd>
										{/if}</p>
										
										<p><dt>上次使用</dt>
										<dd>{$user->lastSsTime()}</dd></p>*}
										<p>用户邮箱：{$user->email}</p>
										<p>当前余额：{$user->money} 元</p>
										<p>当前套餐：
											{if $user->class==0}
												免费套餐
											{else}
												{if $user->class==1}国际加速{/if}
												{if $user->class==2}免费试用{/if}
												{if $user->class==3}回国加速{/if}
												{if $user->node_speedlimit!=0}
													{$user->node_speedlimit}M套餐
													{else}
													不限速套餐
												{/if}
												<p>套餐过期时间：{$user->class_expire}</p>
											{/if}
										</p>
										<p><a href="/user/shop">
											<i class="icon icon-lg">shop</i>&nbsp;购买套餐
										</a></p>
										<p><a href="/user/invite">
											<i class="icon icon-lg">loyalty</i>&nbsp;邀请好友
										</a></p>
										<p><a href="/user/edit">
										<i class="icon icon-lg">sync_problem</i>&nbsp;修改密码
										</a></p>
										{*<p><a href="/user/invite">
											<i class="icon icon-lg">loyalty</i>&nbsp;邀请链接
										</a>通过您的邀请链接注册的用户，当 TA 充值时您就会获得 TA 充值金额的<code>{$config["code_payback"]} %</code>的返利。</p>*}
										
										
									</dl>
								</div>

							</div>
						</div>
					</div>


						{*{$pre_user = URL::cloneUser($user)}
						{$user = URL::getSSRConnectInfo($pre_user)}
						{$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
						{$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
						
						<div aria-hidden="true" class="modal modal-va-middle fade" id="windows_modal" role="dialog" tabindex="-1">
							<div class="modal-dialog modal-xs">
								<div class="modal-content">
									<div class="modal-heading">
										<a class="modal-close" data-dismiss="modal">×</a>
										<h2 class="modal-title">WINDOWS使用教程</h2>
									</div>
									<div class="modal-inner">
										<p><a href="win.mp4" target="_blank">点击查看视频教程</a></p>
										<p>
											第一步：下载安装
											<br><a href="/ssr-download/ssr-win.7z">点击这里</a>下载文件，解压，运行小飞机，右下角出现小飞机图标。
										</p>
										<p>
											第二步：选择模式
											<br>右键小飞机 - 代理规则 - 国际加速请选择"绕过局域网和大陆"，回国加速请选择"绕过局域网和非大陆"。
										</p>
										<p>
											第三步：订阅节点
											<br>右键小飞机 - 服务器订阅 - SSR服务器订阅设置，点击Add，将订阅地址<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>复制到网址框，确定。
										</p>
										<p>
											第四步：选择节点
											<br>右键小飞机 - 服务器订阅 更新SSR服务器订阅（不通过代理）。右键小飞机 - 服务器 - 小飞机加速器 - 选择国际加速节点或回国加速节点。打开网站测试一下吧。
										</p>
										
										<p>	
											PS：下次直接打开即可，不用重新使用。
										</p>
										<p>	
											进阶阅读：<a href="https://switchyomega.com/index.html">SwitchyOmega - 轻松快捷地管理和切换多个代理设置</a>
										</p>
									</div>
									
									<div class="modal-footer">
										<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">确定</button></p>
									</div>
								</div>
							</div>
						</div>
						
						<div aria-hidden="true" class="modal modal-va-middle fade" id="macos_modal" role="dialog" tabindex="-1">
							<div class="modal-dialog modal-xs">
								<div class="modal-content">
									<div class="modal-heading">
										<a class="modal-close" data-dismiss="modal">×</a>
										<h2 class="modal-title">MACOS使用教程</h2>
									</div>
									<div class="modal-inner">
										<p><a href="mac.mp4" target="_blank">点击查看视频教程</a></p>
										<p>
											第一步：下载安装
											<br>下载客户端<a href="/ssr-download/ssr-mac.dmg">ssr-mac.dmg</a>。加载镜像后把小飞机拖到桌面并运行。找到右上角的小飞机图标。
											<br>如果提示打不开，请参考这两篇文章：
											<br><a href="https://jingyan.baidu.com/article/f71d60377960651ab741d140.html" target="_blank">Mac打不开身份不明的开发者</a>
											<br><a href="https://jingyan.baidu.com/article/9f63fb9162e3e6c8400f0e30.html" target="_blank">Mac如何开启任何来源选项</a>
										</p>
										<p>
											第二步：选择模式
											<br>右键小飞机 - 国际加速请选择"PAC自动模式"，回国加速请选择"全局模式"。
										</p>
										<p>
											第三步：订阅节点
											<br>右键小飞机 - 服务器 - 编辑订阅，点击+号，将订阅地址<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>复制到网址框，确定。
										</p>
										<p>
											第四步：选择节点
											<br>右键小飞机 - 服务器（显示网速上面那项，添加节点后会变成节点的名字） - 手动更新订阅。右键小飞机 - 服务器 - 小飞机加速器 - 选择国际加速节点或回国加速节点。打开网站测试一下吧。
										</p>
										
										<p>	
											PS：下次直接打开即可，不用重新使用。
										</p>
										<p>	
											进阶阅读：<a href="https://switchyomega.com/index.html">SwitchyOmega - 轻松快捷地管理和切换多个代理设置</a>
										</p>
									</div>
									
									<div class="modal-footer">
										<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">确定</button></p>
									</div>
								</div>
							</div>
						</div>
						
						<div aria-hidden="true" class="modal modal-va-middle fade" id="ios_modal" role="dialog" tabindex="-1">
							<div class="modal-dialog modal-xs">
								<div class="modal-content">
									<div class="modal-heading">
										<a class="modal-close" data-dismiss="modal">×</a>
										<h2 class="modal-title">IOS使用教程</h2>
									</div>
									<div class="modal-inner">
										<p><a href="ios.mp4" target="_blank">点击查看视频教程</a></p>
										<p>
											第一步：下载安装
											<br>App Store登陆帐号<code>xiaofeiji.net@gmail.com</code>密码：<code>Xfj-2018</code>，查看已购项目，下载小火箭Shadowrocket。
										</p>
										<p>
											第二步：选择模式
											<br>打开小火箭，点击全局路由 - 国际加速请选择"使用"，回国加速请选择"代理"。
										</p>
										<p>
											第三步：订阅节点
											<br>在小火箭中点击右上角+号，点击类型选择Subscribe，将订阅地址<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>复制到URL框，确定。
										</p>
										<p>
											第四步：选择节点
											<br>左划订阅地址www.xiaofeiji.net，点击更新。在下方选择国际加速或回国加速。点击连接，Allow，按下指纹。打开网站测试一下吧。
										</p>
										
										<p>	
											PS：下次直接连接即可，不用重新使用。
										</p>
									</div>
									
									<div class="modal-footer">
										<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">确定</button></p>
									</div>
								</div>
							</div>
						</div>
						
						<div aria-hidden="true" class="modal modal-va-middle fade" id="android_modal" role="dialog" tabindex="-1">
							<div class="modal-dialog modal-xs">
								<div class="modal-content">
									<div class="modal-heading">
										<a class="modal-close" data-dismiss="modal">×</a>
										<h2 class="modal-title">ANDROID使用教程</h2>
									</div>
									<div class="modal-inner">
										<p><a href="android.mp4" target="_blank">视频教程</a></p>
										<p>
											第一步：下载安装
											<br><a href="/ssr-download/ssr-android.apk">点击这里</a>下载文件并安装。
										</p>
										<p>
											第二步：选择模式
											<br>打开SSR，点击功能设置下的路由 - 点击全局路由 - 国际加速请选择"绕过局域网及中国大陆地址"，回国加速请选择"仅代理中国大陆地址"。
										</p>
										<p>
											第三步：订阅节点
											<br>点击左上角shadowsocksR文字，点击右下角+号 - 添加/升级SSR订阅地址 - 添加订阅地址，将订阅地址<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>复制进去，确定。

										</p>
										<p>
											第四步：选择节点
											<br>点击订阅列表下的小飞机加速器 - 确定并升级。选择国际加速或回国加速。点击右上角圆形小飞机图标，跳出提示“为ShadowsocksR添加此使用文件？”，点确定。打开网站测试一下吧。
										</p>
										
										<p>	
											PS：下次直接连接即可，不用重新使用。
										</p>
									</div>
									
									<div class="modal-footer">
										<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">确定</button></p>
									</div>
								</div>
							</div>
						</div>*}
						
						

				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}

<script src="/theme/material/js/shake.js/shake.js"></script>


<script>

$("#windows").click(function () {
	window.location.href="/user/win";
	});
$("#macos").click(function () {
	window.location.href="/user/mac";
	});
$("#ios").click(function () {
	window.location.href="/user/ios";
	});
$("#android").click(function () {
	window.location.href="/user/android";
	});
$("#sstap").click(function () {
	window.location.href="/user/sstap";
	});

$(function(){
	new Clipboard('.copy-text');
});

$(".copy-text").click(function () {
	$("#result").modal();
	$("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
});


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
	// 更多接口参考：//www.geetest.com/install/sections/idx-client-sdk.html
};

initGeetest({
	gt: "{$geetest_html->gt}",
	challenge: "{$geetest_html->challenge}",
	product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
	offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
}, handlerPopup);



{/if}


</script>