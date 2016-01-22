<!--{if $arrForm.plg_OmisePaymentGateway_enabled == true}-->
<h2>OmisePaymentGateway決済情報</h2>
<table class="form">
	<tbody>
		<tr>
			<th>決済ID</th>
			<td><!--{$arrForm.plg_OmisePaymentGateway_charge}--></td>
		</tr>
		<tr>
			<th>ステータス</th>
			<td><!--{$arrForm.plg_OmisePaymentGateway_status}--><span style="color:red;margin-left:30px;"><!--{$arrForm.plg_OmisePaymentGateway_status_warning}--></span></td>
		</tr>
		<tr>
			<th>金額</th>
			<td><!--{$arrForm.plg_OmisePaymentGateway_amount}--><span style="color:red;margin-left:30px;"><!--{$arrForm.plg_OmisePaymentGateway_amount_warning}--></span></td>
		</tr>
		<tr>
			<th>決済発行日</th>
			<td><!--{$arrForm.plg_OmisePaymentGateway_create_date}--></td>
		</tr>
		<tr>
			<th>処理</th>
			<td>
				<!--{if $arrForm.plg_OmisePaymentGateway_captured == true}-->
					<input type="button" id="plg_OmisePaymentGateway_refund" value="返金"/>
					<input type="button" id="plg_OmisePaymentGateway_refund" value="返金"/>
				<!--{else}-->
					<input type="button" id="plg_OmisePaymentGateway_charge_capture" value="売上確定"/>
					<input type="button" id="plg_OmisePaymentGateway_amount_change" value="決済金額変更"/>
				<!--{/if}-->
			</td>
		</tr>
	</tbody>
</table>
<script>
$(function() {
	$('#plg_OmisePaymentGateway_charge_capture').click(function() {
		if(confirm('売上を確定します。よろしいですか？')) {
	        document.form1.mode.value = "plg_OmisePaymentGateway_charge_capture";
	        document.form1.submit();
		}
        return false;
	});

	$('#plg_OmisePaymentGateway_amount_change').click(function() {
		if(confirm('決済金額を変更します。よろしいですか？')) {
	        document.form1.mode.value = "plg_OmisePaymentGateway_amount_change";
	        document.form1.submit();
		}
        return false;
	});

	$('#plg_OmisePaymentGateway_refund').click(function() {
		if(confirm('返金処理を実行します。よろしいですか？')) {
	        document.form1.mode.value = "plg_OmisePaymentGateway_refund";
	        document.form1.submit();
		}
        return false;
	});
});
</script>
<!--{/if}-->
