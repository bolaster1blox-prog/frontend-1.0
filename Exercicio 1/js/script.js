JavaScript
// Aguarda o carregamento do DOM para garantir que o botão exista na tela
document.addEventListener('DOMContentLoaded', () => {
    const botao = document.getElementById('btnMensagem');
    
    botao.addEventListener('click', () => {
        alert('Parabéns! Você concluiu a Parte 5 e integrou com sucesso o HTML, CSS e JavaScript! 🚀');
    });
});
