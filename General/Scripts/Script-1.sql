# BAZA mjesta
# izlistati sva mjesta iz Osječko baranjske županije
select * from mjesto;

select * from mjesto where naziv='Osijek';

select * from mjesto where zupanija = '14';

select * from mjesto where postanskibroj like '31%';


# BAZA edunovapp26
# Unestite novog predavač Shaquille O'Neal   shaki@gmail.com
insert into osoba (ime,prezime,email) 
values ('Shaquill','O''Neal','shaki@gmail.com');

select * from osoba;


# BAZA mjesta
# Koliko mjesta u hrvatskoj bi bili pobjednici igre kaladont?
select * from mjesto where naziv like 'nt%';

# Baza Knjižnica
# Izlistajte sve autore koji su rođeni 1980 godine
select * from  autor where datumrodenja between '1980-01-01' and '1980-12-31';
# Dečka je ostavila cura, jadan pati što bi mu preporučili za čitanje
select * from  katalog where naslov like '%ljubav%' and sifra in (2660,2879,2938);
# Izlistajte sve izdavače koji su društvo s ograničenom odgovornošću
select * from izdavac where naziv like '%d.o.o%';
# Obrišite sve kataložne zapise koji govore o smrti
select * from katalog where naslov like '%smrt%';

delete from katalog where naslov like '%smrt%';

# unesite sebe kao autora
insert into autor (ime,prezime,datumrodenja)
values ('Filip','Janjesic','1994-05-17');

select * from  autor where prezime = 'Janjesic';
