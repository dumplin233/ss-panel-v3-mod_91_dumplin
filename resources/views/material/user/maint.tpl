<?php

$total = 10;
$uid = 1;
$apiid = 15013;
$apikey = "65c2cb10a6ee9f9d12f61bbfe9ef0391";
$showurl = 'https://www.xiaofeiji.xyz/jsj_callback';
$addnum =  'pay'.$apiid.'12345054321';	
echo "
		<form name='form1' action='https://api.jsjapp.com/pay/syt.php' method='POST'>
			<input type='hidden' name='uid' value='".$uid."'>
			<input type='hidden' name='total' value='".$total."'>
			<input type='hidden' name='apiid' value='".$apiid."'>
			<input type='hidden' name='showurl' value='".$showurl."'>
			<input type='hidden' name='apikey' value='".$apikey."'>
			<input type='hidden' name='addnum' value='".$addnum."'>

			<input type='hidden' name='sort' value='".2."'>
		</form>
		<script>window.onload=function(){document.form1.submit();}</script> ";
        }
?>