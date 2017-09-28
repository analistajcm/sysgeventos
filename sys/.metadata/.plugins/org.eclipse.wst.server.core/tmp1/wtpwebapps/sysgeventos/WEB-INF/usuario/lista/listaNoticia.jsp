<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<c:forEach items="noticia" var="noticia">
		<div>
			Evento: ${noticia.nome }
			Titulo:${noticia.noticias.titulo}
			Lead:${noticia.noticias.ti }
		</div>
	</c:forEach>
</div>