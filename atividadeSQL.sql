USE pokedex;

Select * 
from  pokemon; 

Select nome 
from pokemon;

select numero, nome, cor, altura_m, peso_kg 
from pokemon;

#Qual é o numero e o nome de todos os pokémons da primeira geração?
select numero, nome 
FROM pokemon 
where geracao = 1;


#Quais são os pokémons Amarelo da primeira geração?
select nome 
from pokemon 
where geracao = 1 And cor = 'amarelo';


#Qual é o pokémon mais forte?
select nome, total 
from pokemon 
order by total desc limit 1;


#Selecione o numero, nome e tipo1; de todos os pokémons cujo tipo primário é Fire.
select numero, nome, tipo1 
from pokemon 
where tipo1 = 'Fire';


#Selecione em ordem decrescente o numero, nome e defesa de todos os pokémons.
select numero, nome, defesa 
from pokemon 
order by numero, nome, defesa desc;


#Qual o pokémon possui menor taxa de captura? Selecione apenas numero e nome.
select numero, nome 
from pokemon 
order by taxa_captura desc limit 1;


#Selecione todos pokémons que não possuem tipo secundário, ou seja, tipo2.
select nome, tipo2 
from pokemon 
where tipo2 is null;


#Selecione numero, nome, tipo1, tipo2 de todos os pokémons que possuem o peso entre 100kg e 500kg.
select numero, nome, tipo1, tipo2, peso_kg 
from pokemon 
where peso_kg between 100 and 500;


#Crie um ranking dos top 10 pokémons mais velozes, contendo numero, nome e velocidade.
select numero, nome, velocidade 
from pokemon 
order by velocidade desc limit 10;


#Selecione numero, nome, tipo1, tipo2, taxa_captura dos pokémons que possuem os dois tipos 
#e tenham uma taxa de captura acima de 100. Ordene os resultados decrescente pela taxa de captura.
select numero, nome, tipo1, tipo2, taxa_captura 
from pokemon 
where tipo1 is not null and tipo2 is not null and taxa_captura > 100 
order by taxa_captura desc;


#Quais são os tipos primários dos pokémons?
select distinct tipo1
from pokemon;


#Selecione o numero, nome e cor; de todos os pokémons que o nome começa com a letra D.
select numero, nome, cor 
from pokemon 
where nome like 'D%';


#Qual é o pokémon mais poderoso de todas as gerações?
select nome, total 
from pokemon 
order by total desc limit 1;


#Selecione o numero, nome, defesa, ataque dos pokémons com defesa > 60 e ataque <= 70; ordenados decrescente pelo total.
select numero, nome, defesa, ataque, total 
from pokemon 
where defesa > 60 and ataque <= 70 
order by total desc;


#Selecione todos os pokémons do tipo Planta e Venenoso que não sejam Green, ordenado crescente pelo nome.
select * from pokemon
where (tipo1 = 'planta' and tipo2 = 'venenoso') or (tipo2 = 'planta' and tipo1 = 'venenoso') and cor <> 'green'
order by nome asc;

select distinct tipo1 from pokemon;


#Selecione de maneira crescente os nomes dos pokémons que possuem a letra y na 4ª posição do nome.
select nome 
from pokemon 
where nome like '___y%' 
order by nome asc;


#Qual é o maior valor de ataque_especial cadastrado?
select nome, ataque_especial 
from pokemon 
order by ataque_especial desc limit 1;


#Selecione o numero, nome e altura_m dos pokémons que possuem altura acima de 2,10m.
select numero, nome, altura_m 
from pokemon 
where altura_m > 2.10;


#Quais são as diferentes tipos de cores dos pokémons? Apresente os resultados de maneira crescente pelo nome da cor.
select distinct cor 
from pokemon 
order by cor asc;


#Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)
select nome, velocidade 
from pokemon
 where velocidade between 30 and 70 
 order by nome asc, velocidade desc;
 
 
#Quem são os pokémons lendários? Apresente os resultados ordenados por total decrescente.
select nome, total 
from pokemon 
where lendario = 1 
order by total desc;


#Selecione os pokémons da primeira geração com taxa de captura igual a 255.
select nome, geracao, taxa_captura 
from pokemon 
where geracao = 1 and taxa_captura = 255;


#Quem é o mais poderoso? selecione o Pikachu, Squirtle, Bulbasaur e Charmander; ordenados decrescente pelo total.
select nome, total 
from pokemon 
where (nome ='Pikachu') or (nome = 'Squirtle') or (nome = 'Bulbasaur') or (nome = 'Charmander') 
order by total desc;


#Quem são os pokémons da primeira geração, que começam com a letra d e não possuem tipo secundário? Ordene os resultados crescente por taxa_captura e decrescente pelo total.
select nome, geracao 
from pokemon 
where geracao = 1 and nome like 'd%'and tipo2 is null  
order by taxa_captura asc, total desc;


#Qual é o ranking dos top 5 pokémons lendários com maior taxa_captura e total? Apresente apenas numero, nome, total, taxa_captura nos resultados.
select numero, nome, total, taxa_captura 
from pokemon 
where lendario = 1
order by taxa_captura desc limit 5;


#Selecione o numero, nome, peso_kg dos pokémons com peso entre 2kg e 3kgs?
select numero, nome, peso_kg 
from pokemon 
where peso_kg between 2 and 3;


#Selecione o numero, nome, tipo1 e tipo2 dos pokémons com tipo primário Normal, que não possuem tipo secundário. Existe algum pokémon lendário nos resultados, se sim, os remova dos resultados?
select numero, nome, tipo1, tipo2 
from pokemon 
where tipo1 = 'normal' and tipo2 is null;


#Quem são os pokémons do tipo Water que não são azuis? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
select numero, nome, tipo1, tipo2, cor 
from pokemon 
where tipo1 = 'Water' and cor <> 'blue' 
order by nome asc;


#Crie um ranking dos top 10 pokémons mais lentos.
select nome, velocidade 
from pokemon 
order by velocidade asc limit 10;


#Selecione os pokémons cujo nome comece e termine com a letra a.
select nome 
from pokemon
 where nome like 'a%a';
 
 
#Quem são os pokémons do tipo Fire que não são vermelhos? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
select numero, nome, tipo1, tipo2, cor
from pokemon 
where tipo1 = 'fire' and cor <> 'red' 
order by nome asc;


#Quais são os diferentes tipos de peso_kg dos pokémons? Apresente os resultados ordenados de maneira crescente.
select distinct peso_kg 
from pokemon 
order by peso_kg asc;


#Selecione o numero, nome e hp dos pokémons com valores entre 0 e 100. Ordene os resultados de maneira crescente por hp e nome.
select numero, nome, hp 
from pokemon 
where hp between 0 and 100 
order by hp, nome asc;


#Selecione o numero, nome, hp, ataque, defesa e total; dos pokémons com valores de hp, ataque, defesa maiores ou iguais a 100.
select numero, nome, hp, ataque, defesa, total 
from pokemon 
where hp >=100 and ataque >=100 and defesa >=100;


#Selecione todos os pokémons do tipos Water e Gelo, ordenados decrescente por total.
select nome 
from pokemon 
where tipo1='water' or tipo1='gelo' 
order by total desc;
