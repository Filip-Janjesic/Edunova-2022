# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Filip\Documents\Edunova-2022\Kolokvij_vjezba_2\kolokvij_vjezba_2.sql

drop database if exists kolokvij_vjezba_2;
create database kolokvij_vjezba_2;
use kolokvij_vjezba_2;

create table decko_zarucnica (
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table decko (
    sifra int not null primary key auto_increment,
    indiferentno bit,
    vesta varchar(34),
    asocijalno bit
);

create table zarucnica (
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakosa varchar (37),
    novcica decimal (15,9),
    lipa decimal (15,8),
    indiferentno bit
);