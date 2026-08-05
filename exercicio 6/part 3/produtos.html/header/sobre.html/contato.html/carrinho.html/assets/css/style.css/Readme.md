HTML
<header>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand fw-bold" href="index.html">MercadoTech</a>
      <button 
        class="navbar-toggler" 
        type="button" 
        data-bs-toggle="collapse" 
        data-bs-target="#navbarNav" 
        aria-controls="navbarNav" 
        aria-expanded="false" 
        aria-label="Alternar navegação">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Início</a></li>
          <li class="nav-item"><a class="nav-link" href="produtos.html">Produtos</a></li>
          <li class="nav-item"><a class="nav-link" href="sobre.html">Sobre</a></li>
          <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
          <li class="nav-item"><a class="nav-link" href="carrinho.html">Carrinho</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Produtos</title>
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
            <li class="nav-item"><a class="nav-link active" href="produtos.html">Produtos</a></li>
            <li class="nav-item"><a class="nav-link" href="sobre.html">Sobre</a></li>
            <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
            <li class="nav-item"><a class="nav-link" href="carrinho.html">Carrinho</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container py-5">
    <h1 class="text-center mb-4 fw-bold">Catálogo de Produtos</h1>
    <div class="row g-4">
      
      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Notebook Gamer X</h5>
            <p class="card-text text-muted">Processador Intel i7, 16GB RAM e SSD 512GB.</p>
            <p class="fw-bold text-success fs-5">R$ 5.499,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Teclado Mecânico RGB</h5>
            <p class="card-text text-muted">Switch Blue, layout ABNT2 e iluminação customizável.</p>
            <p class="fw-bold text-success fs-5">R$ 299,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Mouse Optico 16000 DPI</h5>
            <p class="card-text text-muted">Sensor de alta precisão e 6 botões programáveis.</p>
            <p class="fw-bold text-success fs-5">R$ 180,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Monitor Gamer 144Hz</h5>
            <p class="card-text text-muted">Tela IPS de 27 polegadas e tempo de resposta de 1ms.</p>
            <p class="fw-bold text-success fs-5">R$ 1.299,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Headset Surround 7.1</h5>
            <p class="card-text text-muted">Microfone com cancelamento de ruído e almofadas macias.</p>
            <p class="fw-bold text-success fs-5">R$ 350,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-4">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">Cadeira Gamer Ergonômica</h5>
            <p class="card-text text-muted">Ajuste de altura, reclinável até 180° com apoio lombar.</p>
            <p class="fw-bold text-success fs-5">R$ 899,00</p>
            <a href="carrinho.html" class="btn btn-primary w-100">Adicionar ao Carrinho</a>
          </div>
        </div>
      </div>

    </div>
  </main>

  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Sobre</title>
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
            <li class="nav-item"><a class="nav-link active" href="sobre.html">Sobre</a></li>
            <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
            <li class="nav-item"><a class="nav-link" href="carrinho.html">Carrinho</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8 text-center">
        <h1 class="fw-bold mb-4">Sobre a MercadoTech</h1>
        <p class="lead text-muted">
          Fundada para aproximar os consumidores do melhor em tecnologia, a MercadoTech oferece soluções modernas com atendimento rápido e personalizado.
        </p>
      </div>
    </div>
  </main>

  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Contato</title>
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
            <li class="nav-item"><a class="nav-link" href="sobre.html">Sobre</a></li>
            <li class="nav-item"><a class="nav-link active" href="contato.html">Contato</a></li>
            <li class="nav-item"><a class="nav-link" href="carrinho.html">Carrinho</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container py-5">
    <h1 class="text-center fw-bold mb-4">Entre em Contato</h1>
    <div class="row justify-content-center">
      <div class="col-md-6">
        <form>
          <div class="mb-3">
            <label for="nome" class="form-label">Nome Completo</label>
            <input type="text" class="form-control" id="nome" required />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">E-mail</label>
            <input type="email" class="form-control" id="email" required />
          </div>
          <div class="mb-3">
            <label for="mensagem" class="form-label">Mensagem</label>
            <textarea class="form-control" id="mensagem" rows="4" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary w-100">Enviar</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Carrinho</title>
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
            <li class="nav-item"><a class="nav-link" href="sobre.html">Sobre</a></li>
            <li class="nav-item"><a class="nav-link" href="contato.html">Contato</a></li>
            <li class="nav-item"><a class="nav-link active" href="carrinho.html">Carrinho</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <main class="container py-5">
    <h1 class="fw-bold mb-4 text-center">Seu Carrinho</h1>
    <div class="alert alert-info text-center" role="alert">
      Seu carrinho está vazio no momento. <a href="produtos.html" class="alert-link">Clique aqui para ver os produtos</a>.
    </div>
  </main>

  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

CSS
/* Estilos globais para manter o rodapé no fim da página */
body {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

main {
  flex: 1;
}

.card {
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.card:hover {
  transform: translateY(-4px);
}

