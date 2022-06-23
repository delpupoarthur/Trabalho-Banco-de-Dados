# TRABALHO 01:  Sistema para loja 'Moveis Eletro'
Trabalho desenvolvido durante a disciplina de Banco de Dados 1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Arthur Delpupo : arthurdelpupocoelho40@gmail.com<br>
Thiago Nascimento : thiagoduna0@gmail.com<br>
Guilherme Bleidão : guilhermenbleidao@gmail.com<br>
<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO
<br>
Este documento contém a especificação do projeto do banco de dados Moveis Eletro 
<br>e motivação da escolha realizada. <br>

> O sistema da loja "Móveis e Eletro”deseja abrir as portas da empresa para o mercado digital (compras feitas pela internet). O sistema servirá como facilitador para as atividades exercidas pelos funcionários da loja física, unificando as operações em um só lugar.
 
<hr>

### 3.MINI-MUNDO<br>
<br>

> A loja “Móveis e Eletro” atualmente comercializa móveis e eletrodomésticos e trabalha com o objetivo de proporcionar serviços àqueles que sonham em ter a casa mobiliada com produtos de qualidade e de boa procedência. A loja deseja obter um sistema que auxilie seus processos internos, tais como o processo de vendas e entregas. 
A loja trabalha com dois tipos de venda: por meio de vendas físicas ou por meio de compras online. Para realizar uma compra, os clientes devem informar seu nome, CPF, telefone, email e endereço. Para conseguir cumprir os prazos de entrega a empresa possui frota própria de entregadores. A loja necessita que os produtos sejam contabilizados. A loja tem apoio de um software externo, onde mostra a visualização dos móveis selecionados pelo cliente no seu cômodo desejado. 
O pagamento é feito por meio de PIX, além disso, os vendedores podem aplicar desconto de 15% se o cliente comprar 3 itens ou mais. É importante que seja possível acessar os seguintes relatórios: O total de vendas por período especificado, o valor de venda realizado por cada vendedor, o banco de horas de cada funcionário e a rota de entrega dos entregadores.


### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Criação da interface para identificar possíveis informações a serem armazenadas ou descartadas usando Balsamiq.
![Alt text](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/TelaBalsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Moveis e Eletro](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/arquivos/Balsamiq.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
 A Empresa Móveis e Eletro precisa inicialmente dos seguintes relatórios:
* Relatório que mostre cada cliente, produtos que comprou.
* Relatório que mostre as vendas e pagamentos realizadas em uma data.
* Relatório que mostre todos os produtos em estoque.
* Relatório que mostre todos os produtos em promoção.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    
![Tabela de Dados](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/arquivos/tabela_dados_sistema.xlsx?raw=true "Tabela de Dados")
    
    
### 5.MODELO CONCEITUAL<br>
![Alt text](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/conceitual.png?raw=true "Modelo Conceitual")
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Matheus Aguiar e Douglas Nunes]
    [Grupo02]: [Cléber Salustiano e Carlos Breno]

#### 5.2 Descrição dos dados 
    PESSOA: Tabela que armazena as informações relativas ao cliente
    id: Campo que armazena o código de identificação do cliente da empresa.
    nome: Campo que armazena o nome do cliente da emoresa.
    cpf: Campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.
    data_nasc: Campo que armazena a data de nascimento do cliente da empresa.
    email: Campo que armazena o email do cliente da emrpesa.
    
    VENDA: Tabela que armazena as informações relativas a venda.
    id: Campo que armazena o código de identificação da venda efetuada.
    data: Campo que armazena a data que foi realizada a venda.
    
    PAGAMENTO: Tabela que armazena as informações sobre o pagamento do cliente.
    id: Campo que armazena o código de identificação do pagamento efetuado.
    chave_pix: Campo que armazena a chave de pagamento realizado pelo cliente.
    total:  Campo que armazena o valor total do pagamento feito pelo cliente.
    
    PRODUTO: Tabela que armazena as informações sobre produtos em estoque na loja.
    id:  Campo que armazena o código de identificação do produto.
    nome:  Campo que armazena o nome do produto.
    desc:  Campo que armazena a descrição do produto.
    preco: Campo que armazena o preço individual do produto.
    quantidade:  Campo que armazena a quantidade total do produto em estoque.
    
    PROMOCAO: Tabela que armazena as informações sobre as promoções dos produtos.
    id:  Campo que armazena o código de identificação de promoções.
    descricao:  Campo que armazena a descrição da promoção.
    data_inicio:  Campo que armazena a data de início da promoção.
    data_fim:  Campo que armazena a data que a promoção termina.
    desconto:  Campo que armazena a porcentagem de desconto.
    
    CATEGORIA: Tabela que armazena as informações sobre as categorias dos produtos.
    id:  Campo que armazena o código de identificação das categorias dos produtos.
    categoria:  Campo que armazena o nome da categoria.
    
    ENDERECO: Tabela que armazena as informações sobre o endereço do cliente.
    id:  Campo que armazena o código de identificação sobre o endereço do cliente.
    logradouro:  Campo que armazena o logradouro do endereço do cliente.
    cep:  Campo que armazena o cep do endereço do cliente.
    
    TIPO_LOGRADOURO: Tabela que armazena as informações sobre os tipos de logradouro.
    id:  Campo que armazena o código de identificação do tipo de logradouro.
    nome:  Campo que armazena o nome do tipo do logradouro.
    
    MUNICIPIO: Tabela que armazena as informações sobre os municios.
    id:  Campo que armazena o código de identificação do munícipio.
    nome:  Campo que armazena o nome do município.
    
    ESTADO:  Tabela que armazena as informações sobre os estados.
    id:  Campo que armazena o código de identificação do estado.
    nome:  Campo que armazena o nome do estado.

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/Logico.png?raw=true "Modelo Logico")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
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
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Inserts com restauração](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/arquivos/restauracao.sql?raw=true "Inserts com restauração")


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
    VENDAS
![Tabela VENDAS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/vendas.png?raw=true "Tabela VENDAS")

    PRODUTOS_VENDAS
![Tabela PRODUTOS_VENDAS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/produtos_vendas.png?raw=true "Tabela PRODUTOS_VENDAS")

    PRODUTOS
![Tabela PRODUTOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/produtos.png?raw=true "Tabela PRODUTOS")

    PESSOAS
![Tabela PESSOAS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/pessoas.png?raw=true "Tabela PESSOAS")

    ENDERECOS
![Tabela ENDERECOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/enderecos.png?raw=true "Tabela ENDERECOS")

    TIPOS_LOGRADOURO
![Tabela TIPOS_LOGRADOURO](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/tipos_logradouro.png?raw=true "Tabela TIPOS_LOGRADOURO")

    MUNICIPIOS
![Tabela MUNICIPIOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/municipios.png?raw=true "Tabela MUNICIPIOS")

    ESTADOS
![Tabela ESTADOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/estados.png?raw=true "Tabela ESTADOS")

    CATEGORIAS_PRODUTO
![Tabela CATEGORIAS_PRODUTO](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/categorias_produto.png?raw=true "Tabela CATEGORIAS_PRODUTO")

    PROMOCOES_PRODUTOS
![Tabela PROMOCOES_PRODUTOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/promocoes_produto.png?raw=true "Tabela PROMOCOES_PRODUTOS")

    PROMOCOES
![Tabela PROMOCOES](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/promocoes.png?raw=true "Tabela PROMOCOES")

    PAGAMENTOS
![Tabela PAGAMENTOS](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/pagamentos.png?raw=true "Tabela PAGAMENTOS")
    
># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


