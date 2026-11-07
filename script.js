/* === Efeito Glow do Mouse === */
const cursorGlow = document.createElement('div');
cursorGlow.className = 'cursor-glow';
document.body.appendChild(cursorGlow);

// Atualiza a posição da luz apenas quando um mouse real se move
window.addEventListener('mousemove', (e) => {
  cursorGlow.style.opacity = '1';
  cursorGlow.style.setProperty('--mouse-x', `${e.clientX}px`);
  cursorGlow.style.setProperty('--mouse-y', `${e.clientY}px`);
});

// Garante que a luz apague ao tirar o mouse da janela ou trocar de aba
document.documentElement.addEventListener('mouseleave', () => {
  cursorGlow.style.opacity = '0';
});

window.addEventListener('blur', () => {
  cursorGlow.style.opacity = '0';
});