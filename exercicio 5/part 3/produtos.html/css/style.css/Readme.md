<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galeria de Produtos - TechStore</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>
        <h1>TechStore</h1>
        <nav>
            <ul>
                <li><a href="index.html">Início</a></li>
                <li><a href="produtos.html">Produtos</a></li>
                <li><a href="portfolio.html">Portfólio</a></li>
                <li><a href="contato.html">Contato</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Nossos Produtos</h2>
        <div class="galeria-grid">
            
            <article class="card-produto">
                <div class="imagem-placeholder">Notebook Start</div>
                <h3>Notebook Start</h3>
                <p class="descricao-curta">Notebook ideal para estudos e trabalho diário.</p>
                <p class="preco">R$ 2.499,90</p>
                <a href="produto-notebook.html" class="btn">Ver detalhes</a>
            </article>

            <article class="card-produto">
                <div class="imagem-placeholder">Fone Air</div>
                <h3>Fone Air</h3>
                <p class="descricao-curta">Fone de ouvido sem fio leve e confortável.</p>
                <p class="preco">R$ 189,90</p>
                <a href="produto-fone.html" class="btn">Ver detalhes</a>
            </article>

            <article class="card-produto">
                <div class="imagem-placeholder">Smartwatch Fit</div>
                <h3>Smartwatch Fit</h3>
                <p class="descricao-curta">Relógio inteligente para monitorar seus treinos.</p>
                <p class="preco">R$ 349,90</p>
                <a href="produto-smartwatch.html" class="btn">Ver detalhes</a>
            </article>

            <article class="card-produto">
                <div class="imagem-placeholder">Câmera Mini</div>
                <h3>Câmera Mini</h3>
                <p class="descricao-curta">Câmera compacta com fotos em alta definição.</p>
                <p class="preco">R$ 599,90</p>
                <a href="produto-camera.html" class="btn">Ver detalhes</a>
            </article>

            <article class="card-produto">
                <div class="imagem-placeholder">Mochila Tech</div>
                <h3>Mochila Tech</h3>
                <p class="descricao-curta">Mochila resistente com compartimento para notebook.</p>
                <p class="preco">R$ 159,90</p>
                <a href="produto-mochila.html" class="btn">Ver detalhes</a>
            </article>

        </div>
    </main>

    <footer>
        <p>&copy; 2026 TechStore - Todos os direitos reservados.</p>
    </footer>

</body>
</html>

<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notebook Start - TechStore</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>TechStore</h1>
        <nav>
            <ul>
                <li><a href="index.html">Início</a></li>
                <li><a href="produtos.html">Produtos</a></li>
                <li><a href="portfolio.html">Portfólio</a></li>
                <li><a href="contato.html">Contato</a></li>
            </ul>
        </nav>
    </header>

    <main class="detalhe-produto">
        <h2>Notebook Start</h2>
        <div class="imagem-placeholder destaque">Notebook Start</div>
        <p class="preco">R$ 2.499,90</p>
        <p class="descricao-completa">O Notebook Start oferece alto desempenho para suas tarefas do dia a dia, com bateria duradoura e inicialização rápida.</p>
        
        <h3>Características:</h3>
        <ul>
            <li>Processador Intel Core i3 / Ryzen 3</li>
            <li>8 GB de Memória RAM</li>
            <li>SSD de 256 GB</li>
            <li>Tela de 15.6 polegadas Full HD</li>
        </ul>

        <a href="produtos.html" class="btn-voltar">← Voltar para a Galeria</a>
    </main>

    <footer>
        <p>&copy; 2026 TechStore - Todos os direitos reservados.</p>
    </footer>
</body>
</html>

/* --- Galeria com CSS Grid (Mobile First) --- */
.galeria-grid {
    display: grid;
    grid-template-columns: 1fr; /* 1 coluna em telas menores */
    gap: 20px;
    margin-top: 20px;
}

.card-produto {
    background-color: #fff;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    text-align: center;
}

.imagem-placeholder {
    background-color: #ddd;
    color: #555;
    height: 150px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 5px;
    margin-bottom: 15px;
    font-weight: bold;
}

.card-produto h3 {
    margin-bottom: 10px;
    color: #2c3e50;
}

.descricao-curta {
    font-size: 0.9em;
    color: #666;
    margin-bottom: 10px;
}

.preco {
    font-size: 1.2em;
    font-weight: bold;
    color: #27ae60;
    margin-bottom: 15px;
}

/* --- Páginas Individuais de Produto --- */
.detalhe-produto {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.imagem-placeholder.destaque {
    height: 220px;
}

.descricao-completa {
    margin: 15px 0;
}

.detalhe-produto h3 {
    margin-top: 15px;
    color: #2c3e50;
}

.detalhe-produto ul {
    list-style-position: inside;
    margin: 10px 0 20px 0;
}

.btn-voltar {
    display: inline-block;
    background-color: #7f8c8d;
    color: white;
    padding: 10px 15px;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.btn-voltar:hover {
    background-color: #95a5a6;
}

/* Media Query para Telas Maiores (Grid de 2 a 3 colunas) */
@media (min-width: 600px) {
    .galeria-grid {
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    }
}
