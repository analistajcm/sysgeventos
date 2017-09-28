<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalho.jsp"></c:import>
<c:set value="${evento}" var="evento"></c:set>

<div class="container" >
	<div class="container-evento">
		
			<h1>${evento.nome}</h1>
		
			<p>
			Data de Inicio: ${evento.dataInicio}<br>
			Data de Fim: ${evento.dataFim}<br>	
			Hora de Inicio: ${evento.horarioInicio}<br>
			Hora de Termino: ${evento.horarioFim}<br>
			
			Palestrante ou estrutor: ${evento.nomePalestrante}<br>
			
			<c:choose>
					<c:when test="${evento.tipo == 'false'} ">Tipo: Pago<br></c:when>
					<c:otherwise>Tipo: Gratuito<br></c:otherwise>
			</c:choose>			
			
			Quantidade de vagas: ${evento.quantidadeVagas}	
			</p>
		<div>	
			<button type="submit" onclick="location.href='../login'" class="btn">Inscrever</button>
			<button type="submit" onclick="window.history.back()" class="btn">Voltar</button>	
		</div>
	</div>				
</div>
<c:import url="../basePag/rodape.jsp"></c:import>