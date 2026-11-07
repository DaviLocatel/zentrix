/* === Efeito Glow do Mouse === */
const cursorGlow = document.createElement('div');
cursorGlow.className = 'cursor-glow';
document.body.appendChild(cursorGlow);

window.addEventListener('mousemove', (e) => {
  cursorGlow.style.opacity = '1';
  cursorGlow.style.setProperty('--mouse-x', `${e.clientX}px`);
  cursorGlow.style.setProperty('--mouse-y', `${e.clientY}px`);
});

document.documentElement.addEventListener('mouseleave', () => {
  cursorGlow.style.opacity = '0';
});

window.addEventListener('blur', () => {
  cursorGlow.style.opacity = '0';
});

/* === Menu Hambúrguer (Mobile) === */
const menuToggle = document.querySelector('.menu-toggle');
const navMenu = document.querySelector('.nav-menu');
const navLinks = document.querySelectorAll('.nav-menu a');

if (menuToggle && navMenu) {
  menuToggle.addEventListener('click', () => {
    const isOpen = menuToggle.classList.toggle('active');
    navMenu.classList.toggle('active');
    menuToggle.setAttribute('aria-expanded', isOpen);
  });

  navLinks.forEach(link => {
    link.addEventListener('click', () => {
      menuToggle.classList.remove('active');
      navMenu.classList.remove('active');
      menuToggle.setAttribute('aria-expanded', 'false');
    });
  });
}