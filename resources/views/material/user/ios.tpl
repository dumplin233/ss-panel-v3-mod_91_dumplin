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
										<p class="card-heading">IOS使用教程</p>
										<a href="/ios.mp4" target="_blank"><img src="/video.jpg" width=200></a>
										<p>
											<h5>第一步：下载安装</h5>
											<br>App Store登陆帐号:<code>xxxx@gmail.com</code>密码：<code>xxxx</code>，查看已购项目，下载并打开小火箭Shadowrocket。
										</p>
										<p>
											<h5>第二步：选择模式</h5>
											<br>点击全局路由 - 配置。国际加速请跳到第三步。回国加速请点击底下的配置 - 添加配置 - 输入地址<code>{$baseUrl}/hgjs.conf</code> - 下载 - 点击添加的网址 - 使用配置。
										</p>
										<p>
											<h5>第三步：添加订阅</h5>
											订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>（请妥善保管，避免泄露）
											<br>在小火箭中点击右上角+号 - 类型选择Subscribe - 将订阅地址复制到URL框 - 确定。
										</p>
										<p>
											<h5>第四步：选择节点</h5>
											<br>左划订阅地址<code>{$baseUrl}</code> - 点击更新。
											<br >在节点列表中选择一个节点 - 点击连接 - Allow - 按下指纹。
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