# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Filip\Documents\Zarsni_rad_PP25_filip\zarsni_rad\NBA_shop.sql

drop database if exists NBA_shop;
create database NBA_shop default charset utf8mb4;
use NBA_shop;
create table NBA_team(
    sifra int not null primary key auto_increment,
    ime_kluba varchar(50),
    trener VARCHAR(50),
    championships_won char(2),
    godina1 date, # primjer bullsi iz 1994
    godina2 date #  do godine 1995 
);

create table igrac(
    sifra int not null primary key auto_increment,
    NBA_team int not null,
    ime varchar(20) not null,
    prezime VARCHAR(20)not null,
    ekipa VARCHAR(50),
    rings_count VARCHAR(50)
);

    


create table Kupac(
    sifra int not null primary key auto_increment,
    ime VARCHAR(50), 
    prezime varchar(50),
    oib char (11),
    naruceni_proizvodi VARCHAR(50)
   # broj_narudzbe int not null

);

create table oprema (
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    igrac int not null,
    vrsta_proizvoda VARCHAR(20) not null,
    boja VARCHAR(20)
    
    
);

create table naruceni_proizvodi (
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    vrsta_proizvoda VARCHAR(20),
    kosarica int not null,
    datum_isporuke datetime,
    kupac int not null
    
);


    
create table kosarica(
    sifra int not null primary key auto_increment,
    oprema int not null


);




# definiranje vanjskih ključeva
alter table igrac add foreign key (NBA_team) references NBA_team(sifra);

alter table kosarica add foreign key (oprema) references oprema(sifra);
alter table naruceni_proizvodi add foreign key (kosarica) references kosarica(sifra);

alter table naruceni_proizvodi add foreign key (kupac) references kupac(sifra);

ALTER TABLE oprema add FOREIGN KEY(igrac) REFERENCES igrac(sifra);





