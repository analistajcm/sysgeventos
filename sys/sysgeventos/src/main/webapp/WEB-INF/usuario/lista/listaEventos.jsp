<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">		
	<c:forEach items="${evento}" var="evento">
		<div class="evento">
				<div>
					<h3>${evento.nome}</h3>
				</div>
				<div>
					Data de Inicio: ${evento.dataInicio}<br>
					Data de Fim: ${evento.dataFim}<br>
					${evento.tipo}
					<c:choose>
						<c:when test="${evento.tipo = 'true'} ">Tipo: Pago<br></c:when>
						<c:otherwise>Tipo: Gratuito<br></c:otherwise>
					</c:choose>
					Quantidade de vagas: ${evento.quantidadeVagas}
				</div>
				<div >
					<button type="submit" onclick="location.href='eventos/inscrever${evento.id}'" class="btn">Inscrever</button>
					<button type="submit" onclick="location.href='eventos/${evento.id}'" class="btn">Saiba mais</button>	
				</div>
			</div>
	</c:forEach>
</div>