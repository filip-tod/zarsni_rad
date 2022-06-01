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
    igrac int not null,
    cijena decimal(18,2),
    tezina_proizvoda VARCHAR(50),
    vrsta_proizvoda VARCHAR(50) not null
    
    
    
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
        (null, 'Oklahoma-City-Thunder', 'Mark Daigneault', '1', 'Paycom-Center'),     #9 Oklahoma
        (null,'New-Orleans-Pelicans','Willie Green','0', 'Smoothie-King-Center'),     #10 Pelicans
        (null,'Denver-Nugets', 'Michael-Malone', '0', 'Ball Arena'),                  #11 Denver
        (null, 'Portlands-Trailblaizers', 'Chauncey_Billups', '1', 'Moda Center'),    #12 Portland
        (null, 'Sacramento-Kings','Mike-Brown', '1','Golden-1-Center'),               #13 Sacramento
        (null,'Utah-Jazz','Quin Snyder', '0', 'Vivint-Arena'),                        #14 utah
        (null, 'Minesota-Timberwolves', 'Chris-Finch', '0', 'Target-Center'),         #15Minesota     # western


       (null,'Miami-Heat', 'Erik-Spoelstra', '3', 'FTX-Arena'),                      #16 Miami     # EAST  
       (null,'Boston-Celtis', 'Ime-Udoka', '17', 'TD-Garden'),                        #17 Boston  
       (null,'Milwakee-Bucs', 'Mike-Budenholzer', '2', 'Fiserv Forum'),              #18 Milwakee
       (null,'Brookly-Nets', 'Steve-Nash', '0', 'Barclays-Center'),                  #19 Brooklyn
       (null,'Chikago-Bulls', 'Billy-Donovan', '6', 'United-CEnter'),                #20 Bulls
       (null,'Washington-wizards', 'Wes-Unseld-Jr.', '1', 'Capital-One'),            #21 Washington
       (null,'Orlando-Magic', 'Jamahl-Mosley', '0', 'Amway-Center'),                  #22 Orlando
       (NULL,'Atlanta-Hawks', 'Nate-McMillan', '1', 'State-Farm-Arena'),             #23 Atlanta
       (null,'Toronto-Raptors', 'Nick-Nurse', '1', 'Scotiabank-Arena'),              #24 Toronto
       (null,'Detroit-Pistons', 'Dwane-Casey', '3', 'Little-Caesars-Arena'),          #25 Detroit
       (null,'NY-knicks', 'Tom-Thibodeau', '2', 'Madison-Square-Garden'),             #26 Knicks
       (null,'Charlotte-Hornets', 'James-Borrego', '0','Spectrum-Center' ),          #27 Charlotte
       (null,'Cleveland-Cavaliers', 'Kevin-Stefanski', '1','Rocket-Mortgage-FieldHouse' ),  #28 Cleveland
       (null,'Indiana-Pacers', 'Rick-Carlisle', '0', 'Gainbridge-Fieldhouse'),       #29 indiana
       (null,'Philladelphia-76ers', 'Doc-Rivers', '3', 'Wells-Fargo-Center');        #30 Philadelphia 76    #EAST

# IGRAČ

insert into igrac ( sifra, ime, prezime, rings_count, nba_team)
values            (null,'LeBron', 'James', '4', 1 ),
                  (null,'Russel', 'Westbrook', '0', 1),
                  (null, 'Anthony', 'Davis', '1', 1),         #Lakers   1
                  (null, 'Chris', 'Paul', '0', 2),
                  (null, 'Devin', 'Booker', '0', 2),
                  (null, 'Jae', 'Crowder', '0', 2),          #Pheonix  2
                  (null, 'Steph', 'Curry', '3', 3),
                  (null, 'Klay', 'Thompson', '3', 3 ),
                  (null, 'Draymond', 'Green', '3', 3 ),      # Golden 3
                  (null, 'Luka', 'Dončić', '0', 4),
                  (null, 'Tim', 'Hardaway-JR.', '0', 4),
                  (null,'Trey', 'Burke', '0', 4),            #Dalas 4
                  (null, 'Jhon', 'Wall', '0', 5),
                  (null, 'Jalen', 'Green', '0', 5),
                  (null, 'Kevin', 'Porter-JR.', '0', 5),    #Huston 5
                  (null, 'Khawi', 'Leonard', '2', 6),
                  (null, 'Paul', 'George', '0', 6),
                  (null, 'Marcus', 'Morris', '0', 6),   # Clipers 6   
                  (null, 'Ja', 'Morant', '0', 7),
                  (null, 'Steven', 'Adams', '0', 7),
                  (null, 'Dillon', 'Brooks', '0', 7),     #Memphis 7      
                  (null, 'Dejounte', 'Murray', '0', 8),
                  (null, 'Loonie', 'Walker', '0', 8),
                  (null, 'Jakob', 'Poeltl', '0', 8),    # SAN Antonio 8
                  (null, 'Josh', 'Giddey', '0', 9),
                  (null, 'Shai', 'Gilgeus-Alexander', '0', 9),
                  (null, 'Tre', 'Mann', '0', 9),        #Oklahoma 9
                  (null, 'Brandon', 'ingram', '0', 10),
                  (null, 'CJ', 'McCollum', '0', 10), 
                  (null, 'Zion', 'Williamson', '0', 10), #Pelicans 10
                  (null, 'Nikola', 'Jokić', '0', 11),
                  (null, 'Jamal', 'Murray', '0', 11),
                  (null, 'Aaron', 'Gordon', '0', 11),  #Denver 11
                  (null, 'Damian', 'Lillard', '0', 12),
                  (null, 'Anfernee', 'Simons', '0', 12),
                  (null, 'Jusuf', 'Nurkić', '0', 12),    #Portland 12
                  (null, "De'Aron", 'Fox', '0',13),
                  (null, 'Domantas', 'Sabonis', '0',13),
                  (null, 'Donte', 'DiVincenzo', '1', 13),  #Kings 13
                  (null, 'Bojan', 'Bogdanović', '0', 14),
                  (null, 'Rudy', 'Gobert', '0', 14),
                  (null, 'Donovan', 'Mitchell', '0', 14),    #UTAH 14
                  (null, 'Karl-Anthony', 'Towns', '0', 15),
                  (null, 'Anthony', 'Edwards', '0',15),
                  (null, "D'Angelo", 'Russel', '0', 15),    #Minesota 15 <<<<WEST>>>>

                  ### EAST igrači #### nadopuniti


                  (null, 'Jimmy', 'Butler', '0', 16),
                  (null, 'Bam', 'Adebayo', '0', 16),
                  (null, 'Tyler', 'Hero', '0', 16),       #Miami 16
                  (null, 'Jason', 'Tatum', '0', 17),
                  (null, 'Marcus', 'Smart', '0', 17),   #Boston 17
                  (null, 'Jaylen', 'Brown', '0', 17),
                  (null, 'Gianis', 'Antetokumpo', '1', 18),
                  (null, 'Chris', 'Midelton', '1', 18),
                  (null, 'Jrue', 'holiday', '1', 18);
                --   (null, 'Kevin', 'Durant', '')
#Oprema
INSERT into oprema (sifra,vrsta_proizvoda, igrac, boja, velicina, tezina_proizvoda, cijena )
values             (null,'košarkaški-Dres', 1, 'Žuto-Ljubičasta', 'XL', '300g', '499.99'),
                   (null,'košarkaški-Dres', 1, 'Žuto-Ljubičasta', 'L', '250g', '499.99'),
                   (null,'hlaćice', 1, 'Žuto-Ljubičasta', 'L', '150g', '399.99'),
                   (null,'štitnici', 1, 'Žuto-Ljubičasta', 'L', '50g', '150.99'),
                   (null,'košarkaški-Dres', 2, 'Žuto-Ljubičasta', 'XL', '300g', '499.99'),
                   (null,'košarkaški-Dres', 2, 'Žuto-Ljubičasta', 'M', '250g', '499.99'),
                   (null,'košarkaški-Dres', 2, 'Žuto-Ljubičasta', 'S', '200g', '499.99'),
                   (null,'hlaćice', 2, 'Žuto-Ljubičasta', 'XL', '150g', '399.99'),
                   (null,'Štitnici', 1, 'Žuto-Ljubičasta', 'L', '100g', '250.99'),
                   (null,'košarkaški-Dres', 3, 'Žuto-Ljubičasta', 'XL', '300g', '499.99'),
                   (null,'košarkaški-Dres', 3, 'Žuto-Ljubičasta', 'L', '300g', '499.99'),
                   (null,'košarkaški-Dres', 3, 'Žuto-Ljubičasta', 'M', '200g', '499.99'),
                   (null,'hlaćice', 3, 'Žuto-Ljubičasta', 'L', '150g', '350.99');


    