drop database ponavljanjepp23;
create database ponavljanjepp23;

create table osoba (
	sifra int not null primary key auto_increment,
	ime varchar (30) not null,
	prezime varchar(40) not null,
	rodjenje datetime
);

create table sat (
	sifra int not null primary key auto_increment,
	naziv varchar(30) not null,
	model varchar(50) not null,
	cijena decimal(18,2) not null,
	osoba int not null
);

alter table sat add foreign key (osoba) references osoba (sifra);

#Martina O'hara rođena 7.12.1979

insert osoba (ime,prezime,rodjenje) values
('Matina','O''hara','1979-12-07');

select * from osoba;
update osoba set ime = 'Martina' where sifra = 1;

insert into osoba (ime,prezime) values
('Josip','Jurčević'), ('Marko','Marulić');

#Martina ima 2 sata (bilo koji)
#Josip ima 1 sat
#Marko nema sat

insert into sat (naziv,model,cijena,osoba) values
('rolex','rol123',100.00,1),
('armani','arm321',150.00,1),
('casio','cas321',100.00,2);

select * from sat;

select osoba,naziv,model from sat;


select a.ime,a.prezime,b.naziv,b.model
from osoba a 
inner join sat b on a.sifra = b.osoba;

#obriši martinu o'hara
select * from osoba;

delete from osoba where sifra = 1;

select * from sat;

delete from sat where osoba = 1;






