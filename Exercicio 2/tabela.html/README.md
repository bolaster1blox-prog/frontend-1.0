HTML
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Layout Antigo em Tabela</title>
</head>
<body>

    <table border="1" width="100%" cellpadding="10" cellspacing="0">
        <tr>
            <td colspan="2" bgcolor="#f0f0f0">
                <h1>Portal Mundo da Tecnologia (Layout Antigo)</h1>
                <p>Seu guia sobre desenvolvimento e inovação.</p>
            </td>
        </tr>

        <tr>
            <td width="25%" valign="top" bgcolor="#e0e0e0">
                <h3>Menu</h3>
                <ul>
                    <li><a href="#">HTML5 Semântico</a></li>
                    <li><a href="#">Carreira Dev</a></li>
                    <li><a href="#">Contato</a></li>
                </ul>
            </td>

            <td width="75%" valign="top">
                <h2>A Importância do HTML5 Semântico</h2>
                <p>No passado, usávamos esta exata estrutura de tabelas para segurar o layout na tela. Isso mistura a marcação de dados com o visual da página.</p>
                <hr>
                <h2>Como Iniciar na Carreira de Desenvolvedor</h2>
                <p>Aprender as tecnologias modernas evita que fiquemos presos a padrões antigos de desenvolvimento web.</p>
            </td>
        </tr>

        <tr>
            <td colspan="2" bgcolor="#f0f0f0" align="center">
                <p>&copy; 2026 - Página adaptada para simulação de Table-based Layout.</p>
            </td>
        </tr>
    </table>

</body>
</html>
Markdown
---

## 3. Comparação com Layout Antigo (Table-based Layout)

Como parte da Parte 5 da prática, foi criado o arquivo `tabela.html` para simular as estruturas de páginas comuns nos anos 90 e início dos anos 2000.

### Por que é uma técnica antiga?
As tabelas (`<table>`) foram criadas unicamente para exibir dados tabulares (como planilhas). Antes do amadurecimento do CSS moderno (como Flexbox e Grid), os desenvolvedores usavam bordas invisíveis e larguras fixas em tabelas para forçar elementos a ficarem lado a lado (como menus e barras laterais).

### Dificuldades encontradas na adaptação:
1. **Falta de Responsividade:** Controlar a largura por atributos rígidos ou tabelas torna impossível fazer o site se ajustar de forma fluida a telas de celulares.
2. **Código Poluído e Complexo:** A estrutura fica cheia de tags `<tr>` e `<td>` aninhadas, dificultando muito a leitura do código e a manutenção futura.
3. **Quebra de Semântica e Acessibilidade:** Um leitor de tela para deficientes visuais tentará ler o layout como se fosse uma planilha de dados, confundindo totalmente a experiência do usuário.

### Comparação com a Estrutura Semântica Moderna:
Enquanto no modelo moderno dividimos as responsabilidades (HTML5 cuida do sign
