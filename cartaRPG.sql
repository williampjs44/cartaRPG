drop database if exists cartaRPG;
create database cartaRPG character set utf8;

use cartaRPG;

create table carta(
	id	int	primary key	auto_increment,
    nombre	varchar(50)	 null,
    raza	varchar(40) 	not null,
    picture	varchar(40)	not null,
    fuerza	int	not null,
    destreza	int	not null,
    constitucion	int	not null,
    inteligencia	int	not null,
    sabiduria	int	not null,
    carisma		int	not null,
    vida	int	not null,
    mana	int	not null
);

insert into carta(nombre,raza,picture,fuerza,destreza,constitucion,inteligencia,sabiduria,carisma,vida,mana)values('','Nans','1',6,12,7,15,15,10,0,0)