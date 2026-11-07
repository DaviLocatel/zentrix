# Zentrix - Agência Web

Plataforma institucional da Zentrix, especializada em criar sites profissionais e otimizados para pequenas empresas.

## O problema
Pequenas empresas precisam de presença digital rápida, bonita e que gere contatos via WhatsApp, mas orçamentos de agências grandes são inviáveis. A Zentrix resolve isso entregando sites completos e responsivos de forma direta.

## Telas (Site estático de uma página)
| Seção | O que faz |
|---|---|
| Início (Hero) | Apresentação de impacto com Call-to-Action (CTA). |
| Serviços | Mostra as soluções (Landing page, Site Profissional, Cardápio). |
| Como Funciona | Passo a passo transparente (Conversa, Criação, No Ar). |
| Pacotes | Transparência de preços e serviços inclusos. |
| Contato | Chamada final com integração direta ao WhatsApp da equipe. |

## Tecnologias
- **HTML5 Semântico:** Uso rigoroso de `<header>`, `<main>`, `<section>`, `<article>` e `<ol>`.
- **CSS3 (Mobile First):** Construído com Unidades Relativas (`rem`), CSS Grid, Flexbox e Variáveis Dinâmicas. Os efeitos (Hover, Glow Effect, Animações) estão encapsulados em `@media (hover: hover)` e inibidos em `@media (prefers-reduced-motion)`.
- **JavaScript:** Utilizado estritamente para UX em Desktop (Mapeamento do cursor para o *Glow Effect*).
- **SQL:** Modelagem do banco de dados (Projeto Integrador).

## Como rodar e customizar
1. Extraia os arquivos.
2. Certifique-se de que sua logo `[sua_logo].png` (já reduzida e otimizada) está na mesma pasta.
3. Abra o `index.html` no navegador.
4. **Trocar número do WhatsApp:** Abra o `index.html` e substitua todos os links `wa.me/5527993122371` pela URL com o seu próprio DDD e número.

## Quem fez o quê / Status
- [x] Design, Estrutura e Copy - (Seu Nome/Zentrix)
- [x] Refatoração Semântica e Mobile First Concluída
- [ ] Conectar futuramente a um CRM real