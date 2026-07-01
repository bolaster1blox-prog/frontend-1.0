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
                <img src="https://blog.usezapay.com.br/wp-content/uploads/2024/05/marca-de-carro-de-luxo-lamborghini-modelo-aventador.jpg" alt="Ilustração de um Lamborguini" width="500">
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
