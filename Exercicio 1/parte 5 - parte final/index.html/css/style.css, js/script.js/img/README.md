HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevInicio - Projeto Final</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>
        <h1>DevInício</h1>
        <p>O seu guia prático de sobrevivência no Frontend.</p>
        <nav>
            <a href="#sobre">Sobre o Projeto</a> | 
            <a href="https://developer.mozilla.org" target="_blank">Visitar MDN Web Docs</a>
        </nav>
    </header>

    <main>
        <section id="sobre">
            <h2>Sobre o Projeto</h2>
            <p>Este mini site foi desenvolvido como consolidação prática dos conceitos fundamentais de HTML5 semântico, estruturação de diretórios e versionamento com Git.</p>
            
            <div class="image-container">
                <img src="https://blog.usezapay.com.br/wp-content/uploads/2024/05/marca-de-carro-de-luxo-lamborghini-modelo-aventador.jpg" alt="Ilustração de uma lamborghini" width="500">
            </div>
        </section>

        <section id="interacao">
            <h2>Interação Interativa</h2>
            <p>Clique no botão abaixo para testar a integração do nosso script JavaScript externo!</p>
            <button id="btnMensagem">Clique Aqui</button>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 - Desenvolvido durante as aulas práticas de Frontend.</p>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>

CSS
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 20px;
    background-color: #f4f4f9;
    color: #333;
}

header, main, footer {
    max-width: 800px;
    margin: 0 auto 20px auto;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

header {
    background-color: #6f42c1;
    color: white;
}

header a {
    color: #ffc107;
    text-decoration: none;
    font-weight: bold;
}

button {
    background-color: #6f42c1;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #5a32a3;
}
