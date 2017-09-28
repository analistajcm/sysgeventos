<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalho.jsp"></c:import>

<div class="container">	
		<c:forEach items="${noticia}" var="noticia" >
			<div class="eventoNoticia">
				<div>
					<div>
						<h3>${noticia.titulo}</h3>
					</div>
					<div>
						${noticia.lead}
					</div>
					<div >
						<button type="button" class="btn" onclick="location.href='noticias/${noticia.id}'">Ver</button>	
					</div>
				</div>
			</div>
		</c:forEach>
</div>
<c:import url="../basePag/rodape.jsp"></c:import>