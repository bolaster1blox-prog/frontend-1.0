HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Sobre Nós</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>

  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand fw-bold" href="index.html">MercadoTech</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a class="nav-link" href="index.html">Início</a></li>
            <li class="nav-item"><a class="nav-link" href="produtos.html">Produtos</a></li>
            <li class="nav-item"><a class="nav-link active" aria-current="page" href="sobre.html">Sobre</a></li>
            <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
            <li class="nav-item"><a class="nav-link" href="carrinho.html">Carrinho</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container py-5">
    <div class="text-center mb-5">
      <h1 class="fw-bold display-5">Sobre a MercadoTech</h1>
      <p class="lead text-muted">Inovação, qualidade e tecnologia ao seu alcance.</p>
    </div>

    <section class="mb-5">
      <h2 class="fw-bold border-bottom pb-2">Nossa História</h2>
      <p>
        Fundada em 2024, a <strong>MercadoTech</strong> nasceu com o propósito de simplificar o acesso às melhores tecnologias e hardwares do mercado. O que começou como uma pequena iniciativa apaixonada por computação transformou-se em uma referência em atendimento e entrega rápida para todo o país.
      </p>
    </section>

    <section class="mb-5">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="card h-100 shadow-sm border-0 bg-light">
            <div class="card-body">
              <h3 class="h5 fw-bold text-primary">Missão</h3>
              <p class="card-text">Conectar pessoas e empresas às melhores soluções tecnológicas, com excelência no atendimento e preço justo.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm border-0 bg-light">
            <div class="card-body">
              <h3 class="h5 fw-bold text-primary">Visão</h3>
              <p class="card-text">Ser a principal loja online de tecnologia do Brasil, reconhecida pela confiança e satisfação dos clientes.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 shadow-sm border-0 bg-light">
            <div class="card-body">
              <h3 class="h5 fw-bold text-primary">Valores</h3>
              <p class="card-text">Inovação constante, transparência com o cliente, qualidade garantida e compromisso social.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <h2 class="fw-bold border-bottom pb-2 mb-4">Nossa Equipe</h2>
      <div class="row g-4 text-center">
        <div class="col-6 col-md-3">
          <div class="p-3 shadow-sm rounded border bg-white h-100">
            <h4 class="h6 fw-bold mb-1">Carlos Silva</h4>
            <small class="text-muted">CEO & Fundador</small>
          </div>
        </div>
        <div class="col-6 col-md-3">
          <div class="p-3 shadow-sm rounded border bg-white h-100">
            <h4 class="h6 fw-bold mb-1">Mariana Costa</h4>
            <small class="text-muted">Diretora de Tecnologia</small>
          </div>
        </div>
        <div class="col-6 col-md-3">
          <div class="p-3 shadow-sm rounded border bg-white h-100">
            <h4 class="h6 fw-bold mb-1">Lucas Oliveira</h4>
            <small class="text-muted">Gerente de Produtos</small>
          </div>
        </div>
        <div class="col-6 col-md-3">
          <div class="p-3 shadow-sm rounded border bg-white h-100">
            <h4 class="h6 fw-bold mb-1">Fernanda Lima</h4>
            <small class="text-muted">Suporte ao Cliente</small>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer class="bg-dark text-white text-center py-3 mt-auto">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

index.html: <a class="nav-link active" aria-current="page" href="index.html">Início</a>

produtos.html: <a class="nav-link active" aria-current="page" href="produtos.html">Produtos</a>

sobre.html: <a class="nav-link active" aria-current="page" href="sobre.html">Sobre</a>

contato.html: <a class="nav-link active" aria-current="page" href="contato.html">Contato</a>

carrinho.html: <a class="nav-link active" aria-current="page" href="carrinho.html">Carrinho</a>

CSS
/* Ajustes para manter a altura uniforme dos cards e botões alinhados no rodapé do card */
.card-body {
  display: flex;
  flex-direction: column;
}

.card-body .btn {
  margin-top: auto;
}

/* Imagens responsivas e proporcionalidade */
.card-img-top {
  object-fit: cover;
  max-height: 200px;
  width: 100%;
}

Markdown
## Ajustes Responsivos e Correções - Parte 4

O site foi testado em três diferentes resoluções de tela:
1. **Mobile (360px - 576px):** Ajustado o espaçamento entre cards (`g-4`), forçado botões no rodapé dos cards para evitar desalinhamento.
2. **Tablet (768px):** Ajustado a exibição da equipe e o grid de categorias/produtos em 2 colunas para melhor leitura.
3. **Desktop (1024px+):** Garantido o limite container e navegação completa com indicação visual da página ativa.

### Problemas Encontrados e Soluções:
- **Desalinhamento de Botões nos Cards:** Resolvido com `display: flex; flex-direction: column;` e `margin-top: auto` no botão via CSS externo.
- **Identificação da Página Ativa:** Adicionada a classe `active` e `aria-current="page"` no item da navbar correspondente em todas as páginas.
