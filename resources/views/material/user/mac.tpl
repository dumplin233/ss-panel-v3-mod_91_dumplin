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
										<p class="card-heading">MACOS使用教程</p>
										<a href="/mac.mp4" target="_blank"><img src="/video.jpg" width=200></a>
										<p>
											<h5>第一步：下载安装</h5>
											下载客户端<a href="/ssr-download/ssr-mac.dmg">ssr-mac.dmg</a>。加载镜像后把小飞机拖到桌面并运行。找到右上角的小飞机图标。
											<br>如果提示"打不开 XXX，因为它来自身份不明的开发者"，请参考这两篇文章：
											<br><a href="https://jingyan.baidu.com/article/f71d60377960651ab741d140.html" target="_blank">百度经验 - Mac打不开身份不明的开发者</a>
											<br><a href="https://jingyan.baidu.com/article/9f63fb9162e3e6c8400f0e30.html" target="_blank">百度经验 - Mac如何开启任何来源选项</a>
										</p>
										<p>
											<h5>第二步：选择模式</h5>
											<br>右键小飞机 - ACL模式 - 国际加速请选择"ACL自动"/回国加速请选择"代理大陆IP"。
										</p>
										<p>
											<h5>第三步：添加订阅</h5>
											订阅地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code>（请妥善保管，避免泄露）
											<br>右键小飞机 - 服务器 - 编辑订阅 - 点击+号 - 将订阅地址复制到网址框 - 确定。
										</p>
										<p>
											<h5>第四步：选择节点</h5>
											右键小飞机 - 服务器（显示网速上面那项，添加节点后会变成节点的名字） - 手动更新订阅。
											<br>右键小飞机 - 服务器 - 小飞机加速器 - 选择一个节点。
											<br>右键小飞机 - 打开Shadowsocks。
										</p>
										
										<p>	
											<h5>配置完成，测试一下吧</h5>
											<br>国际加速 - 人在国内，极速访问全球网络：<a href="https://www.youtube.com/watch?v=D6tC1pyrsTM&t=3690s" target="_blank">点击测试YouTube4K视频</a>
											<br>回国加速 - 人在海外，解锁国内版权资源：<a href="https://www.bilibili.com/bangumi/play/ep173286" target="_blank">点击测试bilibili正版番剧</a>
											<br>PS：下次直接打开小飞机即可使用
										</p>
										<p>	
											<h5>有问题？找客服</h5>
											<a href="https://wpa.qq.com/msgrd?v=3&amp;uin=123456789&amp;site=qq&amp;menu=yes" title="QQ客服">QQ客服</a>：123456789
											<br>下载远程协助软件<a href="/TeamViewerQS.dmg">TeamViewerQS.dmg</a>
										</p>
										<p>	
											<h5>进阶阅读：</h5>
											<a href="https://switchyomega.com/index.html">SwitchyOmega - 轻松快捷地管理和切换多个代理设置</a>
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