<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../basePag/cabecalho.jsp"></c:import>
	<c:set value="${noticia}" var="noticia"></c:set>
	<div class="container">
		<div>
			<div>
				<h2>${noticia.titulo}</h2>
			</div>
			<div>
				 <h3>${noticia.lead}</h3>
			</div>
			<div>
				<p>${noticia.noticia}</p>
			</div>
			<div>
			<button type="submit" onclick="window.history.back()" class="btn">Voltar</button>
			</div>	
		</div>
	</div>
<c:import url="../basePag/rodape.jsp"></c:import>