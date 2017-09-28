<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>


<div class="container">
	<div class="panel">
		<c:if test='${not empty param["sucesso"]}'>
			<div class="alert alert-info">
				Notícia foi salva com sucesso!
			</div>
		</c:if>
	</div>
	<div class="centro">
		<button type="button" class="btn" data-toggle="modal" data-target="#formNoticia">Postar Notícia</button>
	</div>
	
	<c:forEach items="${noticia}" var="noticia">
		<div class="eventoNoticia">
			<div>
					<div>
						<h3>${noticia.titulo}</h3>
					</div>
					<div>
						${noticia.lead}
					</div>
					<div >
						<button type="button" class="btn" onclick="location.href='noticias/deletar${noticia.id}'">Remover</button>	
					</div>
			</div>
		</div>	
	</c:forEach>
</div>
<c:import url="./form/formNoticia.jsp"></c:import>
<c:import url="../basePag/rodape.jsp"></c:import>