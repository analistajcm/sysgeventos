 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container">
	<h4>Comentários:</h4>
	<c:forEach items="${comentarios}" var="comentarios">
		<div class="comentario">
		
		${comentarios.usuario.nome}:<br>
		<p>${comentarios.textoComentario}</p>
		${comentarios.dataComentario}
		
		</div>
	</c:forEach>
</div>