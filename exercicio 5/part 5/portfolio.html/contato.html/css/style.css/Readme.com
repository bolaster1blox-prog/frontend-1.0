<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Portfólio - Loja Virtual</title>
  <link rel="stylesheet" href="css/style.css" />
</head>
<body>
  <header>
    <div class="logo">Minha Loja</div>
    <input type="checkbox" id="menu-toggle" class="menu-toggle" />
    <label for="menu-toggle" class="menu-icon">&#9776;</label>
    <nav class="nav-menu">
      <ul>
        <li><a href="index.html">Início</a></li>
        <li><a href="produtos.html">Produtos</a></li>
        <li><a href="portfolio.html">Portfólio</a></li>
        <li><a href="contato.html">Contato</a></li>
      </ul>
    </nav>
  </header>

  <main class="container">
    <section class="portfolio-section">
      <h1>Portfólio do Projeto</h1>
      
      <article class="info-card">
        <h2>Apresentação do Aluno</h2>
        <p>Desenvolvido por: <strong>Seu Nome Aqui</strong></p>
        <p>Projeto acadêmico focado no desenvolvimento de uma loja virtual responsiva.</p>
      </article>

      <article class="info-card">
        <h2>Explicação do Projeto</h2>
        <p>Este projeto consiste no desenvolvimento de uma interface completa para e-commerce. O site inclui página inicial, vitrine de produtos, páginas de detalhes individuais, formulário de contato e esta página explicativa.</p>
      </article>

      <article class="info-card">
        <h2>Tecnologias Utilizadas</h2>
        <ul>
          <li><strong>HTML5:</strong> Estruturação semântica de todas as páginas.</li>
          <li><strong>CSS3 Externo:</strong> Estilização centralizada no arquivo <code>css/style.css</code>.</li>
        </ul>
      </article>

      <article class="info-card">
        <h2>Decisões de Responsividade</h2>
        <ul>
          <li><strong>Mobile First:</strong> O layout foi projetado prioritariamente para telas pequenas.</li>
          <li><strong>Media Queries:</strong> Breakpoints definidos em <code>768px</code> (tablets) e <code>1024px</code> (desktops).</li>
          <li><strong>CSS Grid & Flexbox:</strong> Utilizados para reorganizar a galeria de produtos e o cabeçalho dinamicamente.</li>
          <li><strong>Menu Responsivo:</strong> Implementado com a técnica de checkbox (sem uso de JavaScript).</li>
        </ul>
      </article>
    </section>
  </main>
</body>
</html>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contato - Loja Virtual</title>
  <link rel="stylesheet" href="css/style.css" />
</head>
<body>
  <header>
    <div class="logo">Minha Loja</div>
    <input type="checkbox" id="menu-toggle" class="menu-toggle" />
    <label for="menu-toggle" class="menu-icon">&#9776;</label>
    <nav class="nav-menu">
      <ul>
        <li><a href="index.html">Início</a></li>
        <li><a href="produtos.html">Produtos</a></li>
        <li><a href="portfolio.html">Portfólio</a></li>
        <li><a href="contato.html">Contato</a></li>
      </ul>
    </nav>
  </header>

  <main class="container">
    <section class="contato-section">
      <h1>Fale Conosco</h1>
      <form class="contato-form" action="#" method="post">
        <div class="form-group">
          <label for="nome">Nome Completo:</label>
          <input type="text" id="nome" name="nome" placeholder="Digite seu nome" required />
        </div>

        <div class="form-group">
          <label for="email">E-mail:</label>
          <input type="email" id="email" name="email" placeholder="seu@email.com" required />
        </div>

        <div class="form-group">
          <label for="assunto">Assunto:</label>
          <input type="text" id="assunto" name="assunto" placeholder="Assunto da mensagem" required />
        </div>

        <div class="form-group">
          <label for="mensagem">Mensagem:</label>
          <textarea id="mensagem" name="mensagem" rows="5" placeholder="Escreva sua mensagem..." required></textarea>
        </div>

        <button type="submit" class="btn-enviar">Enviar Mensagem</button>
      </form>
    </section>
  </main>
</body>
</html>

/* ==========================================
   INTERAÇÕES E ESTILOS FINAIS (Parte 5)
   ========================================== */

/* Transições suaves globais */
a, button, input, textarea, .card, .info-card {
  transition: all 0.3s ease;
}

/* Efeitos :hover e :focus em links e botões */
a:hover {
  opacity: 0.8;
}

a:focus, input:focus, textarea:focus, button:focus {
  outline: 2px solid #0056b3;
  outline-offset: 2px;
}

.btn-enviar, .btn-card {
  background-color: #0056b3;
  color: #fff;
  border: none;
  padding: 0.75rem 1.5rem;
  font-size: 1rem;
  border-radius: 4px;
  cursor: pointer;
}

.btn-enviar:hover, .btn-card:hover {
  background-color: #003d80;
  transform: translateY(-2px);
}

/* Efeitos :hover nos Cards */
.card, .info-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  background-color: #fff;
}

.card:hover, .info-card:hover {
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  transform: translateY(-4px);
}

/* Layout do Formulário de Contato */
.container {
  max-width: 1000px;
  margin: 2rem auto;
  padding: 0 1rem;
}

.contato-form {
  display: flex;
  flex-direction: column;
  gap: 1.2rem;
  max-width: 600px;
  margin: 0 auto;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.form-group label {
  font-weight: bold;
}

.form-group input,
.form-group textarea {
  padding: 0.75rem;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 100%;
  box-sizing: border-box;
}

.portfolio-section {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

# Loja Virtual Responsiva - Exercício 5

## Objetivo
Desenvolver uma loja virtual totalmente responsiva, aplicando conceitos de Mobile First, Media Queries, layout com CSS Grid/Flexbox e interatividade CSS sem JavaScript.

## Páginas do Projeto
- `index.html`: Página principal com destaques da loja.
- `produtos.html`: Vitrine com catálogo de produtos.
- `produto1.html` a `produto5.html`: Páginas detalhadas de cada produto.
- `portfolio.html`: Apresentação do projeto e decisões técnicas.
- `contato.html`: Formulário de contato funcional e responsivo.

## Produtos Cadastrados
1. Produto 1 - R$ 99,90
2. Produto 2 - R$ 149,90
3. Produto 3 - R$ 199,90
4. Produto 4 - R$ 79,90
5. Produto 5 - R$ 299,90

## Tecnologias Utilizadas
- HTML5 Semântico
- CSS3 (Estilização externa em `css/style.css`)
- Layout Responsivo (Mobile First, Flexbox e CSS Grid)

## Como Abrir o Projeto
1. Clone o repositório: `git clone <URL_DO_REPOSITORIO>`
2. Acesse a pasta `frontend/Exercicio 5/`.
3. Abra o arquivo `index.html` em qualquer navegador web.
