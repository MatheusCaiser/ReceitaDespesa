<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acompanhamento Financeiro</title>

<!-- bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">

<!-- style -->
<link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/dataTables.bootstrap4.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-datepicker.standalone.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/material-design-iconic-font.min.css'/>">
<jsp:invoke fragment="extraStyles" />

<!-- scripts -->
<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/assets/js/jquery.dataTables.min.js'/>"></script>
<script src="<c:url value='/assets/js/dataTables.bootstrap4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap-datepicker.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap-datepicker.pt-BR.min.js'/>"></script>
<script src="<c:url value='/assets/js/jquery.priceformat.js'/>"></script>
<script src="<c:url value='/assets/js/accounting.js'/>"></script>
<jsp:invoke fragment="extraScripts" />
</head>

<body>

	<!-- INICIO NAV (alterar pra include)-->

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">

				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#menu" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">Acompanhamento Financeiro</a>
			</div>
		</div>
	</nav>

	<!-- FINAL NAV -->
	<jsp:doBody />
</body>
</html>