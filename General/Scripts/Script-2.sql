# ljestve (hash) je komentar i on se ne izvodi
# Izvođenje naredbi na serveru
# Otvoriti CMD
# Zaljepiti sljedeću naredbu bez prvog hash znaka
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Filip\Documents\Edunova-2022\Vjezba4\vjezba4.sql

drop database if exists vjezba4;
create database vjezba4 default charset utf8;;
use vjezba4;

create table izlozba (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    ime_umjetnika varchar (50) not null,
    sponzor int not null
);

create table kustos (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    izlozba int not null

);

create table sponzor (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null
);

alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table kustos add foreign key (izlozba) references izlozba(sifra);