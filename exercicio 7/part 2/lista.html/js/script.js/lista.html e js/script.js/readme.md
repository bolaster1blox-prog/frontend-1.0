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
    <h2 class="mb-4 text-center">Catálogo de Produtos</h2>
    
    <div id="listaProdutos" class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      </div>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/script.js"></script>
</body>
</html>

JavaScript
// TAREFA 1: Array com 5 produtos fictícios
const produtos = [
  {
    nome: "Notebook Gamer Pro",
    preco: "R$ 4.599,00",
    descricao: "Intel Core i7, 16GB RAM, SSD 512GB, RTX 3060",
    imagem: "https://via.placeholder.com/300x200?text=Notebook+Gamer"
  },
  {
    nome: "Smartphone TechX 12",
    preco: "R$ 2.899,00",
    descricao: "Tela 6.7 OLED, 128GB, Câmera Tripla 48MP",
    imagem: "https://via.placeholder.com/300x200?text=Smartphone"
  },
  {
    nome: "Headset Surround 7.1",
    preco: "R$ 349,90",
    descricao: "Cancelamento de ruído e microfone ajustável",
    imagem: "https://via.placeholder.com/300x200?text=Headset"
  },
  {
    nome: "Teclado Mecânico RGB",
    preco: "R$ 280,00",
    descricao: "Switches azuis, padrão ABNT2 e iluminação RGB",
    imagem: "https://via.placeholder.com/300x200?text=Teclado"
  },
  {
    nome: "Monitor UltraWide 29\"",
    preco: "R$ 1.299,00",
    descricao: "Painel IPS, 75Hz, tempo de resposta de 1ms",
    imagem: "https://via.placeholder.com/300x200?text=Monitor"
  }
];

// Função para renderizar os cards dinamicamente (TAREFA 3 e 4)
function renderizarProdutos() {
  const container = document.getElementById("listaProdutos");

  // Garante que a função só execute se o elemento existir na página
  if (!container) return;

  container.innerHTML = ""; // Limpa o conteúdo inicial

  // TAREFA 3: Loop para percorrer o array e montar os cards responsivos
  produtos.forEach((produto) => {
    const colDiv = document.createElement("div");
    colDiv.className = "col"; // Define a coluna no sistema de grid do Bootstrap

    colDiv.innerHTML = `
      <div class="card h-100 shadow-sm">
        <img src="${produto.imagem}" class="card-img-top" alt="${produto.nome}">
        <div class="card-body d-flex flex-column">
          <h5 class="card-title">${produto.nome}</h5>
          <p class="card-text flex-grow-1">${produto.descricao}</p>
          <h6 class="text-primary fw-bold my-2">${produto.preco}</h6>
          <button class="btn btn-primary w-100 mt-auto">Comprar</button>
        </div>
      </div>
    `;

    container.appendChild(colDiv);
  });
}

// Executa a função quando o documento estiver carregado
document.addEventListener("DOMContentLoaded", renderizarProdutos);
