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

> O sistema da loja "Móveis e Eletro” almeja auxiliar a organização das atividades diárias da loja e abrir as portas da empresa para o mercado digital (compras feitas pela internet). Dessa forma, os clientes terão acesso a compra de produtos sem ter que se deslocar até uma loja física recebendo o produto na comodidade de sua casa. O sistema servirá como facilitador para as atividades exercidas pelos funcionários da loja física, unificando as operações em um só lugar.
 
<hr>

### 3.MINI-MUNDO<br>
<br>

> A loja “Móveis e Eletro” atualmente comercializa móveis e eletrodomésticos e trabalha com o objetivo de proporcionar serviços àqueles que sonham em ter a casa mobiliada com produtos de qualidade e de boa procedência. A loja deseja obter um sistema que auxilie seus processos internos, tais como o processo de vendas e entregas. 
A loja trabalha com dois tipos de venda: por meio de vendas físicas ou por meio de compras online. A cobertura de entregas da loja é nacional. O sistema deve possuir carrinhos de compra. Para realizar uma compra, os clientes devem informar seu nome, CPF, telefone, email e endereço. O sistema deve enviar emails para seus clientes sempre que acontecerem promoções, visando manter seu público atualizado. O sistema deve registrar os horários de entrada e saída de cada vendedor. Para conseguir cumprir os prazos de entrega a empresa possui frota própria de entregadores. O prazo de entrega varia dependendo da localidade do comprador. A loja necessita que os produtos sejam contabilizados. Sempre que os produtos estiverem próximos de se esgotar, um alerta deve ser enviado, bem como os fornecedores devem ser contactados. Assim que a encomenda for despachada, o entregador deve gerar um código de rastreio para facilitar seu acompanhamento. A loja tem apoio de um software externo, onde mostra a visualização dos móveis selecionados pelo cliente no seu cômodo desejado. 
O pagamento é feito por meio de cédulas, PIX ou carteiras virtuais (PicPay e PayPal), além disso, os vendedores podem aplicar desconto de 15% se o cliente comprar 3 itens ou mais. O vendedor recebe uma comissão de 5% em cima da quantidade total vendida por ele no mês. É importante que seja possível acessar os seguintes relatórios: O total de vendas por período especificado, o valor de venda realizado por cada vendedor, o banco de horas de cada funcionário e a rota de entrega dos entregadores.


### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Criação da interface para identificar possíveis informações a serem armazenadas ou descartadas usando Balsamiq.
![Alt text](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/images/TelaBalsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Moveis e Eletro](https://github.com/delpupoarthur/Trabalho-Banco-de-Dados/blob/master/arquivos/Balsamiq.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

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
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

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


