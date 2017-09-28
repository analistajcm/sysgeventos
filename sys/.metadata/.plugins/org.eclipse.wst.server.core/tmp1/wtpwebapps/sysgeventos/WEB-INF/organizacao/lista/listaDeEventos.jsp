<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  
<div>		
	<c:forEach items="${evento}" var="evento">
		<div class="evento">
				<div>
					<h3>${evento.nome}</h3>
				</div>
				<div>
					Data de Inicio: ${evento.dataInicio}<br>
					Data de Fim: ${evento.dataFim}<br>
					<c:choose>
						<c:when test="${evento.tipo} = 1">Tipo: Pago<br></c:when>
						<c:otherwise>Tipo: Gratuito</c:otherwise>
					</c:choose>
					Quantidade de vagas: ${evento.quantidadeVagas}
				</div>
				<div >
					<button type="submit" class="btn" data-toggle="modal" data-target="#alterarEvento" >Alterar</button>
					<button type="submit" class="btn" onclick="location.href='eventos/deletar${evento.id}'">Remover</button>	
				</div>
			</div>
	</c:forEach>
</div>

-->