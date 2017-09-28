<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RolêBSB - LOGIN</title>
<meta name="description" content="RolêBSB - Sistema gerenciador de eventos">
<meta name="keywords" content="Rolê, eventos, sistema de eventos, sistema gerenciados de eventosevento, curso, eventos, cursos, gestão de cursos, organização de eventos, gestão de eventos, cadastro de eventos, congressos, seminários, carreiras esportivas, cursos, semanas de cursos, corporativos, treinamentos">
<meta name="robots" content="index, follow">
<meta name="author" content="João Carlos de Sá Machado">

<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<style type="text/css">
@IMPORT url("${path}/static/css/normalize.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap.min.css");
@IMPORT url("${path}/static/bootstrap/css/bootstrap-theme.css");
</style>

<style type="text/css">
body{
 background-color: #f4511e;
}
#login{
	width: 80%;
	height: 250 px; 
	margin: 35% auto;	
}

@media screen and (min-width: 640px){
#login{ width: 78%; margin: 45% auto;}
}

@media screen and (min-width: 768px){
#login{ width: 65%; margin: 45% auto;}
}

@media screen and (min-width: 1024px){
#login{ width: 50%; margin: 25% auto;}
}

@media screen and (min-width: 1280px){
#login{ width: 40%; margin: 10% auto;}
}

</style>

</head>

<body>
	
<section id="login" class="panel">
	<c:if test='${not empty param["semacesso"]}'>
		<div class="alert alert-warning">
			Usuario e/ou senha incorretas!
		</div>
	</c:if>
		
	<c:if test='${not empty param["saiu"] }'>
		<div class="alert alert-info">
			Saiu da aplicação!
		</div>
	</c:if>
	
	<c:if test='${not empty param["sucesso"] }'>
		<div class="alert alert-info">
			Cadastro feito com sucesso. Seja bem vindo ao RolêBSB. Faça seu login.
		</div>
	</c:if>
	
	<form action="${path}/autenticar" method="post">
		<div class="panel-heading">
			<h3>RolêBSB - Login</h3>
		</div>
		
		<div class="panel-body">
			<label for="email">Usuário:</label>
			<input id="email" name="email" class="form-control">
		
			<label for="senha">Senha:</label>
			<input type="password" id="senha" name="senha" class="form-control">
		</div>
		
		<div class="panel-footer">
			<button class="btn" id="botao">Entrar</button>
		</div>
		
		<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
	</form>
</section>

<script type="text/javascript" src="${path}/static/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="${path}/static/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>