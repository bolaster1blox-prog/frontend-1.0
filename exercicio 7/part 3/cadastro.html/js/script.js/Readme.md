HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro de Produto - Loja Tech</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="index.html">Loja Tech</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Início</a></li>
          <li class="nav-item"><a class="nav-link active" href="cadastro.html">Cadastro</a></li>
          <li class="nav-item"><a class="nav-link" href="lista.html">Lista</a></li>
          <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5" style="max-width: 600px;">
    <h2 class="mb-4 text-center">Cadastrar Novo Produto</h2>

    <div id="mensagem" class="d-none alert my-3" role="alert"></div>

    <form id="formCadastro" class="card p-4 shadow-sm">
      <div class="mb-3">
        <label for="nome" class="form-label">Nome do Produto</label>
        <input type="text" class="form-control" id="nome" placeholder="Ex: Mouse Sem Fio" required>
      </div>

      <div class="mb-3">
        <label for="categoria" class="form-label">Categoria</label>
        <select class="form-select" id="categoria" required>
          <option value="" disabled selected>Selecione uma categoria...</option>
          <option value="Periféricos">Periféricos</option>
          <option value="Hardware">Hardware</option>
          <option value="Smartphones">Smartphones</option>
          <option value="Acessórios">Acessórios</option>
        </select>
      </div>

      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="preco" class="form-label">Preço (R$)</label>
          <input type="number" step="0.01" min="0" class="form-control" id="preco" placeholder="0.00" required>
        </div>

        <div class="col-md-6 mb-3">
          <label for="estoque" class="form-label">Estoque (Qtd)</label>
          <input type="number" min="0" class="form-control" id="estoque" placeholder="0" required>
        </div>
      </div>

      <div class="mb-3">
        <label for="status" class="form-label">Status</label>
        <select class="form-select" id="status" required>
          <option value="Ativo">Ativo</option>
          <option value="Inativo">Inativo</option>
        </select>
      </div>

      <button type="submit" class="btn btn-success w-100 mt-2">Cadastrar Produto</button>
    </form>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/script.js"></script>
</body>
</html>

JavaScript
// Array inicial de produtos (caso ainda não exista)
const produtos = [];

// TAREFA 3: Função para ler campos, validar e criar o objeto
function cadastrarProduto(event) {
  // TAREFA 2: Captura o submit e previne o recarregamento da página
  event.preventDefault();

  // Leitura dos valores dos campos
  const nome = document.getElementById("nome").value.trim();
  const categoria = document.getElementById("categoria").value;
  const preco = parseFloat(document.getElementById("preco").value);
  const estoque = parseInt(document.getElementById("estoque").value);
  const status = document.getElementById("status").value;

  const divMensagem = document.getElementById("mensagem");

  // Validação simples dos dados
  if (!nome || !categoria || isNaN(preco) || isNaN(estoque) || preco < 0 || estoque < 0) {
    divMensagem.className = "alert alert-danger";
    divMensagem.innerText = "Por favor, preencha todos os campos corretamente com valores válidos!";
    divMensagem.classList.remove("d-none");
    return;
  }

  // Criação do objeto produto
  const novoProduto = {
    nome: nome,
    categoria: categoria,
    preco: preco,
    estoque: estoque,
    status: status
  };

  // TAREFA 4: Adiciona o objeto ao array de produtos
  produtos.push(novoProduto);

  // TAREFA 5: Exibe mensagem de sucesso e limpa o formulário
  divMensagem.className = "alert alert-success";
  divMensagem.innerText = `Produto "${novoProduto.nome}" cadastrado com sucesso!`;
  divMensagem.classList.remove("d-none");

  // Limpa os campos do formulário
  document.getElementById("formCadastro").reset();

  // Exibe no console para conferência
  console.log("Array de Produtos Atualizado:", produtos);
}

// TAREFA 2: Adiciona o ouvinte de evento submit ao formulário quando a página carregar
document.addEventListener("DOMContentLoaded", () => {
  const formCadastro = document.getElementById("formCadastro");
  if (formCadastro) {
    formCadastro.addEventListener("submit", cadastrarProduto);
  }
});
