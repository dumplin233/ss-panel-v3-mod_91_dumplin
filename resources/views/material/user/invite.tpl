















{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">邀请好友</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div style="word-break:break-all" class="row">
				
					{*<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">注意！</p>

										<p>邀请码请给认识的需要的人。</p>

										<p>邀请有记录，若被邀请的人违反用户协议，您将会有连带责任。</p>
									</div>
									
								</div>
							</div>
						</div>
					</div>*}
					
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">邀请说明</p>
										<p>
											推荐好友使用小飞机，你可以：
											<br>1.获得好友消费金额<code>{$config["code_payback"]}%</code>的返利
											<br>2.获得个人优惠码，享受永久折扣
											<br>被邀请的好友也将获得<code>{$config["invite_get_money"]}</code>元的新用户奖励
										</p>
										{*{if $user->invite_num }
										<div class="card-action">
											<div class="card-action-btn pull-left">
													<button id="invite" class="btn btn-flat waves-attach">点击这里生成邀请链接</button>
											</div>
										</div>
										{/if}*}
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">邀请方法</p>
										<p>
											向好友分享你的邀请码，让TA在注册时填入。或者分享邀请链接，点开将自动填入邀请码。
											{foreach $codes as $code}
												<br>邀请码：<code>{$code->code}</code>
												<br>邀请链接：<code><a href="/auth/register?code={$code->code}" target="_blank">{$config["baseUrl"]}/auth/register?code={$code->code}</a></code>
											{/foreach}
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					{*<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">个人优惠码</p>
										<p>
											邀请好友并获得返利后，可联系客服获取你的个人优惠码，个人优惠码永久有效
											<table class="table ">
												<tr>
													<th>累计返利</th>
													<th>可享折扣</th>
												</tr>
												<tr>
													<th>20元</th>
													<th>9折</th>
												</tr>
												<tr>
													<th>40元</th>
													<th>8折</th>
												</tr>
												<tr>
													<th>60元</th>
													<th>7折</th>
												</tr>
												<tr>
													<th>80元</th>
													<th>6折</th>
												</tr>
												<tr>
													<th>100元</th>
													<th>5折</th>
												</tr>
											</table>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>*}
					
					{*<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">提现说明</p>
										<p>返利金额可以提现到支付宝。<br>
										提现方法：<br>
										1.用登陆邮箱发送邮件给admin@xiaofeiji.net<br>
										2.告诉我们您想要提现的金额和您的支付宝账号<br>
										3.提现将在1-5天内完成，完成后将从余额中扣除相应的金额，并发送邮件通知</p>
									</div>
									
								</div>
							</div>
						</div>
					</div>*}

					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">返利记录</p>
										<div class="card-table">
											<div class="table-responsive">
											{$paybacks->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>返利用户</th>
														<th>返利金额</th>
														<th>返利时间</th>
													</tr>
													</thead>
													<tbody>
													{foreach $paybacks as $payback}
														<tr>
															<td><b>{$payback->id}</b></td>
															{if $payback->user()!=null}
																<td>{$payback->user()->email}</td>
															{else}
																<td>已注销</td>
															{/if}
															</td>
															<td>{$payback->ref_get} 元</td>
															<td>{date('Y-m-d H:i:s',$payback->datetime)}</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					
					{*<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">邀请</p>
										<p>当前您可以生成<code>{$user->invite_num}</code>个邀请码。 </p>
									</div>
									{if $user->invite_num }
									<div class="card-action">
										<div class="card-action-btn pull-left">
											
												<button id="invite" class="btn btn-flat waves-attach">生成我的邀请码</button>
											
										</div>
									</div>
									{/if}
									
									{foreach $codes as $code}
														<tr>
															<td><b>{$code->id}</b></td>
															<td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
															</td>
															<td>可用</td>
														</tr>
													{/foreach}
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								
									<div class="card-inner">
									
										<div class="card-table">
											<div class="table-responsive">
											{$codes->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>邀请链接(点右键复制链接)</th>
														<th>状态</th>
													</tr>
													</thead>
													<tbody>
													{foreach $codes as $code}
														<tr>
															<td><b>{$code->id}</b></td>
															<td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
															</td>
															<td>可用</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$codes->render()}
											</div>
										</div>
									
								</div>
							</div>
						</div>
					</div>*}
					
					
					
					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}


<script>
    $(document).ready(function () {
        $("#invite").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/invite",
                dataType: "json",
                success: function (data) {
                    window.location.reload();
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
    })
</script>

