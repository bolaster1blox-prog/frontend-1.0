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

/* ==========================================
   1. ESTILOS BASE (Mobile First)
   ========================================== */

/* Header e Menu Hambúrguer */
header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem;
  background-color: #333;
  color: #fff;
  position: relative;
}

/* Oculta o checkbox de controle */
.menu-toggle {
  display: none;
}

/* Ícone do menu hambúrguer */
.menu-icon {
  font-size: 1.8rem;
  cursor: pointer;
  display: block;
}

/* Oculta o menu por padrão no mobile */
.nav-menu {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  background-color: #333;
}

.nav-menu ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav-menu li a {
  display: block;
  padding: 1rem;
  color: #fff;
  text-decoration: none;
  border-top: 1px solid #444;
}

/* Mostra o menu quando o checkbox está marcado */
.menu-toggle:checked ~ .nav-menu {
  display: block;
}

/* Galeria de Produtos - Mobile (1 coluna) */
.galeria-produtos {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1.5rem;
  padding: 1rem;
}

/* Ajuste básico de segurança para prevenir rolagem horizontal */
body, html {
  overflow-x: hidden;
  margin: 0;
  padding: 0;
}

img {
  max-width: 100%;
  height: auto;
}

/* ==========================================
   2. BREAKPOINT: Tablet (min-width: 768px)
   ========================================== */
@media (min-width: 768px) {
  /* Oculta o ícone do menu hambúrguer */
  .menu-icon {
    display: none;
  }

  /* Exibe o menu horizontalmente */
  .nav-menu {
    display: block;
    position: static;
    width: auto;
    background-color: transparent;
  }

  .nav-menu ul {
    display: flex;
    gap: 1.5rem;
  }

  .nav-menu li a {
    border-top: none;
    padding: 0.5rem 0;
  }

  /* Galeria em Tablet - 2 Colunas */
  .galeria-produtos {
    grid-template-columns: repeat(2, 1fr);
  }
}

/* ==========================================
   3. BREAKPOINT: Desktop (min-width: 1024px)
   ========================================== */
@media (min-width: 1024px) {
  /* Galeria em Desktop - 3 Colunas */
  .galeria-produtos {
    grid-template-columns: repeat(3, 1fr);
    max-width: 1200px;
    margin: 0 auto;
  }
}
