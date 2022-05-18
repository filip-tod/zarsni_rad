# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Filip\Documents\Zarsni_rad_PP25_filip\NBA_shop.sql

drop database if exists NBA_shop;
create database NBA_shop default charset utf8mb4;
use NBA_shop;
create table NBA(
    sifra int not null primary key auto_increment,
    ime_kluba varchar(50) not null,
    igrac int not null,
    trener int not null,
    champions BOOLEAN
);

create table igrac(
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime VARCHAR(20)not null,
    povijest_ekipa VARCHAR(50),
    rings_count VARCHAR(50)
);

create table trener(
    sifra int not null primary key auto_increment,
    ime varchar(50) , 
    prezime VARCHAR(50)
    

);

create table Kupac(
    sifra int not null primary key auto_increment,
    ime VARCHAR(50), 
    prezime varchar(50),
    oib char (11)
   # broj_narudzbe int not null

);

create table dresovi (
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    igrac int not null,
    broj_dresa VARCHAR(20) not null,
    kosarica int not null
    
);

create table patike(
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    igrac int not null,
    kosarica int not null
);

create table hlacice(
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    igrac int not null,
    kosarica int not null
);

create table dodatci(
    sifra int not null primary key auto_increment,
    vrsta_equipmenta VARCHAR (50), #znojnici,štitnici,čarape itd...
    velicina VARCHAR(50),
    igrac int not null,
    kosarica int not null
    
);
create table kosarica(
    sifra int not null primary key auto_increment,
    kupac int not NULL

);




# definiranje vanjskih ključeva
alter table NBA add foreign key (igrac) references igrac(sifra);
alter table NBA add foreign key (trener) references trener(sifra);

alter table kosarica add foreign key (kupac) references kupac(sifra);
alter table dresovi add foreign key (igrac) references igrac(sifra);

alter table dresovi add foreign key (kosarica) references kosarica(sifra);
alter table patike add foreign key (igrac) references igrac(sifra);
alter table patike add foreign key (kosarica) references kosarica(sifra);
alter table hlacice add foreign key (kosarica) references kosarica(sifra);
alter table hlacice add foreign key (igrac) references igrac(sifra);

alter table dodatci add foreign key (kosarica) references kosarica(sifra);
alter table  dodatci add foreign key (igrac) references igrac(sifra);



# IGRAČ #  >>bolje bi bilo napraviti prvo ekipe pa igrače<<

insert into igrac (sifra, ime, prezime, ekipa, rings_count)
VALUES (null, 'LeBron','James', 'LA-Lakers', '4'),
 (null, 'Michael','Jordan', 'Chicago-Bulls', '6'),
 (null, 'Russel','Westbrook', 'LA-Lakers', '0'),
 (null, 'Jason','Tatum', 'Boston-Celtics', '0'),
 (null, 'Luka','Dončić', 'Dallas-Maverics', '0'),
 (null, 'Paul','Pierce', 'Boston-Celtics', '1'),
 (null, 'Kevin','Garnet', 'Minesota-Timberwolves', '1'),
 (null, 'Vince','Carter', 'LA-Lakers', '4');


# Trener #


## NBA ##



## Kupac ##



## Kosarica ##



## Dresovi ##

## Hlacice ##

## PAtike ##

## dodatci ##

