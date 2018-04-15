{include file='user/main.tpl'}


	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">使用教程</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
					<div style="word-break:break-all" class="col-lg-12 col-md-12">

						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
										<p class="card-heading">ANDROID使用教程</p>
										<a href="/android.mp4" target="_blank"><img src="/video.jpg" width=200></a>
										<p>
											<h5>第一步：下载安装</h5>
											下载安装包<a href="/ssr-download/ssr-android.apk">ssr-android.apk</a>并安装。
										</p>
										<p>
											<h5>第二步：选择模式</h5>
											<br>打开SSR，点击功能设置下的路由 - - 全局路由 - 国际加速请选择"绕过局域网及中国大陆地址"/回国加速请选择"仅代理中国大陆地址"。
										</p>
										<p>
											<h5>第三步：添加订阅</h5>
											订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>（请妥善保管，避免泄露）
											<br>点击左上角shadowsocksR文字 - 点击右下角+号 - 添加/升级SSR订阅地址 - 添加订阅地址 - 将订阅地址复制到输入框 - 确定。
											<p>找到订阅列表下的FreeSSR-public - 滑动 - 直接删除。</p>
										</p>
										<p>
											<h5>第四步：选择节点</h5>
											点击订阅列表下的小飞机加速器 - 确定并升级。选择一个节点 - 点击右上角圆形小飞机图标 - 提示“为ShadowsocksR添加此配置文件？” - 点确定。
										</p>
										
										<p>	
											<h5>配置完成，测试一下吧</h5>
											<br>国际加速 - 人在国内，极速访问全球网络：<a href="https://www.youtube.com/watch?v=D6tC1pyrsTM&t=3690s" target="_blank">点击测试YouTube4K视频</a>
											<br>回国加速 - 人在海外，解锁国内版权资源：<a href="https://www.bilibili.com/bangumi/play/ep173286" target="_blank">点击测试bilibili正版番剧</a>
											<br>PS：下次直接打开小飞机连接即可使用
										</p>
										<p>	
											<h5>有问题？找客服</h5>
											<a href="https://wpa.qq.com/msgrd?v=3&amp;uin=123456789&amp;site=qq&amp;menu=yes" title="QQ客服">QQ客服</a>：123456789
										</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>

{include file='user/footer.tpl'}