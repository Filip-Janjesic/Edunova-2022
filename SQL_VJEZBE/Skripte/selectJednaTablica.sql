

# prošli puta radili
select * from smjer;

# minimalni select
select 1;

# FILTRIRANEJ KOLONA - select lista

# 1. * daje sve kolone
select * from smjer;

# 2. nazivi kolona odvojeno zarezom
select naziv, cijena from smjer;
select naziv,cijena,naziv from smjer;

select *, naziv from smjer;

# 3. konstanta
select naziv, 500, 'Osijek' from smjer;

# koloni se može dati zamjensko ime
select naziv as smjer, 500 as broj
from smjer;

# 4. izraz

select naziv, 
rand() as koeficijent from smjer;


# izlistajte imena i prezimena osoba

select ime, prezime from osoba;

# izlistajte trenutni datum i vrijeme
select now();






