<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- Custom styles for this template -->
<link href="http://getbootstrap.com/examples/carousel/carousel.css"
	rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
						</button>
						<a class="navbar-brand" href="<c:url value='/my_page' />">請假系統</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<c:url value='/my_page' />">我的資料</a></li>
						</ul>
						<%-- 
              	這邊增加更多的 menu
              --%>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="<c:url value='/my_page' />"> <span
									class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
							<li><a href="#" id="logoutLink"><span
									class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li>
						</ul>
						<form id="logoutForm" action="<c:url value='/logout' />"
							method="post"></form>
					</div>
				</div>
			</nav>

		</div>
	</div>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing" style="margin-top: 7%;">

		<%-- 這邊放每頁的內容 --%> 
		<form id="saveForm" action="<c:url value='my_page'/>" method="post" class="form-horizontal">
		<div class="row">
			<div class="col-xs-1 col-sm-1"></div>
			<div class="col-xs-10 col-sm-10">
				<div class="form-group">
					<label for="employeeId" class="control-label col-xs-2 col-sm-2"> 員工編號 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="employeeId" id="employeeId" disabled value="${emp.employeeId}"/>
				    </div>
				
					<label for="name" class="control-label col-xs-2 col-sm-2"> 姓名 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="name" id="name" value="${emp.name}"/>
				    </div>		
				</div>
				
				<div class="form-group">
	
					<label for="departmentId" class="control-label col-xs-2 col-sm-2"> 部門 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="departmentId" id="departmentId" disabled value="${emp.departmentId}"/>			
	                </div>
	                
					<label for="email" class="control-label col-xs-2 col-sm-2"> e-mail </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="email" class="form-control" name="email" id="email" value="${emp.email}" />
					</div>
				</div>
				
				<div class="form-group">
	
					<label for="phoneNumber" class="control-label col-xs-2 col-sm-2"> 電話號碼 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="phone" id="phone" value="${emp.phoneNumber}"/>
					</div>
					<label for="hireDate" class="control-label col-xs-2 col-sm-2"> 到職日 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="hireDate" id="hireDate" disabled value="${emp.hireDate}"/>
					</div>
				</div>
				
				<div class="form-group">
	
					<label for="jobId" class="control-label col-xs-2 col-sm-2"> 職別 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="jobId" id="jobId" disabled value="${emp.jobId}"/>
                    </div>
					<label for="managerId" class="control-label col-xs-2 col-sm-2"> 主管 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="text" class="form-control" name="managerId" id="managerId" disabled value="${emp.managerId}"/>
					</div>
				</div>
				
				<div class="form-group">
	
					<label for="password" class="control-label col-xs-2 col-sm-2"> 密碼 </label> 
					<div class="col-xs-4 col-sm-4">
						<input type="password" class="form-control" name="password" id="password" value="${emp.password}"/>
					</div>
				</div>
				<nav>
				  <ul class="pager">
				    <li><button id="saveBtn" class="btn btn-default">存檔</button></li>
				  </ul> 
				</nav>	
				 
			</div>
		<div class="col-xs-1 col-sm-1">
		</div>
		</div>
		</form>
		
		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>&copy; 2017 Ming Tai Company, Inc. &middot;</p>
		</footer>

	</div>
 
</body>

<script type="text/javascript">
	$(function() {
		$("#logoutLink").click(function() {
			$('#logoutForm').submit();
		});
		
		$("#saveBtn").click(function() {
			$('#saveForm').submit();
		});
	});
</script>
</html>
