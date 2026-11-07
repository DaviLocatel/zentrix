-- Projeto Integrador Zentrix - Modelo Físico de Banco de Dados
CREATE DATABASE IF NOT EXISTS zentrix_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE zentrix_db;

-- Tabela de Clientes (Pequenas Empresas)
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    nome_responsavel VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Pacotes/Serviços (Catálogo)
CREATE TABLE IF NOT EXISTS pacotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pacote VARCHAR(50) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    tipo_cobranca ENUM('unico', 'mensal') NOT NULL
);

-- Tabela de Contratos/Projetos (Relaciona o Cliente ao Serviço)
CREATE TABLE IF NOT EXISTS projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    pacote_id INT NOT NULL,
    valor_acordado DECIMAL(10, 2) NOT NULL, -- Preserva o valor negociado no momento do fechamento
    status_projeto ENUM('prospeccao', 'desenvolvimento', 'publicado', 'manutencao') DEFAULT 'prospeccao',
    data_inicio DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE,
    FOREIGN KEY (pacote_id) REFERENCES pacotes(id)
);

-- Tabela de Gestão de Mensalidades (Para clientes de manutenção)
CREATE TABLE IF NOT EXISTS mensalidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    projeto_id INT NOT NULL,
    mes_referencia DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status_pagamento ENUM('pendente', 'pago', 'atrasado') DEFAULT 'pendente',
    data_vencimento DATE NOT NULL,
    data_pagamento DATE,
    FOREIGN KEY (projeto_id) REFERENCES projetos(id) ON DELETE CASCADE
);

-- Inserindo dados iniciais (Catálogo da Zentrix)
INSERT INTO pacotes (nome_pacote, descricao, preco, tipo_cobranca) 
VALUES 
('Site Completo', 'Landing page, site profissional, cardápio digital, responsivo.', 500.00, 'unico'),
('Manutenção', 'Atualizações de textos/preços, ajustes visuais e suporte.', 50.00, 'mensal');