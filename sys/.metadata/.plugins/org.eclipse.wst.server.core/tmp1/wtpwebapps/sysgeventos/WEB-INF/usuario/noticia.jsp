<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoUsuario.jsp"></c:import>
<div class="container">	
	<c:set value="${noticia}" var="noticia"></c:set>
		<div class="container">
			<div>
					<div>
						<h1>${noticia.titulo}</h1>
					</div>
					<div>
						<h3>${noticia.lead}</h3> 
					</div>
					<div>
						<p>${noticia.noticia}</p>
					</div>
					<div >
						<button class="btn" onclick="window.history.back()">Voltar</button>	
						
					</div>
			</div>
		</div>	
</div>

<c:import url="../basePag/rodape.jsp"></c:import>