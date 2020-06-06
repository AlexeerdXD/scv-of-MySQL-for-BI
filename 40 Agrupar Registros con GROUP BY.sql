-- Función de Agrupamiento group by

create table visitantes(
nombre varchar(30),
edad tinyint unsigned,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20),
telefono varchar(11),
montocompra decimal(6,2) unsigned
);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)values('Susana Molina',28,'f','Colon 123','Cordoba',null,45.50);
insert into visitantes values('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',0);

insert into visitantes values('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25);
insert into visitantes values('Teresa Garcia',33,'f','Gral. Paz','Alta Gracia','03547123456',0);
insert into visitantes values('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
insert into visitantes values('Marina Torres',22,'f','Colo 222','villa Dolores','03544112233',25);
insert into visitantes values('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','03457121212',5.50);
insert into visitantes values('Roxana Lopez',20,'f','Triumirato 345','Alta Gracia',null,0);
insert into visitantes values('Lilinia Garcia',50,'f','Paso 999','Cordoba','4588776',48);
insert into visitantes values('Juan Torres',43,'m','Sarmirnto 876','Cordoba','4988778',15.30);

select *from visitantes;

select count(*) from visitantes where ciudad = 'Cordoba';
select count(*)from visitantes where ciudad = 'Alta Gracia';

select ciudad, count(*) from visitantes group by ciudad;
select sexo, count(*) from visitantes group by sexo;
select edad, count(*) from visitantes group by edad;

#select max(edad),(montocompra) from visitantes; -- max

select sexo, sum(montocompra) from visitantes group by sexo;








