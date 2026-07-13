HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nossos Produtos</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>
        <h1>Galeria de Produtos</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="produtos.html">Produtos</a></li>
                <li><a href="contato.html">Contato</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Confira nossa lista de produtos</h2>
        
        <section class="galeria">
            
            <div class="produto">
                <h3>Camiseta Minimalista</h3>
                <p>Algodão 100% orgânico, super confortável e ideal para o dia a dia.</p>
                <p class="preco">R$ 59,90</p>
            </div>

            <div class="produto">
                <h3>Calça Jeans Slim</h3>
                <p>Modelagem moderna com elastano para maior flexibilidade.</p>
                <p class="preco">R$ 129,90</p>
            </div>

            <div class="produto">
                <h3>Tênis Urbano</h3>
                <p>Estilo clássico com sola de borracha antiderrapante e palmilha em gel.</p>
                <p class="preco">R$ 199,90</p>
            </div>

            <div class="produto">
                <h3>Moletom com Capuz</h3>
                <p>Interior flanelado e bolso canguru para te manter aquecido.</p>
                <p class="preco">R$ 149,90</p>
            </div>

            <div class="produto">
                <h3>Boné Snapback</h3>
                <p>Aba reta com regulagem traseira e bordado de alta qualidade.</p>
                <p class="preco">R$ 39,90</p>
            </div>

        </section>
    </main>

</body>
</html>

CSS
/* Organiza os produtos em uma grade flexível */
.galeria {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
    padding: 20px;
}

/* Estilo individual de cada card de produto */
.produto {
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px;
    width: 200px;
    text-align: center;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.produto h3 {
    color: #333;
    margin-top: 0;
}

.produto p {
    font-size: 14px;
    color: #666;
}

/* Destaca o preço fictício */
.produto .preco {
    font-size: 18px;
    font-weight: bold;
    color: #27ae60;
}
