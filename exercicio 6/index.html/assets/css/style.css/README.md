HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Home</title>

  <link 
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous"
  />

  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>

  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand fw-bold" href="index.html">MercadoTech</a>
      </div>
    </nav>
  </header>

  <main>
    <section class="hero-section py-5 text-center bg-light border-bottom">
      <div class="container">
        <h1 class="display-4 fw-bold text-primary">As melhores tecnologias para você</h1>
        <p class="lead text-muted">Encontre computadores, periféricos e acessórios das melhores marcas com entrega rápida.</p>
        <a href="#destaques" class="btn btn-primary btn-lg mt-2">Ver Destaques</a>
      </div>
    </section>

    <section class="py-5">
      <div class="container">
        <h2 class="text-center mb-4 section-title">Categorias em Destaque</h2>
        <div class="row g-4">
          
          <div class="col-12 col-md-4">
            <div class="card h-100 text-center category-card shadow-sm">
              <div class="card-body d-flex flex-column justify-content-center">
                <h3 class="card-title h4 text-primary">Hardware</h3>
                <p class="card-text text-muted">Processadores, placas de vídeo e memórias de alta performance.</p>
              </div>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div class="card h-100 text-center category-card shadow-sm">
              <div class="card-body d-flex flex-column justify-content-center">
                <h3 class="card-title h4 text-primary">Periféricos</h3>
                <p class="card-text text-muted">Teclados mecânicos, mouses gamers e headsets de qualidade.</p>
              </div>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div class="card h-100 text-center category-card shadow-sm">
              <div class="card-body d-flex flex-column justify-content-center">
                <h3 class="card-title h4 text-primary">Monitores</h3>
                <p class="card-text text-muted">Telas com alta taxa de atualização para jogos e trabalho.</p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>

    <section id="destaques" class="py-5 bg-light">
      <div class="container">
        <h2 class="text-center mb-4 section-title">Produtos em Destaque</h2>
        <div class="row g-4">
          
          <div class="col-12 col-md-4">
            <div class="card h-100 product-card shadow-sm">
              <div class="card-body">
                <h3 class="card-title h5">Notebook Gamer X</h3>
                <p class="card-text text-muted">Intel i7, 16GB RAM, RTX 3060.</p>
                <p class="fw-bold text-success fs-5">R$ 5.499,00</p>
              </div>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div class="card h-100 product-card shadow-sm">
              <div class="card-body">
                <h3 class="card-title h5">Teclado Mecânico RGB</h3>
                <p class="card-text text-muted">Switch Blue, iluminação customizável.</p>
                <p class="fw-bold text-success fs-5">R$ 299,00</p>
              </div>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div class="card h-100 product-card shadow-sm">
              <div class="card-body">
                <h3 class="card-title h5">Monitor 144Hz 27"</h3>
                <p class="card-text text-muted">Painel IPS, 1ms de resposta.</p>
                <p class="fw-bold text-success fs-5">R$ 1.299,00</p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>
  </main>

  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
    </div>
  </footer>

  <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous">
  </script>
</body>
</html>

CSS
/* Personalizações Específicas da Home */

body {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

main {
  flex: 1;
}

/* Títulos de Seção */
.section-title {
  position: relative;
  font-weight: 700;
}

/* Customização dos Cards de Categoria */
.category-card {
  border: none;
  border-top: 4px solid #0d6efd;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.category-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12) !important;
}

/* Customização dos Cards de Produto */
.product-card {
  border: 1px solid #e9ecef;
  transition: transform 0.3s ease;
}

.product-card:hover {
  transform: translateY(-3px);
}

Markdown
## Evolução - Parte 2: Layout Responsivo com Grid Bootstrap

Nesta etapa, a página inicial (`index.html`) foi estruturada utilizando o sistema de grid do Bootstrap:

- **Containers e Rows:** Utilizados para limitar o espaço das seções e criar linhas responsivas.
- **Estrutura de Colunas:** Utilizada a classe `col-12 col-md-4`, garantindo que os cards fiquem em **uma coluna no celular** (telas pequenas) e se reorganizem em **três colunas em telas maiores/desktop** (a partir do breakpoint `md`).
- **Seções Adicionadas:**
  - *Hero Section*: Apresentação principal da loja.
  - *Categorias*: Três blocos principais (Hardware, Periféricos e Monitores).
  - *Destaques*: Vitrine com cards de produtos em promoção.
- **Estilização Externa:** Personalizações visuais feitas exclusivamente no arquivo `assets/css/style.css`.
