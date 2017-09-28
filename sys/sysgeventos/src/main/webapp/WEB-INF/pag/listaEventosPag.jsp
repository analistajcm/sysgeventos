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
					<c:choose>
						<c:when test="${evento.tipo == '1'} ">Tipo: Pago<br></c:when>
						<c:otherwise>Tipo: Gratuito<br></c:otherwise>
					</c:choose>
					Quantidade de vagas: ${evento.quantidadeVagas}
				</div>
				<div >
					<button type="submit" onclick="location.href='login'" class="btn">Inscrever</button>
					<button type="submit" onclick="location.href='eventos/${evento.id}'" class="btn">Saiba mais</button>	
				</div>
		</div>
	</c:forEach>
</div>