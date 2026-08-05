HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lista de Produtos - Loja Tech</title>
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
          <li class="nav-item"><a class="nav-link" href="cadastro.html">Cadastro</a></li>
          <li class="nav-item"><a class="nav-link active" href="lista.html">Lista</a></li>
          <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5">
    <h2 class="mb-4 text-center">Gerenciamento de Produtos</h2>

    <div class="row g-3 mb-4">
      <div class="col-md-4">
        <div class="card bg-primary text-white text-center p-3 shadow-sm">
          <h5>Total de Produtos</h5>
          <h3 id="totalProdutos">0</h3>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card bg-success text-white text-center p-3 shadow-sm">
          <h5>Produtos Ativos</h5>
          <h3 id="produtosAtivos">0</h3>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card bg-dark text-white text-center p-3 shadow-sm">
          <h5>Valor do Estoque</h5>
          <h3 id="valorEstoque">R$ 0,00</h3>
        </div>
      </div>
    </div>

    <div class="row mb-4">
      <div class="col-md-6 mx-auto">
        <input type="text" id="campoBusca" class="form-control form-control-lg" placeholder="🔍 Buscar produto pelo nome...">
      </div>
    </div>
    
    <div id="listaProdutos" class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      </div>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/script.js"></script>
</body>
</html>

JavaScript
// TAREFA 4: Array de produtos com IDs únicos (Date.now() ou números)
let produtos = [
  {
    id: 1,
    nome: "Notebook Gamer Pro",
    categoria: "Hardware",
    preco: 4599.00,
    estoque: 5,
    status: "Ativo",
    imagem: "https://via.placeholder.com/300x200?text=Notebook+Gamer"
  },
  {
    id: 2,
    nome: "Smartphone TechX 12",
    categoria: "Smartphones",
    preco: 2899.00,
    estoque: 10,
    status: "Ativo",
    imagem: "https://via.placeholder.com/300x200?text=Smartphone"
  },
  {
    id: 3,
    nome: "Headset Surround 7.1",
    categoria: "Periféricos",
    preco: 349.90,
    estoque: 0,
    status: "Inativo",
    imagem: "https://via.placeholder.com/300x200?text=Headset"
  }
];

// TAREFA 1: Função para renderizar produtos e atualizar a tela
function renderizarProdutos(listaParaExibir = produtos) {
  const container = document.getElementById("listaProdutos");
  if (!container) return;

  container.innerHTML = "";

  if (listaParaExibir.length === 0) {
    container.innerHTML = `<p class="text-center text-muted w-100">Nenhum produto encontrado.</p>`;
    atualizarResumo();
    return;
  }

  listaParaExibir.forEach((produto) => {
    const colDiv = document.createElement("div");
    colDiv.className = "col";

    // TAREFA 3: Adição dos botões de Excluir e Editar
    colDiv.innerHTML = `
      <div class="card h-100 shadow-sm border-${produto.status === 'Ativo' ? 'success' : 'secondary'}">
        <img src="${produto.imagem || 'https://via.placeholder.com/300x200?text=Produto'}" class="card-img-top" alt="${produto.nome}">
        <div class="card-body d-flex flex-column">
          <div class="d-flex justify-content-between align-items-center mb-2">
            <span class="badge bg-secondary">${produto.categoria}</span>
            <span class="badge bg-${produto.status === 'Ativo' ? 'success' : 'danger'}">${produto.status}</span>
          </div>
          <h5 class="card-title">${produto.nome}</h5>
          <p class="card-text mb-1"><strong>Estoque:</strong> ${produto.estoque} un.</p>
          <h6 class="text-primary fw-bold my-2">R$ ${produto.preco.toFixed(2)}</h6>
          
          <div class="mt-auto pt-3 border-top d-flex gap-2">
            <button onclick="editarProduto(${produto.id})" class="btn btn-outline-warning btn-sm flex-fill">Editar</button>
            <button onclick="excluirProduto(${produto.id})" class="btn btn-outline-danger btn-sm flex-fill">Excluir</button>
          </div>
        </div>
      </div>
    `;

    container.appendChild(colDiv);
  });

  // TAREFA 5: Atualiza o resumo estatístico
  atualizarResumo();
}

// TAREFA 5: Função para calcular os cards de resumo
function atualizarResumo() {
  const totalElem = document.getElementById("totalProdutos");
  const ativosElem = document.getElementById("produtosAtivos");
  const valorEstoqueElem = document.getElementById("valorEstoque");

  if (!totalElem) return;

  const total = produtos.length;
  const ativos = produtos.filter(p => p.status === "Ativo").length;
  const valorTotal = produtos.reduce((acc, p) => acc + (p.preco * p.estoque), 0);

  totalElem.innerText = total;
  ativosElem.innerText = ativos;
  valorEstoqueElem.innerText = `R$ ${valorTotal.toFixed(2)}`;
}

// TAREFA 2: Função de Busca em Tempo Real
function filtrarProdutos() {
  const termo = document.getElementById("campoBusca").value.toLowerCase();
  const produtosFiltrados = produtos.filter(p => p.nome.toLowerCase().includes(termo));
  renderizarProdutos(produtosFiltrados);
}

// TAREFA 3: Função para Excluir Produto usando ID único (TAREFA 4)
function excluirProduto(id) {
  if (confirm("Tem certeza que deseja excluir este produto?")) {
    produtos = produtos.filter(p => p.id !== id);
    renderizarProdutos();
  }
}

// TAREFA 3: Função para Editar Produto
function editarProduto(id) {
  const produto = produtos.find(p => p.id === id);
  if (!produto) return;

  const novoNome = prompt("Edite o nome do produto:", produto.nome);
  const novoPreco = prompt("Edite o preço do produto:", produto.preco);

  if (novoNome && !isNaN(parseFloat(novoPreco))) {
    produto.nome = novoNome;
    produto.preco = parseFloat(novoPreco);
    renderizarProdutos();
  }
}

// Eventos e Inicialização
document.addEventListener("DOMContentLoaded", () => {
  renderizarProdutos();

  // Ouvinte para o campo de busca
  const campoBusca = document.getElementById("campoBusca");
  if (campoBusca) {
    campoBusca.addEventListener("input", filtrarProdutos);
  }
});
