<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Ações de Extensão</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<header class="bg-primary text-white p-4 mb-4">
    <div class="container">
        <h1 class="display-5">Extensão Universitária</h1>
        <p class="lead">Repositório de Ações de Extensão</p>
    </div>
</header>

<div class="container">

    <h2 class="mb-3">Ações Disponíveis</h2>

    <!-- Formulário -->
    <form action="acoes" class="row g-3 mb-4">
        <div class="col-md-6">
            <label class="form-label fw-bold">Busca</label>
            <input type="text" name="busca" class="form-control" value="${termoBusca}">
        </div>

        <div class="col-md-4">
            <label class="form-label fw-bold">Status</label>
            <select name="status" class="form-select">
                <option value="Todos" ${statusFiltro eq 'Todos' ? 'selected' : ''}>Todos</option>
                <option value="Vigente" ${statusFiltro eq 'Vigente' ? 'selected' : ''}>Vigentes</option>
                <option value="Encerrada" ${statusFiltro eq 'Encerrada' ? 'selected' : ''}>Encerradas</option>
            </select>
        </div>

        <div class="col-md-2 d-flex align-items-end">
            <button class="btn btn-primary w-100">Buscar</button>
        </div>
    </form>

    <!-- Lista -->
    <div class="row">

        <c:choose>
            <c:when test="${not empty listaAcoes}">
                <c:forEach var="acao" items="${listaAcoes}">
                    <div class="col-md-6 mb-4">

                        <div class="card shadow-sm">
                            <div class="card-body">

                                <h5 class="card-title text-primary">${acao.titulo}</h5>

                                <span class="badge ${acao.status eq 'Vigente' ? 'bg-success' : 'bg-secondary'}">
                                    ${acao.status}
                                </span>

                                <p class="text-muted mt-2">${acao.descricaoCurta}</p>

                                <ul class="list-unstyled">
                                    <li><strong>Período:</strong> ${acao.dataInicioFormatada} a ${acao.dataFimFormatada}</li>
                                    <li><strong>Local:</strong> ${acao.local}</li>
                                    <li><strong>Responsável:</strong> ${acao.responsavel.nome}</li>
                                    <li><strong>Taxas:</strong>
                                        <span class="${acao.temTaxas ? 'text-danger' : 'text-success'} fw-bold">
                                            ${acao.temTaxas ? 'Sim' : 'Não'}
                                        </span>
                                    </li>
                                </ul>

                            </div>
                        </div>

                    </div>
                </c:forEach>
            </c:when>

            <c:otherwise>
                <div class="alert alert-warning text-center">Nenhuma ação encontrada.</div>
            </c:otherwise>
        </c:choose>

    </div>

</div>

</body>
</html>
