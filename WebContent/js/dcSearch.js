$(function() {
	initData();

	$('#btnSearchOperation').click(function() {
		getOperation();
	});
	$('#btnClearOperation').click(function() {
		$('#operation').val('');
	});

	$('#btnSearchSfc').click(function() {
		getSfc();
	});
	$('#btnClearSfc').click(function() {
		$('#sfc').val('');
	});

	$('#btnStartDate').click(function() {

	});
	$("#startDate").calendar({
		dateFormat : "yyyy-mm-dd",
	// onChange: function(p, v, d) {
	// console.log(p, v, d);
	// }
	});
	$("#endDate").calendar({
		dateFormat : "yyyy-mm-dd",
	});
	$('#operation').change(function() {
	    var aa = $('#operation').val();
	});
	
	$('#search').click(function(){
		var operation = $('#operation').val();
		var sfc = $('#sfc').val();
		var start = $('#startDate').val();
		var end = $('#endDate').val();
		var url = basePath + '/IPQCServlet'+'?operation=' + operation
		+ '&sfc=' + sfc + '&start=' + start + '&end=' + end;
		console.log("IPQCServlet url "+ url);
		window.location.href = url;
	});
	function initData() {
		var currentDate = new Date();
		var year = currentDate.getFullYear();
		var month = currentDate.getMonth() + 1 < 10 ? "0"
				+ (currentDate.getMonth() + 1) : currentDate.getMonth() + 1;
		var date = currentDate.getDate() < 10 ? "0" + currentDate.getDate()
				: currentDate.getDate();
		var formatDate = year + "-" + month + "-" + date;

		if (typeof (operation) !== "undefined" && operation != "") {
			$('#operation').val(operation);
		}
		if (typeof (sfc) !== "undefined" && sfc != "") {
			$('#sfc').val(sfc);
		}
		if (typeof (start) !== "undefined" && start != "") {
			$('#startDate').val(start);
		} else if (start == "") {
			$("#startDate").val(formatDate);
		}
		if (typeof (end) !== "undefined" && end != "") {
			$('#endDate').val(end);

		} else if (end == "") {
			$("#endDate").val(formatDate);
		}
	}
	function getOperation() {

		var operation = $('#operation').val();
		var sfc = $('#sfc').val();
		var start = $('#startDate').val();
		var end = $('#endDate').val();
		// $.router.loadPage({
		// url : basePath + '/operation' + '?operationData=' + operationData
		// + '&sfc=' + sfc + '&start=' + start + '&end=' + end,
		// replace : false
		// });
		var url = basePath + '/OperationListServlet' + '?operation=' + operation
				+ '&sfc=' + sfc + '&start=' + start + '&end=' + end;
		window.location.href = url;
	}
	function getSfc() {
		var operation = $('#operation').val();
		var sfc = $('#sfc').val();
		var start = $('#startDate').val();
		var end = $('#endDate').val();
		var url = basePath + '/SFCListServlet' + '?operation=' + operation + '&sfc='
				+ sfc + '&start=' + start + '&end=' + end;
		window.location.href = url;
	}
});