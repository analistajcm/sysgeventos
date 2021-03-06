<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="../basePag/cabecalhoUsuario.jsp"></c:import>
<c:set value="${evento}" var="evento"></c:set>


	<div class="container-evento">
		
			<h1>${evento.nome}</h1>
			<div class="">
			<iframe width="280" height="158" src="${evento.url}" frameborder="0" allowfullscreen></iframe>
			<p>${evento.descricaoUrl}</p>
			</div>
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
			<p>
			Descri��o: ${evento.descricao}
			</p>
		<div>	
			<button type="submit" onclick="location.href='../eventos/inscrever${evento.id}'" class="btn">Inscrever</button>
			<button type="submit" onclick="window.history.back()" class="btn">Voltar</button>	
		</div>
	</div>		
	
<c:import url="lista/listaComentario.jsp"></c:import>		
<c:import url="comentario.jsp"></c:import>
<c:import url="../basePag/rodape.jsp"></c:import>