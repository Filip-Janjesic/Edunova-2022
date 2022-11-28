select * from smjer;

update smjer set trajanje=130
where sifra=1;

update smjer set trajanje=130, certifikat= true
where sifra=2;

#mjenja sve
#update smjer set naziv='Pero'

update smjer set cijena=1000
where sifra=1;

update smjer set cijena=cijena*0.9;

update smjer set cijena=cijena*1.1;

#ne prolazi
#update grupa set smjer=99;
select * from osoba;

insert into osoba (ime,prezime) values
('filip','janjesic'),('1','2'),('3','4');

delete from osoba where sifra >19;