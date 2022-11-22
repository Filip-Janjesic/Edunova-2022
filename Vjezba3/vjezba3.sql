# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Filip\Documents\Edunova-2022\Vjezba3\vjezba3.sql


drop database if exists vjezba3;
create database vjezba3 default charset utf8;;
use vjezba3;

create table autor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodjenja datetime
);

create table izdavac(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    postanskibroj varchar(10) not null,
    drzava varchar(50) not null
);

create table katalog(
    sifra int not null primary key auto_increment,
    naslov varchar(50) not null,
    autor int not null,
    izdavac int not null,
    mjesto int not null
);


alter table katalog add foreign key (autor) references autor(sifra);
alter table katalog add foreign key (izdavac) references izdavac(sifra);
alter table katalog add foreign key (mjesto) references mjesto(sifra);