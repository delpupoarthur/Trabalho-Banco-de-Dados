    -- Dropando tabelas
    DROP TABLE IF EXISTS vendas, pagamentos, promocoes_produtos, promocoes, produtos_vendas, produtos, categorias_produto, pessoas, enderecos, municipios, estados, tipos_logradouro;

    -- Criação das tabelas
    create table tipos_logradouro (
    id int primary key generated always as identity,
    tipo varchar(255) not null
    );

    create table estados (
    id int primary key generated always as identity,
    nome varchar(255) not null
    );

    create table municipios (
    id int primary key generated always as identity,
    nome varchar(255) not null,
    estado_id int,
    constraint fk_estados_municipios
    foreign key (estado_id)
    references estados(id)
    );

    create table enderecos (
    id int primary key generated always as identity,
    tipo_logradouro_id int,
    logradouro varchar(255),
    municipio_id int,
    cep varchar(10),
    bairro varchar(255),
    numero varchar(255),
    complemento varchar(255),
    constraint fk_tipos_logradouro_enderecos
    foreign key (tipo_logradouro_id)
    references tipos_logradouro(id),
    constraint fk_municipios_enderecos
    foreign key (municipio_id)
    references municipios(id)
    );

    create table pessoas (
    id int primary key generated always as identity,
    nome varchar(255) not null,
    cpf varchar(11) not null,
    data_nascimento date not  null,
    email varchar(255) not null,
    endereco_id int not null,
    constraint fk_enderecos_pessoas
    foreign key (endereco_id)
    references enderecos(id)
    );

    create table categorias_produto (
    id int primary key generated always as identity,
    categoria varchar(255)
    );

    create table produtos (
    id int primary key generated always as identity,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    preco numeric not null,
    categoria_id int,
    quantidade int not null,
    constraint fk_categorias_produto_produto
    foreign key (categoria_id)
    references categorias_produto(id)
    );


    create table promocoes (
    id int primary key generated always as identity,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    data_inicio date not null,
    data_fim date,
    desconto numeric not null
    );

    create table promocoes_produtos (
    promocao_id int not null,
    produto_id int not null,
    constraint fk_promocoes_promocoes_produtos
    foreign key (promocao_id)
    references promocoes(id),
    constraint fk_produtos_promocoes_produtos
    foreign key (produto_id)
    references produtos(id)
    );

    create table pagamentos (
    id int primary key generated always as identity,
    chave_pix varchar(255) not null,
    total numeric not null
    );

    create table vendas (
    id int primary key generated always as identity,
    pessoa_id int not null,
    data date not null,
    pagamento_id int not null,
    endereco_id int not null,
    constraint fk_pessoas_vendas
    foreign key (pessoa_id)
    references pessoas(id),
    constraint fk_pagamentos_vendas
    foreign key (pagamento_id)
    references pagamentos(id),
    constraint fk_enderecos_vendas
    foreign key (endereco_id)
    references enderecos(id)
    );

    create table produtos_vendas (
    produto_id int not null,
    venda_id int not null,
    quantidade int not null,
    constraint fk_produtos_produtos_vendas
    foreign key (produto_id)
    references produtos(id),
    constraint fk_vendas_produtos_vendas
    foreign key (venda_id)
    references vendas(id)
    );  

    -- Inserções
    insert into tipos_logradouro (tipo) values
    ('Rua'),
    ('Avenida'),
    ('Rodovia'),
    ('Alameda');

    insert into estados (nome) values
    ('Espírito Santo'),
    ('Rio de Janeiro'),
    ('São Paulo'),
    ('Minas Gerais'),
    ('Bahia');

    insert into municipios (nome, estado_id) values
    ('Vitória', 1),
    ('Serra', 1),
    ('Cariacica', 1),
    ('Rio de Janeiro', 2),
    ('Zona Sul', 2),
    ('São Paulo', 3),
    ('Belo Horizonte', 4),
    ('Salvador', 5),
    ('Arraial da Ajuda', 5);

    insert into enderecos (tipo_logradouro_id, logradouro, municipio_id, cep, bairro, numero, complemento) values
    (1, 'Carlos Martins', 1, '29090060', 'Jardim Camburi', '257', 'Na rua da padaria São João'),
    (1, 'Eurico Miranda', 1, '29090120', 'Praia do Canto', '37', 'Próximo ao churrasquinho do Alemão'),
    (2, 'André Junior', 3, '29090292', 'Jacaraípe', '157', 'Do lado do bar do seu Manel'),
    (3, 'Carlos Lindemberg', 4, '23940501', 'Santana', '41', 'Subindo o morro do terminal'),
    (1, 'Salvador', 8, '40015-970', 'Nazaré', '1024', 'Perto da sede do Olodum'),
    (4, 'São Jorge', 5, '01311-000', 'Botafogo', '171', 'Do lado do supermercado Pão de Açúcar'),
    (1, 'Eldourado', 2, '29124104', 'São Conrado', '365', 'Parte baixa'),
    (1, 'Lídio Flores', 8, '29194141', 'Vila Rica', '950', 'Ao lado do supermercdo'),
    (1, 'João Silva', 2, '29018635', 'Santa Clara', '665', 'Em cima da oficina mecânica'),
    (1, 'Maritaca', 3, '29141185', 'São Conrado', '792', 'Entre a academia e a igreja'),
    (1, 'Conceição', 4, '29144770', 'Santo André', '364', 'Lado direito da pracinha'),
    (1, 'Aspalato', 1, '29179397', 'Centro da Serra', '665', 'Sem complemento'),
    (1, 'José de Araújo Arantes', 2, '29137255', 'Areinha', '383,', 'Em frente a padaria'),
    (1, 'Sotema', 3, '29155032', 'Vila Prudêncio', '921', 'Do lado da escola'),
    (1, 'São Vicente', 5, '29135378', 'Marcílio de Noronha' ,'449', 'Duas ruas da avenida principal'),
    (1, 'Falcão', 7, '29151837', 'Nova Valverde', '841', 'Em cima da academia'),
    (1, 'dos Índios', 3, '29163553', 'Cidade Continental-Se,tor América', '659', 'De frente com o supermercado'),
    (1, 'Fioravante Rossi', 2, '29704426', 'Honório Fraga', '858', 'Ao lado da igreja'),
    (1, 'Maria Enaura de Almeida Soeiro', 5, '29177024', 'São Judas Tad,eu', '929', 'Em cima do restaurante'),
    (1, 'Nossa Senhora da Penha', 1, '29193520', 'Santa Luzia', '920', 'Próximo à sorveteria'),
    (1, 'Mem de Sá', 9, '29119190', 'Ataíde', '197', 'Após a rua do banco'),
    (1, 'Capixaba', 2, '29202150', 'Comunidade Urbana de, Machinda', '698', 'Subindo a rampa da caixa dagua'),
    (1, 'Dezesseis', 5, '29943870', 'Bonsucesso', '946', 'Do lado do bar do Zé'),
    (1, 'Aimorés', 7, '29175598', 'das Laranjeiras', '233','Rua sem saída'),
    (1, 'Quatro', 4, '29141104', 'Alzira Ramos', '952', 'Casa B'),
    (1, 'Governador Afonso Cláudio', 8, '29900632', 'Juparanã', '410', 'Ao lado do campo de futebol');

    insert into pessoas (nome, cpf, data_nascimento, email, endereco_id) values
    ('Luiz Eduardo', '123456789', '2000-09-29', 'luizeduardo@email.com', 1),
    ('João Victor', '234567891', '1998-04-09', 'joaovictor@email.com', 2),
    ('Amanda Nunes', '345678912', '1997-02-19', 'amandanunes@email.com', 3),
    ('Carlos Eduardo', '456789123', '1980-07-30', 'carloseduardo@email.com', 5),
    ('Lucas André', '567891234', '2000-05-18', 'lucasandre@email.com', 6),
    ('Cecília Andrea Andreia Cavalcanti', '53169954733', '1990-02-22', 'cecilia-cavalcanti82@trevorh.com.br', 7),
    ('Caio Kaique Carlos Eduardo Oliveira', '88121959705', '1942-03-1', 'caio.kaique.oliveira@leonardopereira.com', 8),
    ('Gabrielly Nicole Silva',   '60030914795', '1977-02-24', 'gabrielly_silva@yahoo.com.br', 9),
    ('Lucas Kaique Diego Souza', '22151984788', '1979-04-04', 'lucas_kaique_souza@lavabit.com', 10),
    ('Hugo Luan Noah Carvalho',  '31482018764', '2003-03-06', 'hugoluancarvalho@marktechbr.com.br', 11),
    ('Murilo Anthony Viana', '72100950711', '2000-04-02', 'murilo.anthony.viana@cursomarcato.com.br', 12),
    ('Brenda Elisa Duarte',  '54021461795', '1986-07-02', 'brenda.elisa.duarte@outlook.com.br', 13),
    ('Tatiane Melissa Almada',   '91118828755', '1942-05-13', 'tatiane.melissa.almada@iname.com', 14),
    ('Felipe Gabriel Luan da Rocha', '03929439727', '1969-05-27', 'felipe_darocha@tarp.com.br', 15),
    ('Eliane Esther Flávia Fogaça',  '29359919748', '1978-07-01', 'eliane_esther_fogaca@caesarbusiness.com.br', 16),
    ('Kaique Erick da Luz',  '74690935750', '1943-04-01', 'kaiqueerickdaluz@cedda.com.br', 17),
    ('Emilly Ana Tereza Almeida',    '62353854710', '1944-05-26', 'emilly-almeida81@glaudeimar.com.br', 18),
    ('Edson José Martins',   '61512112780', '1966-06-19', 'edson.jose.martins@haldex.com', 19),
    ('Jaqueline Larissa Ferreira',   '22076153756', '1983-01-13', 'jaqueline-ferreira76@institutodainfancia.com.br', 20),
    ('Melissa Juliana Malu Moreira', '47665669719', '1995-04-10', 'melissa-moreira92@fluxioneventos.com.br', 21),
    ('Benedita Lúcia dos Santos',    '69276159703', '1942-02-04', 'benedita-dossantos70@mrv.com.br', 22),
    ('Carlos Eduardo Rodrigo Moura', '39074195709', '1973-02-11', 'carlos_moura@edepbr.com.br', 23),
    ('Juliana Natália Monteiro', '98662544703', '1947-06-02', 'juliana_natalia_monteiro@desari.com.br', 24),
    ('Stefany Rayssa das Neves', '71677759755', '1956-07-02', 'stefany_dasneves@pmm.am.gov.br', 25),
    ('Davi Geraldo Giovanni Barros', '54816134760', '1953-05-05', 'davi_geraldo_barros@tecsysbrasil.com.br', 26);

    insert into categorias_produto (categoria) values
    ('Esporte'),
    ('Cozinha'),
    ('Escritório'),
    ('Construção'),
    ('Lazer'),
    ('Cama, mesa e banho');

    insert into produtos (nome, descricao, preco, categoria_id, quantidade) values
    ('Bicicleta Caloi 10', 'Aro 23', 1998.99, 1, 12),
    ('Raquete Frescobol', 'Resina de policarbonato', 199.90, 1, 5),
    ('Cadeira Gamer', 'Com ajuste de altura e reclinável', 1100.90, 3, 30),
    ('Argamassa Argalit', 'Pacote de 20kg', 10.97, 4, 700),
    ('Mochila de Couro', '13L', 99.98, 3, 43),
    ('Bóia de piscina', 'Par de bóias para crianças', 17.34, 5, 123),
    ('Toalha bordada', '70x140', 32.12, 6, 21),
    ('Tijolo de barro', '9x19', 2.97, 4, 2500),
    ('Bola de futebol', '', 129.99, 1, 60),
    ('Fritadeira elétrica', '3L', 234.80, 2, 203);

    insert into promocoes (nome, descricao, data_inicio, data_fim, desconto) values
    ('Dia do Orgulho Nerd', 'Promoção em jogos', '2022-05-25', '2022-05-25', 0.2),
    ('Semana do Consumidor', 'Promoção em todos os produtos', '2022-03-14', '2022-03-20', 0.05);

    insert into promocoes_produtos (promocao_id, produto_id) values
    (1, 3),
    (2, 1),
    (2, 2),
    (2, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (2, 10);

    insert into pagamentos (chave_pix, total) values
    ('ff4983e12b10e8a56d72adda44db1bf2', 880.72),
    ('bdd0236b411808e8758fdc3c6a100aeb', 87.76),
    ('9eb3f68b1df55837553be41f5ffe5b20', 210.87),
    ('ed564798cffe7f3bb00ad7fc092124b5', 1998.99),
    ('d8c24e5c47d2b086ee5a355e4803d861', 10.97),
    ('d5ed38fdbf28bc4e58be142cf5a17cf5', 5298.78),
    ('fd78b60bc1d6daf2a174c740efd3d4dd', 129.99),
    ('68898e0abc78bf63f79925434a796e88', 32.12),
    ('d6c94b3266593fdce73ac90d9eeeff0f', 25.82),
    ('205acb72bac6f215a164b21b3aecb7fb', 99.98),
    ('7d70663568cac5af684503681e3a4d41', 147.33),
    ('4ff75da0d3b8234fb3edcd1d4ad17c85', 234.80),
    ('54cae01691d18960adccb024b0e5b01b', 1100.90),
    ('ec27c15fbae8dd57ccced4a63b52d4e9', 2198.89),
    ('522748524ad010358705b6852b81be4c', 34.68),
    ('8fa14cdd754f91cc6554c9e71929cce7', 132.1);

    insert into vendas (pessoa_id, data, pagamento_id, endereco_id) values
    (1, '2022-05-25', 1, 1),
    (1, '2022-06-12', 2, 4),
    (3, '2022-06-15', 3, 3),
    (2, '2022-06-19', 4, 2),
    (4, '2022-06-22', 5, 5),
    (5, '2022-07-01', 6, 6),
    (6, '2022-07-01', 7, 7),
    (7, '2022-07-01', 8, 8),
    (8, '2022-07-01', 9, 9),
    (9, '2022-07-01', 10, 10),
    (12, '2022-03-04', 11, 13),
    (11, '2022-06-12', 12, 12),
    (13, '2022-02-05', 13, 14),
    (16, '2022-03-31', 14, 17),
    (14, '2022-01-01', 15, 15),
    (22, '2022-04-26', 16, 23);

    insert into produtos_vendas (produto_id, venda_id, quantidade) values
    (3, 1, 1),
    (4, 2, 8),
    (2, 3, 1),
    (4, 3, 1),
    (1, 4, 1),
    (4, 5, 1),
    (1, 6, 2),
    (1, 2, 1),
    (1, 3, 1),
    (9, 7, 1),
    (7, 8, 1),
    (8, 9, 5),
    (4, 9, 1),
    (5, 10, 1),
    (6, 11, 1),
    (9, 11, 1),
    (10, 12, 1),
    (3, 13, 1),
    (1, 14, 1),
    (2, 14, 1),
    (6, 15, 2),
    (5, 16, 1),
    (7, 16, 1);