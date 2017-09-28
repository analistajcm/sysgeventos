<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Certificado</title>

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
@IMPORT url("${path}/static/css/rolebsb.css");
@IMPORT url("${path}/static/css/impressao.css");
</style>

<style type="text/css">
h1{
	text-align: center;
	margin-bottom: 20%;
}
h2{
	text-align: center;
}
h3{
	text-align: center;
}
h4{
	text-align: center;
}
h5{
	text-align: center;
	margin-bottom: 200px;
}
</style>

</head>
<body>
	<c:set value="${usuario}" var="usuario"></c:set>
	<c:set value="${evento}" var="evento"></c:set>
	<h1>Certificado de Participação</h1>
	<h3>Reconhece-se que</h3>
	<h2>${usuario.nome}</h2>
	<h4>participou do evento</h4>
	<h3>${evento.nome}</h3>
	
	<h5>Realizado: ${evento.dataInicio} até ${evento.dataFim}</h5>
	
	<div class="centro">
		<button type="button" class="btn" onclick="window.print()"> Imprimir </button>
		<button type="button" class="btn" onclick="window.history.back()"> Voltar </button>
	</div>
</body>
</html>