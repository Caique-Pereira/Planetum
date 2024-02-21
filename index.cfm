<cfprocessingdirective pageencoding="utf-8">
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Clientes</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Clientes</h2>

    <div class="mb-3">
        <label for="birthFilter" class="form-label">Filtrar:</label>
        <select class="form-control mb-2" id="birthFilter" >
            <option value="todos">Exibir todos</option>
            <option value="aniversariantes">Exibir somente os aniversariantes do mês</option>
        </select>
    </div>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Data de Aniversário</th>
                <th>Dia da semana</th>
            </tr>
        </thead>
        <tbody id="tableBody">

        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="customerFuntions.js"></script>


</body>
</html>
