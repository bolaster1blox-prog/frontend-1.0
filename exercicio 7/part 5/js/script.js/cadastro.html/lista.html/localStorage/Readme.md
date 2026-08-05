JavaScript
// TAREFA 2: Carregar produtos do localStorage (com dados padrão de backup se estiver vazio)
function carregarProdutos() {
  const dadosSalvos = localStorage.getItem("produtosTech");
  if (dadosSalvos) {
    return JSON.parse(dadosSalvos);
  } else {
    // Lista inicial fictícia caso seja o primeiro acesso
    return [
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
      }
    ];
  }
}

// Inicializa a variável global
let produtos = carregarProdutos();

// TAREFA 1: Salvar a lista atualizada de produtos no localStorage
function salvarProdutos() {
  localStorage.setItem("produtosTech", JSON.stringify(produtos));
}

// --- RENDERAÇÃO E INTERFAZ (lista.html) ---

function renderizarProdutos(listaParaExibir = produtos) {
  const container = document.getElementById("listaProdutos");
  if (!container) return;

  container.innerHTML = "";

  if (listaParaExibir.length === 0) {
    container.innerHTML = `<p class="text-center text-muted w-100 fs-5">Nenhum produto cadastrado.</p>`;
    atualizarResumo();
    return;
  }

  listaParaExibir.forEach((produto) => {
    const colDiv = document.createElement("div");
    colDiv.className = "col";

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
          <h6 class="text-primary fw-bold my-2">R$ ${parseFloat(produto.preco).toFixed(2)}</h6>
          
          <div class="mt-auto pt-3 border-top d-flex gap-2">
            <button onclick="editarProduto(${produto.id})" class="btn btn-warning btn-sm flex-fill">✏️ Editar</button>
            <button onclick="excluirProduto(${produto.id})" class="btn btn-danger btn-sm flex-fill">🗑️ Excluir</button>
          </div>
        </div>
      </div>
    `;

    container.appendChild(colDiv);
  });

  atualizarResumo();
}

function atualizarResumo() {
  const totalElem = document.getElementById("totalProdutos");
  const ativosElem = document.getElementById("produtosAtivos");
  const valorEstoqueElem = document.getElementById("valorEstoque");

  if (!totalElem) return;

  const total = produtos.length;
  const ativos = produtos.filter(p => p.status === "Ativo").length;
  const valorTotal = produtos.reduce((acc, p) => acc + (parseFloat(p.preco) * parseInt(p.estoque)), 0);

  totalElem.innerText = total;
  ativosElem.innerText = ativos;
  valorEstoqueElem.innerText = `R$ ${valorTotal.toFixed(2)}`;
}

// TAREFA 3: Cadastrar e atualizar localStorage
function cadastrarProduto(event) {
  event.preventDefault();

  const nome = document.getElementById("nome").value.trim();
  const categoria = document.getElementById("categoria").value;
  const preco = parseFloat(document.getElementById("preco").value);
  const estoque = parseInt(document.getElementById("estoque").value);
  const status = document.getElementById("status").value;

  const divMensagem = document.getElementById("mensagem");

  if (!nome || !categoria || isNaN(preco) || isNaN(estoque)) {
    divMensagem.className = "alert alert-danger";
    divMensagem.innerText = "Preencha todos os campos corretamente!";
    divMensagem.classList.remove("d-none");
    return;
  }

  const novoProduto = {
    id: Date.now(), // Gera um ID único baseado na data atual
    nome,
    categoria,
    preco,
    estoque,
    status,
    imagem: "https://via.placeholder.com/300x200?text=" + encodeURIComponent(nome)
  };

  produtos.push(novoProduto);
  salvarProdutos(); // Atualiza o localStorage

  divMensagem.className = "alert alert-success";
  divMensagem.innerText = `Produto "${novoProduto.nome}" cadastrado com sucesso!`;
  divMensagem.classList.remove("d-none");

  document.getElementById("formCadastro").reset();
}

// TAREFA 3: Excluir e atualizar localStorage
function excluirProduto(id) {
  if (confirm("Deseja realmente excluir este produto?")) {
    produtos = produtos.filter(p => p.id !== id);
    salvarProdutos(); // Salva as mudanças
    renderizarProdutos();
  }
}

// TAREFA 3: Editar e atualizar localStorage
function editarProduto(id) {
  const produto = produtos.find(p => p.id === id);
  if (!produto) return;

  const novoNome = prompt("Edite o nome do produto:", produto.nome);
  const novoPreco = prompt("Edite o preço (R$):", produto.preco);
  const novoEstoque = prompt("Edite o estoque (quantidade):", produto.estoque);

  if (novoNome && !isNaN(parseFloat(novoPreco)) && !isNaN(parseInt(novoEstoque))) {
    produto.nome = novoNome.trim();
    produto.preco = parseFloat(novoPreco);
    produto.estoque = parseInt(novoEstoque);
    
    salvarProdutos(); // Atualiza o localStorage com os novos valores
    renderizarProdutos();
  }
}

// Campo de Busca em Tempo Real
function filtrarProdutos() {
  const termo = document.getElementById("campoBusca").value.toLowerCase();
  const produtosFiltrados = produtos.filter(p => p.nome.toLowerCase().includes(termo));
  renderizarProdutos(produtosFiltrados);
}

// Inicialização dos Ouvintes de Evento
document.addEventListener("DOMContentLoaded", () => {
  renderizarProdutos();

  const formCadastro = document.getElementById("formCadastro");
  if (formCadastro) {
    formCadastro.addEventListener("submit", cadastrarProduto);
  }

  const campoBusca = document.getElementById("campoBusca");
  if (campoBusca) {
    campoBusca.addEventListener("input", filtrarProdutos);
  }
});

Markdown
# 📦 Sistema de Cadastro de Produtos - Exercício 7

Sistema web completo e responsivo para gerenciamento de produtos com persistência local.

## 🎯 Objetivo
Aplicação voltada para gerenciamento de estoque de produtos em uma loja fictícia. O sistema permite cadastrar, listar, buscar, editar e excluir produtos com salvamento persistente utilizando o `localStorage` do navegador.

## 📄 Páginas do Projeto
- **`index.html`**: Página inicial com mensagem de boas-vindas e acesso rápido.
- **`cadastro.html`**: Formulário responsivo com validação para inclusão de novos produtos.
- **`lista.html`**: Listagem dinâmica em cards, campo de busca e painel estatístico do estoque.
- **`contato.html`**: Formulário de fale conosco.

## 🛠️ Tecnologias Utilizadas
- **HTML5**: Estruturação semântica.
- **CSS3 & Bootstrap 5 (CDN)**: Design moderno e layout responsivo.
- **JavaScript (ES6+)**: Manipulação de DOM, loops, objetos, funções e tratamento de eventos.
- **localStorage & JSON**: Armazenamento e persistência dos dados no navegador.

## 🚀 Como Executar o Projeto
1. Clone o repositório ou navegue até a pasta `frontend/Exercicio 7/`.
2. Abra o arquivo `index.html` em qualquer navegador web.
3. Cadastre produtos no menu **Cadastro** e visualize-os salvos na aba **Lista**, mesmo após recarregar a página!
