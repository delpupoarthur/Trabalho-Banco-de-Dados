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
('Botafogo', 2),
('São Paulo', 3),
('Belo Horizonte', 4),
('Salvador', 5),
('Arraial da Ajuda', 5);

insert into enderecos (tipo_logradouro_id, logradouro, municipio_id, cep) values
(1, 'Carlos Martins', 1, '29090060'),
(1, 'Eurico Miranda', 1, '29090120'),
(2, 'André Junior', 3, '29090292'),
(3, 'Carlos Lindemberg', 4, '23940501'),
(1, 'Salvador', 8, '40015-970'),
(4, 'São Jorge', 5, '01311-000');

insert into pessoas (nome, cpf, data_nascimento, email, endereco_id) values
('Luiz Eduardo', '123456789', '2000-09-29', 'luizeduardo@email.com', 1),
('João Victor', '234567891', '1998-04-09', 'joaovictor@email.com', 2),
('Amanda Nunes', '345678912', '1997-02-19', 'amandanunes@email.com', 3),
('Carlos Eduardo', '456789123', '1980-07-30', 'carloseduardo@email.com', 5),
('Lucas André', '567891234', '2000-05-18', 'lucasandre@email.com', 6);

insert into categorias_produto (categoria) values
('Esporte'),
('Cozinha'),
('Escritório'),
('Construção');

insert into produtos (nome, descricao, preco, categoria_id, quantidade) values
('Bicicleta Caloi 10', 'Aro 23', 1998.99, 1, 12),
('Raquete Frescobol', 'Resina de policarbonato', 199.90, 1, 5),
('Cadeira Gamer', 'Com ajuste de altura e reclinável', 1100.90, 3, 30),
('Argamassa Argalit', 'Pacote de 20kg', 10.97, 4, 700);

insert into promocoes (nome, descricao, data_inicio, data_fim, desconto) values
('Dia do Orgulho Nerd', 'Promoção em jogos', '2022-05-25', '2022-05-25', 0.2),
('Semana do Consumidor', 'Promoção em todos os produtos', '2022-03-14', '2022-03-20', 0.05);

insert into promocoes_produtos (promocao_id, produto_id) values
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(2, 4);

insert into pagamentos (chave_pix, total) values
('ff4983e12b10e8a56d72adda44db1bf2', 880.72),
('bdd0236b411808e8758fdc3c6a100aeb', 87.76),
('9eb3f68b1df55837553be41f5ffe5b20', 210.87),
('ed564798cffe7f3bb00ad7fc092124b5', 1998.99),
('d8c24e5c47d2b086ee5a355e4803d861', 10.97),
('d5ed38fdbf28bc4e58be142cf5a17cf5', 5298.78);

insert into vendas (pessoa_id, data, pagamento_id, endereco_id) values
(1, '2022-05-25', 1, 1),
(1, '2022-06-12', 2, 4),
(3, '2022-06-15', 3, 3),
(2, '2022-06-19', 4, 2),
(4, '2022-06-22', 5, 5),
(5, '2022-07-01', 6, 6);

insert into produtos_vendas (produto_id, venda_id, quantidade) values
(3, 1, 1),
(4, 2, 8),
(2, 3, 1),
(4, 3, 1),
(1, 4, 1),
(4, 5, 1),
(1, 6, 2),
(1, 2, 1),
(1, 3, 1);