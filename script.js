/* Substitua pelo seu número com DDD (apenas números) */
const WHATS = "27993122371"; 

if (WHATS) {
  const link = `https://wa.me/55${WHATS}?text=${encodeURIComponent("Olá! Vi o site da Zentrix e quero saber mais.")}`;
  
  document.querySelectorAll(".zx-contact").forEach(a => {
    a.href = link;
    a.target = "_blank";
    a.rel = "noopener";
  });
  
  document.getElementById("ctaText").textContent = "Chame a gente no WhatsApp e tire suas dúvidas. Fechamos o melhor pacote para a sua empresa.";
  document.getElementById("ctaBtn").textContent = "Chamar no WhatsApp";
}
/* === Efeito Glow do Mouse (Atualizado) === */
const cursorGlow = document.createElement('div');
cursorGlow.className = 'cursor-glow';
document.body.appendChild(cursorGlow);

document.addEventListener('mousemove', (e) => {
  cursorGlow.style.opacity = '1';
  // Envia as coordenadas X e Y do mouse direto para o CSS
  cursorGlow.style.setProperty('--mouse-x', `${e.clientX}px`);
  cursorGlow.style.setProperty('--mouse-y', `${e.clientY}px`);
});

// Apaga a luz se o mouse sair da tela do navegador
document.addEventListener('mouseleave', () => {
  cursorGlow.style.opacity = '0';
});