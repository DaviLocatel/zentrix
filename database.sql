-- Projeto Integrador Zentrix - Banco de Dados Simplificado
CREATE DATABASE IF NOT EXISTS zentrix_db;
USE zentrix_db;

-- Tabela de Clientes (Pequenas Empresas)
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    nome_responsavel VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Pacotes/Serviços
CREATE TABLE pacotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pacote VARCHAR(50) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    tipo_cobranca ENUM('unico', 'mensal') NOT NULL
);

-- Tabela de Contratos/Projetos
CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    pacote_id INT,
    status_projeto ENUM('prospeccao', 'desenvolvimento', 'publicado', 'manutencao') DEFAULT 'prospeccao',
    data_inicio DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (pacote_id) REFERENCES pacotes(id)
);

-- Inserindo dados iniciais (Catálogo da Zentrix)
INSERT INTO pacotes (nome_pacote, descricao, preco, tipo_cobranca) VALUES 
('Site Completo', 'Landing page, site profissional, cardápio digital, responsivo.', 500.00, 'unico'),
('Manutenção', 'Atualizações de textos/preços, ajustes visuais e suporte.', 50.00, 'mensal');
