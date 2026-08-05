Markdown
# MercadoTech - Site de Vendas e Institucional

Este projeto é uma plataforma para a empresa imaginária **MercadoTech**, focada na comercialização de produtos de tecnologia e apresentação institucional da marca.

## O que é um Framework CSS?

Um **Framework CSS** é um conjunto de ferramentas, bibliotecas e folhas de estilo pré-preparadas que auxiliam os desenvolvedores a construir páginas web de forma mais rápida, padronizada e responsiva. Em vez de escrever todo o CSS do zero para elementos comuns (como botões, formulários e grelhas de layout), o framework disponibiliza classes prontas.

- **Exemplo além do Bootstrap:** [Tailwind CSS](https://tailwindcss.com/) (ou Bulma / Foundation).

### Por que usamos o Bootstrap neste projeto?

O **Bootstrap** foi escolhido por ser um dos frameworks CSS mais populares e robustos do mercado. Ele oferece um sistema de grelha (*grid system*) extremamente prático e componentes dinâmicos responsivos, permitindo criar uma interface moderna e compatível com dispositivos móveis com menor esforço de código customizado.

## Estrutura do Projeto

- `index.html`: Página principal de apresentação da MercadoTech.
- `assets/css/style.css`: Estilos CSS personalizados da aplicação.
- `README.md`: Documentação e explicações do projeto.

HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MercadoTech - Início</title>

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

  <main class="container my-5">
    <div class="p-5 mb-4 bg-light rounded-3 shadow-sm text-center hero-section">
      <h1 class="display-4 fw-bold text-primary">Bem-vindo à MercadoTech</h1>
      <p class="lead mt-3">
        A MercadoTech é a sua parceira ideal em inovação e tecnologia. Oferecemos os melhores hardwares, periféricos e dispositivos inteligentes para transformar o seu dia a dia.
      </p>
      <hr class="my-4" />
      <p>
        O nosso objetivo é conectar pessoas às soluções tecnológicas mais eficientes e modernas do mercado, garantindo qualidade, segurança e excelente atendimento.
      </p>
    </div>
  </main>

  <footer class="bg-dark text-white text-center py-3 mt-auto">
    <p class="mb-0">&copy; 2026 MercadoTech - Todos os direitos reservados.</p>
  </footer>

  <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous">
  </script>
</body>
</html>

CSS
/* Estilos Customizados do Projeto MercadoTech */

body {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

main {
  flex: 1;
}

.hero-section {
  border-left: 5px solid #0d6efd;
}
