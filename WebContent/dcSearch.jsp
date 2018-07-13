<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>数据收集</title>
<link rel="stylesheet" href="${path}/css/light7.min.css">
<link rel="stylesheet" href="${path}/css/light7-swiper.min.css">
<script type="text/javascript">
	var basePath='<%=request.getContextPath()%>';
	var operation = '${operation}';
	var sfc = '${sfc}';
	var start = '${start}';
	var end = '${end}';
	console.log(operation + " " + sfc + " " + start + " " + end);
</script>
<style>

.list-item {
	margin-left: 0.2rem;
	margin-right: 0.3rem;
}

.list-block .item-title.label{
	width:30%;
	font-size:0.8rem;
}

i.icon.icon-form-search {
	width: 1.05rem;
	height: 1.05rem;
	background-image: url(${path}/images/pda/search.png);
}

i.icon.icon-form-delete {
	width: 1.05rem;
	height: 1.05rem;
	background-image: url(${path}/images/pda/delete.png);
}

i.icon.icon-form-calendar {
	width: 1.05rem;
	height: 1.05rem;
	background-image: url(${path}/images/pda/calendar.png);
}
</style>

</head>
<body>
	<div class="page page-current">
		<header class="bar bar-nav">
		<h1 class='title'>数据收集</h1>
		</header>
		<div class="content">
			<div class="content-block" style="background:#FFFFFF;">
				<div class="list-block">
					<ul>
						<li>
							<div class="item-content">

								<div class="item-inner">
								<div class="item-title label">操作</div>
									<div class="item-input">
										<input id="operation" type="text" autofocus="autofocus">
									</div>
								</div>
								<div id="btnSearchOperation" class="item-media list-item">
									<i class="icon icon-form-search"></i>
								</div>
								<div id="btnClearOperation" class="item-media list-item">
									<i class="icon icon-form-delete"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="item-content">

								<div class="item-inner">
								<div class="item-title label">SFC</div>
									<div class="item-input">
										<input id="sfc" type="text" >
									</div>
								</div>
								<div id="btnSearchSfc" class="item-media list-item">
									<i class="icon icon-form-search"></i>
								</div>
								<div id="btnClearSfc" class="item-media list-item">
									<i class="icon icon-form-delete"></i>
								</div>
							</div>
						</li>						
						<li>
							<div class="item-content">

								<div class="item-inner">
									<div class="item-title label">开始日期</div>
									<div class="item-input">
										<input id="startDate" type="text" >
									</div>
								</div>		
							</div>
						</li>
						<li>
							<div class="item-content">

								<div class="item-inner">
								<div class="item-title label">结束日期</div>
									<div class="item-input">
										<input id="endDate" type="text" >
									</div>
								</div>							
							</div>
						</li>
					</ul>
					<div align="center"  >
						<br/>
						<div id="search" class="button button-dark" style="width:98%;font-size:0.9rem">查 询</div>
						<br/>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript" src="${path}/js/jquery.min-2.2.1.js"></script>
	<script type="text/javascript" src="${path}/js/light7.min.js"></script>
	<script type="text/javascript"
		src="${path}/js/light7-swiper.min.js"></script>
	<script type="text/javascript" src="${path}/js/cn.min.js"></script>
	<script type="text/javascript" src="${path}/js/dcSearch.js"></script>
</body>
</html>