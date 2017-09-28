<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="basePag/cabecalho.jsp"></c:import>

<div>
	<div class="banner">	
		<div class="title">
			<h2>DIVIRTA-SE!</h2>
			<h3>Saiba dos melhores eventos que estão rolando em Brasília</h3>
		</div>
		
		<div class="botao-banner">
			<button type="button" onclick="location.href='cadastro'" class="botao-cadastro" >Cadastre aqui</button>
		</div>
	</div>
	
	<div class="eventos">
	</div>		
</div>

<c:import url="pag/listaEventosPag.jsp"></c:import>
<c:import url="basePag/rodape.jsp"></c:import>