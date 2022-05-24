# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Filip\Documents\Zarsni_rad_PP25_filip\zarsni_rad\NBA_shop.sql

drop database if exists NBA_shop;
create database NBA_shop default charset utf8mb4;
use NBA_shop;
create table nba_team(
    sifra int not null primary key auto_increment,
    ime_kluba varchar(50),
    trener VARCHAR(50),
    championships_won varchar(50),
    stadion VARCHAR(50)
);

create table igrac(
    sifra int not null primary key auto_increment,
    nba_team int not null,
    ime varchar(20) not null,
    prezime VARCHAR(20)not null,
    rings_count VARCHAR(50)
);

    


create table Kupac(
    sifra int not null primary key auto_increment,
    ime VARCHAR(50), 
    prezime varchar(50),
    email VARCHAR(50)

);

create table oprema (
    sifra int not null primary key auto_increment,
    velicina VARCHAR(50),
    boja VARCHAR(50),
    tezina VARCHAR(50),
    igrac int not null,
    cijena INT,
    tezina_proizvoda DECIMAL,
    vrsta_proizvoda VARCHAR(20) not null
    
    
    
);

create table naruceni_proizvodi (
    sifra int not null primary key auto_increment,
    kosarica int not null,
    kupac int not null
    
);


    
create table kosarica(
    sifra int not null primary key auto_increment,
    oprema int not null,
    ukupna_tezina_proizvoda decimal,
    ukupna_cijena_proizvoda int,
    datum_isporuke datetime,
    kolicina_opreme VARCHAR(50)


);




# definiranje vanjskih ključeva
alter table igrac add foreign key (nba_team) references nba_team(sifra);

alter table kosarica add foreign key (oprema) references oprema(sifra);
alter table naruceni_proizvodi add foreign key (kosarica) references kosarica(sifra);

alter table naruceni_proizvodi add foreign key (kupac) references kupac(sifra);

ALTER TABLE oprema add FOREIGN KEY(igrac) REFERENCES igrac(sifra);




 insert into nba_team (sifra, ime_kluba, trener, championships_won, stadion)
 values (null,'LA-Lakers','Frank-Vogel', '17', 'Crypto.com_Arena' ),                  #1 LA-Lakers      #Western
        (null,'Pheonix-Suns', 'Monty-Wiliams', '0', 'Footprint-Center'),              #2 Pheonix
        (null,'Golden-State', 'Steve-Kerr', '6', 'Chase-Center'),                     #3 Golden state
        (null,'Dallas-Maverics', 'Jason-Kid', '1', 'American-Airlines'),              #4 Dallas
        (null,'Huston-Rockets', 'Stephen-Silas', '2', 'Toyota-Center'),               #5 Huston
        (null,'La-Clipers', 'Tyronn-Lue', '0', 'Crypto.com_Arena'),                   #6 Clipers
        (null,'Memphis-Grizzlies','Taylor-Jenkins', '0', 'FedExForum'),               #7 Memphis
        (null,'San_Antonio-Spurs', 'Gregg-Popovich', '5', 'AT&T-Center'),             #8 San Antonio
        (null, 'Oklahoma-City-Thunder', 'Mark Daigneault', '1', 'Paycom-Center'),      #9 Oklahoma
        (null,'New-Orleans-Pelicans','Willie Green','0', 'Smoothie-King-Center'),     #10 Pelicans
        (null,'Denver-Nugets', 'Michael-Malone', '0', 'Ball Arena'),                  #11 Denver
        (null, 'Portlands-Trailblaizers', 'Chauncey_Billups', '1', 'Moda Center'),     #12 Portland
        (null, 'Sacramento-Kings','Mike-Brown', '1','Golden-1-Center'),                #13 Sacramento
        (null,'Utah-Jazz','Quin Snyder', '0', 'Vivint-Arena'),                        #14 utah
        (null, 'Minesota-Timberwolves', 'Chris-Finch', '0', 'Target-Center');          #15Minesota     # western


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






