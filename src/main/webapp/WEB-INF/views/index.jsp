<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:root-context>
	<jsp:attribute name="extraScripts">
		<script src="<c:url value='/assets/js/app.js' />"></script>
	</jsp:attribute>
	<jsp:body>
	<div class="container">
		<table id="tableFinanceira" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Data</th>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Valor</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Data</th>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Valor</th>
            </tr>
        </tfoot>
        <tbody>
        </tbody>
    </table>
	<button type="button" class="btn btn-warning" data-toggle="modal"
				data-target="#exampleModal" data-whatever="despesa">Criar despesa</button>
	</div>
	<template:formulario />
</jsp:body>
</template:root-context>
<script>
	$(document).ready(function() {
		$('#DataDespesa').datepicker({
			format : "dd/mm/yyyy",
			language : "pt-BR",
			todayHighlight : true
		});
	});
</script>