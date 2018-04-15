





{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">购买套餐</h1>
			</div>
		</div>
		<div class="container">

			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">优惠码</p>
								<p>
									购买套餐时填入优惠码，可以获得折扣
									<br>推荐好友使用小飞机，获得永久折扣，点击查看<a href="/user/invite"><i class="icon icon-lg">loyalty</i>&nbsp;邀请好友</a>
									<br>新年优惠码：<code>2018XNKL</code>，年付套餐五折优惠
								</p>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p class="card-heading">当前余额：{$user->money}元</p>
								<p>***套餐可以直接用支付宝购买啦***</p>
								<form name="jsjapp" action="/user/code/jsjapp" method="get">
				                    <div class="form-group form-group-label">
				                        <input class="form-control" id="shop" name="shop" value="00" style="display:none">
				                        <label class="floating-label" for="price">请输入充值金额</label>
				                        <input class="form-control" id="price" name="price">
				                    </div>
				                    <button class="btn btn-flat waves-attach" id="btnSubmit" type="submit" name="submit">点击充值</button>
				                </form>
							</div>
						</div>
					</div>		

					<div class="table-responsive">
						{$shops->render()}
						<table class="table ">
                            <tr>
								<th>套餐</th>
								<th>价格</th>
								<th>购买</th>
								<th></th>
                            </tr>
                            {foreach $shops as $shop}
                            <tr>
								{*<td>#{$shop->id}</td>*}
								<td>{$shop->name}</td>
								<td>{$shop->price} 元</td>
								<td>
									<a class="btn btn-brand-accent" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew},{$shop->auto_reset_bandwidth},'{$shop->name}',{$shop->price})">购买</a>
								</td>
								
								{*<td>{$shop->content()}</td>
								{if $shop->auto_renew==0}
								<td>不能自动续费</td>
								{else}
								<td>可选 在 {$shop->auto_renew} 天后自动续费</td>
								{/if}
								
								{if $shop->auto_reset_bandwidth==0}
								<td>不自动重置</td>
								{else}
								<td>自动重置</td>
								{/if}*}
								
							</tr>
                            {/foreach}
                        </table>
						{$shops->render()}
					</div>
					
					
					<div aria-hidden="true" class="modal modal-va-middle fade" id="coupon_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">您有优惠码吗？</h2>
								</div>
								<div class="modal-inner">
									<div class="form-group form-group-label">
										<label class="floating-label" for="coupon">有的话，请在这里输入。没有的话，直接确定吧</label>
										<input class="form-control" id="coupon" type="text">
									</div>
								</div>
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="coupon_input" type="button">确定</button></p>
								</div>
							</div>
						</div>
					</div>
					
					
					<div aria-hidden="true" class="modal modal-va-middle fade" id="order_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">订单确认</h2>
								</div>
								<div class="modal-inner">
									<p id="name">商品名称：</p>
									<p id="credit">优惠额度：</p>
									<p id="total">总金额：</p>
									<p id="auto_reset">在到期时自动续费</p>
									<div class="checkbox switch" id="autor">
										<label for="autorenew">
											<input checked class="access-hide" id="autorenew" type="checkbox"><span class="switch-toggle"></span>自动续费
										</label>
									</div>
								</div>
								<div class="modal-heading">
									<p>请选择支付方式：</p>
									<p><button class="btn btn-brand-accent" data-dismiss="modal" id="order_input" type="button">余额</button></p>
									<form name="jsjapp" action="/user/code/jsjapp" method="get">
					                    <div class="form-group form-group-label" style="display:none">
					                        <input class="form-control" id="price2" name="price">
					                        <input class="form-control" id="shop2" name="shop">
					                        <input class="form-control" id="coupon2" name="coupon">
					                    </div>
					                    <button class="btn btn-brand-accent" id="btnSubmit" type="submit" name="submit">支付宝</button>
					                </form>
								</div>
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal"  type="button">取消</button></p>
								</div>
							</div>
						</div>
					</div>
					
					{include file='dialog.tpl'}
	
			</div>
			
			
			
		</div>
	</main>









{include file='user/footer.tpl'}


<script>
function buy(id,auto,auto_reset,nam,pric) {
	auto_renew=auto;
	if(auto==0)
	{
		document.getElementById('autor').style.display="none";
	}
	else
	{
		document.getElementById('autor').style.display="";
	}
	
	if(auto_reset==0)
	{
		document.getElementById('auto_reset').style.display="none";
	}
	else
	{
		document.getElementById('auto_reset').style.display="";
	}
	
	shop=id;
	name=nam;
	price=pric;

	//$("#name").html("商品名称："+name);
	//$("#total").html("总金额："+price+"元");

	//document.getElementById("price2").value = price;
	//document.getElementById("shop2").value = shop;

	$("#coupon_modal").modal();
}


$("#coupon_input").click(function () {
		$.ajax({
			type: "POST",
			url: "coupon_check",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop
			},
			success: function (data) {
				if (data.ret) {
					$("#name").html("商品名称："+data.name);
					$("#credit").html("优惠额度："+data.credit);
					$("#total").html("总金额："+data.total+"元");
					$("#price2").val(data.total);
					$("#shop2").val(shop);
					$("#coupon2").val($("#coupon").val());
					$("#order_modal").modal();
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
	
$("#order_input").click(function () {

		if(document.getElementById('autorenew').checked)
		{
			var autorenew=1;
		}
		else
		{
			var autorenew=0;
		}
			
		$.ajax({
			type: "POST",
			url: "buy",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop,
				autorenew: autorenew
			},
			success: function (data) {
				if (data.ret) {
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href='/user/shop'", {$config['jump_delay']});
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
</script>