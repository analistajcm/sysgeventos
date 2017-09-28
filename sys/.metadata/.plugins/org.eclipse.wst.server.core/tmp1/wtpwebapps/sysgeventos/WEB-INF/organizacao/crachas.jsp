<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Crachas</title>

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
@IMPORT url("${path}/static/css/rolebsb.css");
@IMPORT url("${path}/static/css/impressao.css");
</style>

</head>
<body>
	<div>	
	<c:set value="${evento}" var="evento"></c:set>	
		<c:forEach items="${usuario}" var="usuario">	
		<div class="crachas">
			<svg height="240" width="250" >
				<rect width="250" height="240" style="fill: #f4511e;"/>
				<text font-size="20" font-family="Verdana" x="45" y="50" >${evento.nome}</text>
				<text font-size="15" font-family="Verdana" x="50" y="100 ">${usuario.nome}</text>
				<text font-size="20" font-family="Verdana" x="45" y="150">PARTICIPANTE</text>
			</svg>
		</div>
		</c:forEach>
		<div class="centro">
		<button type="button" class="btn" onclick="window.print()"> Imprimir </button>
		<button type="button" class="btn" onclick="window.history.back()"> Voltar </button>
		</div>
	</div>
</body>
</html>