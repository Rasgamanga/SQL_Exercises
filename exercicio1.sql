-- Todos os DADOS aqui vieram de origem fictícia
-- Criar as tabelas
CREATE TABLE musica (
    IDmusica INT PRIMARY KEY,
    nome VARCHAR(50),
    autor VARCHAR(40),
    codgen INT,
    publicacao INT,
    album VARCHAR(50),
    gravadora VARCHAR(50)
);

INSERT INTO musica (IDmusica, nome, autor, codgen, publicacao, album, gravadora)
VALUES
    (1, 'bananinhas', 'Vinland_Guedes', 3, 2021, 'os_guris', 'Felipe_vozes'),
    (2, 'cores_e_dores', 'Vih_llagio', 1, 2022, 'os_guris', 'joao_records'),
    (3, 'rock_manga', 'rasga_manga', 2, 2023, 'os_guris', 'joao_records');

CREATE TABLE autor (
    autor VARCHAR(40) PRIMARY KEY,
    nome_real VARCHAR(60),
    nascimento DATE
);

INSERT INTO autor (autor, nome_real, nascimento)
VALUES
    ('Vih_llagio', 'Mauricio Villagio', '1996-03-07'),
    ('rasga_manga', 'Joao Matos', '2000-07-21'),
    ('Vinland_Guedes', 'Marcos Guedes', '1999-12-17');

CREATE TABLE gravadora (
    gravadora VARCHAR(70) PRIMARY KEY,
    CNPJ BIGINT,
    bairro VARCHAR(50),
    CEP VARCHAR(9),
    UF VARCHAR(2),
    cidade VARCHAR(50)
);

INSERT INTO gravadora (gravadora, CNPJ, bairro, CEP, UF, cidade)
VALUES
    ('joao_records', 123456789011, 'minha casa', '96287-300', 'SP', 'Sorocaba'),
    ('Felipe_vozes', 123456789012, 'a outra casa', '37934-300', 'BA', 'Salvador do Joao'),
    ('gabriel_locacoes', 123456789013, 'a proxima casa', '11728-600', 'SC', 'Santa Sorocaba');

CREATE TABLE genero (
    codgen INT PRIMARY KEY,
    desc_genero VARCHAR(40),
    faixa_etaria VARCHAR(5)
);

INSERT INTO genero (codgen, desc_genero, faixa_etaria)
VALUES
    (1, 'pop', '+18'),
    (2, 'rock_metal', '+18'),
    (3, 'trap', '+14');

CREATE TABLE albuns (
    nome_album VARCHAR(50),
    implementandoMusica INT,
    IDmusica INT,
    autor VARCHAR(50),
    PRIMARY KEY (nome_album, IDmusica)
);

INSERT INTO albuns (nome_album, implementandoMusica, IDmusica, autor)
VALUES
    ('os_guris', 2023, 1, 'Vinland_Guedes'),
    ('os_guris', 2022, 2, 'Vih_llagio'),
    ('os_guris', 2021, 3, 'rasga_manga');

-- Selecionar as tabelas
SELECT * FROM musica;



