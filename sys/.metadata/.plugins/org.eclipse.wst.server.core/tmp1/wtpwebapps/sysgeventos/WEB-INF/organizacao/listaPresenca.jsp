<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Presença</title>

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
@IMPORT url("${path}/static/css/rolebsb.css");
</style>

</head>
<body>
	<section class="container">
	<div align="center">
		<h1>Lista de Presença</h1>
	</div>
		<table class=" table table-houover table-condesed table-striped table-bordered">
			<thead>
				<tr>
					<td>Nome</td>
					<td>CPF</td>
					<td>Presente</td>
					<td>Ausente</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuario}" var="usuario">
					<tr>
						<td>${usuario.nome}</td>
						<td>${usuario.cpf}</td>
						<td align="center"><input type="radio"></td>
						<td align="center"><input type="radio"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
	<div class="centro">
		<button type="button" class="btn" onclick="window.print()"> Imprimir </button>
		<button type="button" class="btn" onclick="window.history.back()"> Voltar </button>
	</div>
</body>
</html>