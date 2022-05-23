# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Filip\Documents\Zarsni_rad_PP25_filip\zarsni_rad\NBA_shop.sql

drop database if exists NBA_shop;
create database NBA_shop default charset utf8mb4;
use NBA_shop;
create table NBA_team(
    sifra int not null primary key auto_increment,
    ime_kluba varchar(50),
    trener VARCHAR(50),
    championships_won varchar(50),
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
    boja VARCHAR(50),
    tezina VARCHAR(50),
    igrac int not null,
    tezina_proizvoda DECIMAL,
    vrsta_proizvoda VARCHAR(20) not null
    
    
    
);

create table naruceni_proizvodi (
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    vrsta_proizvoda VARCHAR(20),
    kosarica int not null,
    datum_isporuke datetime,
    kupac int not null,
    ukupna_tezina_proizvoda decimal
    
);


    
create table kosarica(
    sifra int not null primary key auto_increment,
    oprema int not null,
    kolicina VARCHAR(50)


);




# definiranje vanjskih ključeva
alter table igrac add foreign key (NBA_team) references NBA_team(sifra);

alter table kosarica add foreign key (oprema) references oprema(sifra);
alter table naruceni_proizvodi add foreign key (kosarica) references kosarica(sifra);

alter table naruceni_proizvodi add foreign key (kupac) references kupac(sifra);

ALTER TABLE oprema add FOREIGN KEY(igrac) REFERENCES igrac(sifra);




 
#insert into TABLE NBA_team (ime_kluba, trener, championships_won, godina1, godina2)
#values ('LA-Lakers', 'Frank-Vogel', '17', '2021-10-19', '2022-04-10'),                   #1 LA-Lakers      #Western
    --    ('Pheonix-suns', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),              #2 Pheonix
    --    ('Golden-state-wariors', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),      #3 Golden state
    --    ('Dallas-Maverics', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),           #4 Dallas
    --    ('Huston-rockets', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),            #5 Huston
    --    ('LA-Clipers', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),                #6 Clipers
    --    ('Memphis-Grizzlies', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #7 Memphis
    --    ('San-Antoni-Spurs', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),          #8 San Antonio
    --    ('Oklahoma-City-Thunder', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),     #9 Oklahoma
    --    ('New-Orleans-Pelicans', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),      #10 Pelicans
    --    ('Denver-Nugets', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),             #11 Denver
    --    ('Portlands-Trailblaizers', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),   #12 Portland
    --    ('Sacramento-Kings', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),          #13 Sacramento
    --    ('Utah-Jazz', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),                 #14 utah
    --    ('Minesota-Timberwolves', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),     #15Minesota     # western


    --    ('Miami-Heat', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),            #16 Miami     # EAST  
    --    ('Boston-Celtis', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #17 Boston  
    --    ('Milwakee-Bucs', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #18 Milwakee
    --    ('Brookly-Nets', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),          #19 Brooklyn
    --    ('Chikago-Bulls', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #20 Bulls
    --    ('Washington-wizards', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),    #21 Washington
    --    ('Orlando-Magic', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #22 Orlando
    --    ('Atlanta-Hawks', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),         #23 Atlanta
    --    ('Pheonix-suns', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),          #24 Pheonix
    --    ('Toronto-Raptors', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),       #25 Toronto
    --    ('Detroit-Pistons', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),       #26 Detroit
    --    ('NY-knicks', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),             #27 Knicks
    --    ('Charlotte-Hornets', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),     #28 Charlotte
    --    ('Pheonix-suns', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),          #29 Pheonix
    --    ('Indiana-Pacers', 'Monty-Williams', '0', '2021-10-19', '2022-04-10'),        #30 indiana
    --    ('Philladelphia-76ers', 'Monty-Williams', '0', '2021-10-19', '2022-04-10');   #31 Philadelphia 76    #EAST






