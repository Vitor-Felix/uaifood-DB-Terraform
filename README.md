# uaifood-DB-Terraform
repositório para infra de banco de dados do App uaifood, gerenciáveis com Terraform.

---

# Justificativa para a Escolha do Banco de Dados

## Abordagem SQL

Foi escolhido adotar uma estrutura SQL para o projeto, pois por ser um sistema 
simples e com escopos bem definidos, bastariam algumas entidades e relacionamentos
simples para acatar as características do projeto.

Dentre os pontos principais para a escolha da abordagem SQL, estão:

### Modelo mais tradicional e familiar aos desenvolvedores

O modelo relacional se trata do modelo mais tradicional e familiar aos desenvolvedores,
tanto por sua maior adoção no mercado de trabalho, como a sua maior difusão de conhecimento
desde as primeiras aulas de introdução a banco de dados nos cursos de tecnologia computacional.

Tal fato, ajuda não só em um desenvolvimento inicial mais rápido sem que os desenvolvedores
tenham que se adequar a formas diferentes de dados, como é mais simples de encontrar novos
desenvolvedores que rapidamente se adequarão a estrutura de dados do projeto.

### Desempenho

Para o projeto, não teremos uma escala de utilização gigantesca e simultânea com tráfego
de usuários muito pequeno quando comparado ao tráfego de uma rede social ou um ecommerce. 
Porém precisamos garantir a autênticidade, estabilidade e confiabilidade de cada transação e
é aí onde os bancos de dados SQL tem maior destaque dado o seu enfoque em fornecer transações
com maior garantia de atomicidade, consistência, isolamento e durabilidade de dados.

### Esquema

Como o projeto possui uma estrutura mais simples no quesito de modelagem de entidades bem
como suas relações entre si, o  esquema rígido e pré-definido dos bancos de dados 
relacionais se torna uma boa escolha. O esquema de armazenamento de dados, é facilmente
desenhado antes da utilização da aplicação e com pouquíssimas adequações no desenrolar do
projeto.

### Escalabilidade

O desenvolvimento da aplicação, foi focado na simplicidade logística de distribuição. 
A escalabilidade vertical se adequa tranquilamente aos requisitos do projeto e é justamente 
esta estratégia a qual os bancos de dados relacionais, melhor se adequam.

## Escolha do MySQL

A maior justificativa para o uso do MySQL dentre outros SGBDs, sem dúvidas é quanto a 
familiaridade dos desenvolvedores com este sistema, bem como a sua vasta base de usuários
e documentação, o que facilita muito a manutenção. De fato, podemos evidenciar este 
uso massivo do MySQL dentre outros sistemas de gerenciamento SQL, consultando a lista
do [DB-Engines Ranking](https://db-engines.com/en/ranking) onde esta se encontra em segundo
lugar, ficando atrás somente do Oracle DBMS. Porém, ao contrário do Oracle DBMS, o MySQL
é gratuito, open-source e uma melhor escolha para projetos menores sem a necessidade das
features enterprise do Oracle.

## Escolha do AWS RDS

Novamente o maior destaque quanto a escolha de utilização do AWS RDS, também se trata da familiaridade
e amplo uso desta por desenvolvedores. Este motivo, bem como uma grande quantidade de documentação e artigos
sobre esta ferramenta, a torna menos imprevisível quanto a dúvidas de implementação e maior suporte de usuários
em fórums. 

Porém esta também se destaca quanto a liberdade de testes e desenvolvimento com planos gratuitos, embora muitos
destes sejam temporários. Outro grande ponto em destaque, é sua fácil integração com outros serviços da AWS.

Fora estes pontos, temos os destaques de serviços em nuvem, que são bem conhecidos, tais como:
 - Alta Disponibilidade e Recuperação de Desastres;
 - Escalabilidade Sob Demanda;
 - Segurança;
 - E o que seria de maior destaque ao projeto: O **Gerenciamento Automatizado**.
