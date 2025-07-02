CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    tamanho VARCHAR(10),
    cor VARCHAR(30),
    preco DECIMAL(10,2),
    estoque INT
    );

INSERT INTO produtos (nome, categoria, descricao, tamanho, cor, preco, estoque)
VALUES 
('Camiseta Básica', 'Camisetas', 'Camiseta de algodão 100% com gola redonda.', 'M', 'Branca', 49.90, 50),
('Camiseta Estampada', 'Camisetas', 'Camiseta com estampa floral.', 'G', 'Preta', 59.90, 30),
('Calça Jeans Slim', 'Calças', 'Calça jeans slim fit, confortável e moderna.', '42', 'Azul', 129.90, 20),
('Calça Moletom', 'Calças', 'Moletom unissex com elástico e bolso lateral.', 'M', 'Cinza', 99.90, 25),
('Vestido Longo', 'Vestidos', 'Vestido longo floral com alças finas.', 'P', 'Vermelho', 149.90, 15),
('Saia Jeans', 'Saias', 'Saia jeans com rasgos frontais.', '38', 'Azul Claro', 89.90, 10),
('Jaqueta de Couro', 'Jaquetas', 'Jaqueta sintética estilo biker.', 'G', 'Preta', 199.90, 8),
('Blusa Cropped', 'Blusas', 'Cropped canelado manga longa.', 'P', 'Verde', 69.90, 18),
('Camisa Social', 'Camisas', 'Camisa social masculina manga longa.', 'G', 'Branca', 119.90, 12),
('Short Jeans', 'Shorts', 'Short jeans cintura alta.', '40', 'Azul Escuro', 79.90, 22);

CREATE TABLE fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(18),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(2)
);

INSERT INTO fornecedores (nome, cnpj, telefone, email, cidade, estado)
VALUES 
('Têxtil Brasil Ltda', '12.345.678/0001-01', '(11) 99999-1111', 'contato@textilbrasil.com', 'São Paulo', 'SP'),
('Moda Sul Indústria', '98.765.432/0001-02', '(51) 98888-2222', 'vendas@modasul.com.br', 'Porto Alegre', 'RS'),
('Estilo e Companhia', '23.456.789/0001-03', '(21) 97777-3333', 'comercial@estilocorp.com', 'Rio de Janeiro', 'RJ');

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATETIME,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, categoria, descricao, tamanho, cor, preco, estoque)
VALUES 
('Camiseta Básica', 'Camisetas', 'Camiseta de algodão 100% com gola redonda.', 'M', 'Branca', 49.90, 50),
('Camiseta Estampada', 'Camisetas', 'Camiseta com estampa floral.', 'G', 'Preta', 59.90, 30),
('Calça Jeans Slim', 'Calças', 'Calça jeans slim fit, confortável e moderna.', '42', 'Azul', 129.90, 20),
('Calça Moletom', 'Calças', 'Moletom unissex com elástico e bolso lateral.', 'M', 'Cinza', 99.90, 25),
('Vestido Longo', 'Vestidos', 'Vestido longo floral com alças finas.', 'P', 'Vermelho', 149.90, 15),
('Saia Jeans', 'Saias', 'Saia jeans com rasgos frontais.', '38', 'Azul Claro', 89.90, 10),
('Jaqueta de Couro', 'Jaquetas', 'Jaqueta sintética estilo biker.', 'G', 'Preta', 199.90, 8),
('Blusa Cropped', 'Blusas', 'Cropped canelado manga longa.', 'P', 'Verde', 69.90, 18),
('Camisa Social', 'Camisas', 'Camisa social masculina manga longa.', 'G', 'Branca', 119.90, 12),
('Short Jeans', 'Shorts', 'Short jeans cintura alta.', '40', 'Azul Escuro', 79.90, 22);

(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(18),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(2)
);

INSERT INTO fornecedores (nome, cnpj, telefone, email, cidade, estado)
VALUES 
('Têxtil Brasil Ltda', '12.345.678/0001-01', '(11) 99999-1111', 'contato@textilbrasil.com', 'São Paulo', 'SP'),
('Moda Sul Indústria', '98.765.432/0001-02', '(51) 98888-2222', 'vendas@modasul.com.br', 'Porto Alegre', 'RS'),
('Estilo e Companhia', '23.456.789/0001-03', '(21) 97777-3333', 'comercial@estilocorp.com', 'Rio de Janeiro', 'RJ');

INSERT INTO produtos (nome, categoria, descricao, tamanho, cor, preco, estoque)
VALUES 
('Camiseta Básica', 'Camisetas', 'Camiseta de algodão 100% com gola redonda.', 'M', 'Branca', 49.90, 50),
('Camiseta Estampada', 'Camisetas', 'Camiseta com estampa floral.', 'G', 'Preta', 59.90, 30),
('Calça Jeans Slim', 'Calças', 'Calça jeans slim fit, confortável e moderna.', '42', 'Azul', 129.90, 20),
('Calça Moletom', 'Calças', 'Moletom unissex com elástico e bolso lateral.', 'M', 'Cinza', 99.90, 25),
('Vestido Longo', 'Vestidos', 'Vestido longo floral com alças finas.', 'P', 'Vermelho', 149.90, 15),
('Saia Jeans', 'Saias', 'Saia jeans com rasgos frontais.', '38', 'Azul Claro', 89.90, 10),
('Jaqueta de Couro', 'Jaquetas', 'Jaqueta sintética estilo biker.', 'G', 'Preta', 199.90, 8),
('Blusa Cropped', 'Blusas', 'Cropped canelado manga longa.', 'P', 'Verde', 69.90, 18),
('Camisa Social', 'Camisas', 'Camisa social masculina manga longa.', 'G', 'Branca', 119.90, 12),
('Short Jeans', 'Shorts', 'Short jeans cintura alta.', '40', 'Azul Escuro', 79.90, 22);

(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(18),
    telefone VARCHAR(15),
    email VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(2)
);

(nome, cnpj, telefone, email, cidade, estado)
VALUES 
('Têxtil Brasil Ltda', '12.345.678/0001-01', '(11) 99999-1111', 'contato@textilbrasil.com', 'São Paulo', 'SP'),
('Moda Sul Indústria', '98.765.432/0001-02', '(51) 98888-2222', 'vendas@modasul.com.br', 'Porto Alegre', 'RS'),
('Estilo e Companhia', '23.456.789/0001-03', '(21) 97777-3333', 'comercial@estilocorp.com', 'Rio de Janeiro', 'RJ');
