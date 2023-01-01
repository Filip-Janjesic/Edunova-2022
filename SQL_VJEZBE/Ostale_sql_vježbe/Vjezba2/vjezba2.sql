drop database if exists vjezba2;
create database vjezba2;
use vjezba2;

create table sudjeluje(
    projekt int,
    programer int,
    datumpocetka datetime,
    datumkraja datetime
);

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    cijena dec(18,2)
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datumrodjenja datetime,
    plaća dec(18,2)
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);