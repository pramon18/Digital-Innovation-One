-- create database Ecommerce;

use Ecommerce;

/*
create table Teste (
	Descricao varchar(50) null,
	Complemento char(10) not null
);
*/
-- drop table Teste;

-- int
-- bigint
-- varchar
-- char
-- bit

--insert Teste values (null, 'b');
--select * from teste;


-- ############################ --
-- Criar tabelas do curso
/*
create table Produtos
(
	Codigo int, 
	Nome varchar(100),
	Descricao varchar(200),
	Preco float
)

CREATE TABLE Clientes(
	Codigo int NOT NULL,
	Nome varchar(200) NOT NULL,
	TipoPessoa char(1) NOT NULL
)

create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null, 
	TotalPedido float not null,
	CodigoCliente int not null,
)

create table PedidoItem
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null,
)
*/

/*
-- Comando Insert, Select, Update e Delete

select * from Clientes;

-- Formas de insert
insert into Clientes(Codigo, Nome, TipoPessoa) values (1, 'Thiago', 'F');
insert Clientes(Codigo, Nome, TipoPessoa) values (2, 'João', 'F');
insert Clientes(Nome, TipoPessoa, Codigo) values ('Carlota', 'F', 3);
insert Clientes values (4, 'Joaquim', 'F'), (5, 'Joab', 'F'), (6, 'Josefina', 'F'), (7, 'Jorão', 'F');
insert Clientes(Nome, TipoPessoa, Codigo) values ('Carlota Joaquina', 'J', 8);

-- Update
select * from Clientes where TipoPessoa = 'J';

update Clientes set Codigo = 9, Nome = 'Carlinhos' where TipoPessoa = 'J';

-- Delete
delete from Clientes;
delete from Clientes where Codigo in (5, 4, 3, 2);

-- AND - (Verdadeiro = Todas as cláusulas verdadeiras), (Falso = Uma das cláusulas falsa)
-- OR - (Verdadeiro = Uma das cláusulas verdadeiras), (Falso = Todas as cláusulas falsas)

-- Tabela Verdade do AND
-- V AND V = V
-- V AND F = F
-- F AND V = F
-- F AND F = F

-- Tabela Verdade do OR
-- V OR V = V
-- V OR F = V
-- F OR V = V
-- F OR F = F

select * from Clientes where Codigo = 1 or TipoPessoa = 'F';
*/
/*
-- Especificidades do comando Select
select * from Clientes;

select * from Produtos;

insert Produtos values(1, 'Caneca', 'Caneca azul', 1.5);
insert Produtos values(2, 'Caderno', 'Caneca 10 matérias', 20.99);
insert Produtos values(3, 'Livro', 'Livro Didático Português', 30.0);
insert Produtos values(4, 'Toalha', 'Toalha de Rosto Escolar', 10.50);

select * from Pedido;

insert Pedido values(1, getdate(), 0, 3.0, 7);
insert Pedido values(2, getdate(), 0, 31.49, 6);


select * from PedidoItem;

insert PedidoItem values(1, 1, 1.5, 2);
insert PedidoItem values(2, 2, 20.99, 1);
insert PedidoItem values(2, 4, 10.50, 1);

insert Clientes (Codigo, Nome, TipoPessoa) values(2, 'Higor', 'F');

-- select isnull(DataCriacao, getdate()) from Clientes;

-- Case e conversão
select *,
	case when TipoPessoa = 'J' then 'Jurídica'
		 when TipoPessoa = 'F' then 'Física'
		 else 'Pessoa Indefinida'
	end +
	convert(varchar, getdate(), 103)
from Clientes;

select *, convert(varchar, DataSolicitacao, 103) 
from Pedido
*/

/*
-- O que são chaves primárias e estrangeiras

select * from Clientes;

alter table Clientes add constraint pk_cliente primary key(Codigo);

-- Erro depois da constraint
-- insert Clientes values(1, 'Cesar', 'J', getdate());

insert Clientes values('Cesar', 'J', getdate());

select * from PedidoItem;

alter table PedidoItem add constraint fk_pedido foreign key (CodigoPedido) references Pedido (Codigo);

-- Erro depois de adicionar chave primária constraint
insert PedidoItem values(1, 1, 1.5, 100);
insert PedidoItem values(37, 1, 1.5, 100);
insert PedidoItem values(1, 100, 1.5, 100);

select * from Produtos;


select * from Pedido;
insert Pedido values(getdate(), 0, 60, 90);
*/

/*
-- As Fases da normalização de dados

select * from Clientes;

select * from PedidoItem;

select * from Produtos;

select * from Pedido;

alter table Pedido add CodigoStatus int 
alter table Pedido add DescStatus varchar(50)

update Pedido set CodigoStatus = 1, DescStatus = 'Em Andamento';
update Pedido set CodigoStatus = 1;


select * from Status;
insert Status values ('Em andamento'), ('Finalizado');
*/

-- Introdução ao comando Join

select * from StatusPedidoItem;

select * from PedidoItem;

insert PedidoItemLog(CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate() 
from PedidoItem;

select * from PedidoItemLog;

insert PedidoItemLog values(1,2,1, getdate());

-- inner join
-- left join
-- right join

select * 
from Clientes cli
inner join Pedido ped 
on (cli.Codigo = ped.CodigoCliente)

select * 
from Clientes cli
left join Pedido ped 
on (cli.Codigo = ped.CodigoCliente)

select * 
from Clientes cli
right join Pedido ped 
on (cli.Codigo = ped.CodigoCliente)

-- Aprofundando nos comandos Join, Group By
select * 
from Clientes cli
left join Pedido ped 
on (cli.Codigo = ped.CodigoCliente 
and ped.TotalPedido > 10)

select cli.Nome,
	   ped.TotalPedido,
	   case
			when cli.TipoPessoa = 'F' then 'Física'
			when cli.TipoPessoa = 'J' then 'Jurídica'
			else 'Pessoa Indefinida'
	   end TipoPessoa
from Clientes cli
left join Pedido ped 
on (cli.Codigo = ped.CodigoCliente)

select --sum(Preco * Quantidade), avg(preco), count(*)
	   t4.Codigo,
	   t4.Descricao,
	   sum(t1.Preco * t1.Quantidade) Total
from PedidoItem t1
inner join PedidoItemLog t2
on (t2.CodigoPedido = t1.CodigoPedido)
and (t2.CodigoProduto = t1.CodigoProduto)
inner join StatusPedidoItem t3
on (t3.Codigo = t2.CodigoStatusPedidoItem)
inner join Produtos t4
on t4.Codigo = t2.CodigoProduto
--where Preco between 1 and 2
group by t4.Codigo, t4.Descricao
--order by Total desc--t4.Codigo, t4.Descricao
having sum(t1.Preco * t1.Quantidade) > 10

select * 
from Clientes cli
where cli.Codigo not in (select CodigoCliente from Pedido)


select * 
from Clientes cli
left join Pedido ped
on (cli.Codigo = ped.CodigoCliente)
where ped.Codigo is not null

select cli.Codigo,
	   cli.Nome,
	   count(ped.Codigo) NumPedidos
from Clientes cli
left join Pedido ped
on (cli.Codigo = ped.CodigoCliente)
group by cli.Codigo,
		 cli.Nome


select *
from Clientes cli, Pedido ped, PedidoItem pedItem
where cli.Codigo = ped.CodigoCliente
and ped.Codigo = pedItem.CodigoPedido










