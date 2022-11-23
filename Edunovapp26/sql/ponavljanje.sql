# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Filip\Documents\Edunova-2022\Edunovapp26\sql\ponavljanje.sql

drop database if exists vinsert;
create database vinsert default charset utf8;
use vinsert;

create table dokument(
    sifra int not null primary key auto_increment,
    datum datetime not null,
    opis varchar(50) not null,
    aktivan int not null
);

insert into dokument (datum,opis,aktivan) values
('2022-11-07 19:00:00','Opis',true);