<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoOrganizador.jsp"></c:import>
<div class="container" >
	<c:set value="${evento}" var="evento"></c:set>
		<h2>${evento.nome}</h2>
		Data de Inicio: ${evento.dataInicio}<br>
		Data de Fim: ${evento.dataFim}<br>	
		<c:choose>
				<c:when test="${evento.tipo} == 'true'">Tipo: Pago<br></c:when>
				<c:otherwise>Tipo: Gratuito<br></c:otherwise>
		</c:choose>			
		Quantidade de vagas: ${evento.quantidadeVagas}	
		
			
				<button type="submit">Inscrever</button>	
		
	
</div>
<c:import url="../basePag/rodape.jsp"></c:import>