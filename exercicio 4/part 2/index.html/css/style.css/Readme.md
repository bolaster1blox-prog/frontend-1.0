<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minha Loja Fictícia - Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header class="main-header">
        <div class="logo">
            <h1>SuperStore</h1>
        </div>
        <nav class="nav-menu">
            <a href="index.html" class="nav-link">Início</a>
            <a href="produtos.html" class="nav-link">Produtos</a>
            <a href="contato.html" class="nav-link">Contato</a>
        </nav>
    </header>

    <main class="welcome-container">
        <section class="welcome-hero">
            <h2>Bem-vindo à SuperStore!</h2>
            <p>Encontre os melhores produtos com os melhores preços do mercado.</p>
            <a href="produtos.html" class="btn-gallery">Acessar Galeria de Produtos</a>
        </section>
    </main>

</body>
</html>
/* Reset básico para limpar margens e paddings padrões */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* --- ESTILIZAÇÃO DO CABEÇALHO (FLEXBOX) --- */
.main-header {
    display: flex;                  /* Ativa o Flexbox no cabeçalho */
    justify-content: space-between; /* Separa o logo dos links nas extremidades */
    align-items: center;            /* Alinhamento vertical dos itens */
    background-color: #3f51b5;       /* Cor de fundo moderna (roxo/azul) */
    padding: 15px 30px;
    color: white;
}

.logo h1 {
    font-size: 1.5rem;
}

/* Menu de navegação */
.nav-menu {
    display: flex;                  /* Ativa o Flexbox na lista de links */
    gap: 20px;                      /* Espaçamento moderno entre os links */
    align-items: center;            /* Garante o alinhamento vertical dos links */
}

.nav-link {
    color: white;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease;
}

.nav-link:hover {
    color: #ffeb3b;                 /* Destaque amarelo ao passar o mouse */
}

/* --- ESTILIZAÇÃO DA PÁGINA DE BOAS-VINDAS --- */
.welcome-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: calc(100vh - 70px); /* Ocupa a tela inteira descontando a altura aproximada do header */
    background-color: #f5f5f5;
    padding: 20px;
}

.welcome-hero {
    text-align: center;
    background-color: white;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 500px;
}

.welcome-hero h2 {
    color: #333;
    margin-bottom: 15px;
    font-size: 2rem;
}

.welcome-hero p {
    color: #666;
    margin-bottom: 25px;
    line-height: 1.5;
}

/* Botão de chamada para a galeria */
.btn-gallery {
    display: inline-block;
    background-color: #3f51b5;
    color: white;
    padding: 12px 24px;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.btn-gallery:hover {
    background-color: #303f9f;
}
