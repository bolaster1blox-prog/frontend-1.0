HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sistema de Produtos - Exercício 7</title>
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
          <li class="nav-item"><a class="nav-link" href="lista.html">Lista</a></li>
          <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5">
    <h1>Bem-vindo ao Sistema de Produtos</h1>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/script.js"></script>
</body>
</html>

Markdown
# 📦 Sistema de Cadastro de Produtos - Exercício 7

Projeto desenvolvido para gerenciamento e cadastro de produtos de uma loja fictícia.

## 🎯 Objetivo
Desenvolver uma aplicação web responsiva para cadastrar, listar e gerenciar produtos de uma loja fictícia utilize JavaScript puro para manipulação do DOM e `localStorage` para persistência dos dados.

## 📄 Páginas
- `index.html`: Página inicial com apresentação do sistema.
- `cadastro.html`: Formulário para cadastro de novos produtos.
- `lista.html`: Visualização dos produtos salvos no `localStorage`.
- `contato.html`: Página de contato.

## 🛠️ Tecnologias Utilizadas
- HTML5
- CSS3 & Bootstrap 5 (via CDN)
- JavaScript (ES6+) & `localStorage`
