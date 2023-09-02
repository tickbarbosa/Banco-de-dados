-- Craindo Banco de dados
/* Comentário de mais de
 uma linha 
*/

create database bd2patrick;

/* Destruir uma banco de dados
drop database bd2patrick; */

-- Dizendo qual banco de dados usar
use bd2patrick;
-- criando tabela 
create table produto (
	id int(11) primary key auto_increment,
	nome varchar(255) not null,
    quantidade int(11),
    preco float(8,2)
);

/* Toda chave primaria é única e not null  (restrição e integridade)
 auto-increment - acrescenta automaticamente um número a cada volume registro criado */
 
 -- Mostra um descritivo dos campos da tabela 
 show columns from produto;
 
 -- inserir valores na tabela
insert into produto (nome, quantidade, preco)
	values ('detergente', 10, 10.54);
insert into produto (nome, quantidade, preco)
	values ('Sabão', 15, 20.60);
insert into produto (nome, quantidade, preco)
	values ('Esponja', 20, 5.6);
    
select*from produto; 

select id, nome from produto; 
    
select id, nome -- selecionando duas coluna 
from produto -- selecionando a coluna da tabela "produto"
where id >= 2; -- filtrando 

-- Atualizando Registro 
update produto
set nome = 'Sabão em pedra'
where id=2;

update produto
set nome= 'Esponja de aço'
where id = 3; 
 