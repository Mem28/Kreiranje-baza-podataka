
use master;
go
drop database if exists kozmetickisaloni;
go
create database kozmetickisaloni;
use master;
go
use kozmetickisaloni;


create table djelatnice(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
oib char(11),
iban varchar(40),
);
create table usluge(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(5,2)
);
create table korisnici(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
br_tel varchar(50),
usluge_id int,
djelatnice_id int
);


alter table korisnici add foreign key(usluge_id) references usluge(id);
alter table korisnici add foreign key(djelatnice_id) references djelatnice(id);



use master;
go
drop database if exists udrugezzz;
go
create database udrugezzz;
use master;
go
use udrugezzz
;
create table osobe(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
oib char(11),
iban varchar(40),
);
create table prostori(
id int not null primary key identity(1,1),
sifra int not null);

create table sticenici(
id int not null primary key identity(1,1) ,
naziv varchar(50) not null,
sifra int not null,
prostori_id int,
osobe_id int
);

alter table sticenici add foreign key(prostori_id) references prostori(id);
alter table sticenici add foreign key(osobe_id) references osobe(id);


use master;
go
drop database if exists djecjivrtici;
go
create database djecjivrtici;
use master;
go
use djecjivrtici;

create table djeca(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
oib char(11),
odgojne_skupine_id int
);
create table strucne_spreme(
id int not null primary key identity(1,1),
naziv varchar(40) not null
);
create table odgajateljice(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
oib char(11),
iban char(40),
strucne_spreme_id int
);
create table odgojne_skupine(
id int not null primary key identity(1,1),
naziv varchar (40) not null,
odgajateljice_id int
);

alter table odgojne_skupine add foreign key (odgajateljice_id) references odgajateljice(id);
alter table odgajateljice add foreign key (strucne_spreme_id) references strucne_spreme(id);
alter table djeca add foreign key (odgojne_skupine_id) references odgojne_skupine(id);






use master;
go
drop database if exists muzeji;
go
create database muzeji;
use master;
go
use muzeji;

create table djela(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
izlozbe_id int
);

create table kustosi(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
iban varchar(40),
izlozbe_id int
);
create table izlozbe(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
sponzori_id int
);
create table sponzori(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
broj_tel varchar(40)
);

alter table izlozbe add foreign key (sponzori_id) references sponzori(id);
alter table kustosi add foreign key (izlozbe_id) references izlozbe(id);
alter table djela add foreign key (izlozbe_id) references izlozbe(id);






use master;
go
drop database if exists samostani;
go
create database samostani;
use master;
go
use samostani;
create table poslovi(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
opis varchar(50),
svecenici_id int
);
create table nadredeni(
id int primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11)
);
create table svecenici(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
nadredeni_id int,
poslovi_id int
);
create table svecenici_poslovi(
id int not null primary key identity(1,1),
svecenici_id int,
poslovi_id int
);

alter table svecenici add foreign key (nadredeni_id) references nadredeni(id);
alter table svecenici add foreign key (poslovi_id) references svecenici_poslovi(id);
alter table poslovi add foreign key (svecenici_id) references svecenici_poslovi(id);





use master;
go
drop database if exists taxisluzbe
go
create database taxisluzbe;
use master;
go
use taxisluzbe;

create table vozila(
id int not null primary key identity(1,1),
model varchar(40),
vozaci_id int
);
create table putnici(
id int not null primary key identity(1,1),
ime varchar(40) not null,
przime varchar(40) not null,
broj_tel varchar(50),
vozaci_id int
);
create table vozaci(
id int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
oib char(11),
iban varchar(40),
putnici_id int,
vozila_id int
);
create table voznje(
id int not null primary key identity(1,1),
putnici_id int,
vozaci_id int
);
alter table vozaci add foreign key (putnici_id) references voznje(id);
alter table putnici add foreign key (vozaci_id) references voznje(id);
alter table vozila add foreign key (vozaci_id) references vozaci(id);
alter table vozaci add foreign key (vozila_id) references vozila(id);





use master;
go
drop database if exists postolari;
go
create database postolari;
use master;
go
use postolari;

create table obuce(
id int not null primary key identity(1,1),
vrsta_obuce varchar(40) not null,
proizvodac varchar (50),
br_obuce int,
korisnici_id  int,
popravci_id int
);
create table korisnici(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
br_tel varchar(50),
obuce_id int
);
create table segrti(
id int not null primary key identity(1,1),
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
iban varchar(40)
);
create table popravci(
id int not null primary key identity(1,1),
opis varchar(100),
cijena decimal(5,2),
segrti_id int,
obuce_id int
);
create table obuce_popravci(
id int not null primary key identity(1,1),
obuce_id int,
popravci_id int
);

alter table popravci add foreign key (segrti_id) references segrti(id);
alter table popravci add foreign key (obuce_id) references obuce_popravci(id);
alter table obuce add foreign key (popravci_id) references obuce_popravci(id);
alter table obuce add foreign key (korisnici_id) references korisnici(id);
alter table korisnici add foreign key (obuce_id) references obuce(id);







use master;
go
drop database if exists urarsilvija;
go
create database urarsilvija;
use master;
go
use urarsilvija;

create table satovi(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
korisnici_id int,
popravci_id int
);
create table korisnici(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
br_tel varchar(50),
);
create table segrti(
id int not null primary key identity(1,1),
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
iban varchar(40)
);
create table popravci(
id int not null primary key identity(1,1),
cijena decimal(5,2),
segrti_id int,
satovi_id int
);
create table satovi_popravci(
id int not null primary key identity(1,1),
satovi_id int,
popravci_id int
);

alter table popravci add foreign key (segrti_id) references segrti(id);
alter table popravci add foreign key (satovi_id) references satovi_popravci(id);
alter table satovi add foreign key (popravci_id) references satovi_popravci(id);
alter table satovi add foreign key (korisnici_id) references korisnici(id);










use master;
go
drop database if exists doktorskaordinacija;
go
create database doktorskaordinacija;
use master;
go
use doktorskaordinacija;

create table doktori(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
iban varchar(40),

);
create table pacijenti(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
br_tel varchar(50),
doktori_id int,
medicinske_sestre_id int
);
create table medicinske_sestre(
id int not null primary key identity(1,1),
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
iban varchar(40),
);



alter table pacijenti add foreign key (medicinske_sestre_id) references medicinske_sestre(id);
alter table pacijenti add foreign key (doktori_id) references doktori(id);







use master;
go
drop database if exists fakulteti;
go
create database fakulteti;
use master;
go
use fakulteti;

create table kolegiji(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
rokovi_id int
);
create table studenti(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
br_tel varchar(50),
rokovi_id int
);
create table rokovi(
id int not null primary key identity(1,1),
datum datetime,
studenti_id int
);
create table rokovi_studenti(
id int not null primary key identity(1,1),
rokovi_id int,
studenti_id int
);



alter table rokovi add foreign key (studenti_id) references rokovi_studenti(id);
alter table studenti add foreign key (rokovi_id) references rokovi_studenti(id);
alter table kolegiji add foreign key (rokovi_id) references rokovi(id);










use master;
go
drop database if exists osnovne_skole;
go
create database osnovne_skole;
use master;
go
use osnovne_skole;

create table djeca(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
radionice_id int
);
create table uciteljice(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
br_tel varchar(50),
);
create table radionice(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
uciteljice_id int,
djeca_id int
);
create table radionice_djeca(
id int not null primary key identity(1,1),
radionice_id int,
djeca_id int
);



alter table radionice add foreign key (uciteljice_id) references uciteljice(id);
alter table radionice add foreign key (djeca_id) references radionice_djeca(id);
alter table djeca add foreign key (radionice_id) references radionice_djeca(id);






use master;
go
drop database if exists srednje_skole;
go
create database srednje_skole;
use master;
go
use srednje_skole;

create table ucenici(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
razredi_id int
);
create table profesori(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
br_tel varchar(50),
razredi_id int
);
create table razredi(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
broj_ucenika int,
profesori_id int
);
create table razredi_profesori(
id int not null primary key identity(1,1),
razredi_id int,
profesori_id int
);



alter table ucenici add foreign key (razredi_id) references razredi(id);
alter table razredi add foreign key (profesori_id) references razredi_profesori(id);
alter table profesori add foreign key (razredi_id) references razredi_profesori(id);






use master;
go
drop database if exists trgovacki_centri;
go
create database trgovacki_centri;
use master;
go
use trgovacki_centri;

create table osobe(
id int not null primary key identity(1,1),
ime varchar(40) not null,
prezime varchar(40) not null,
oib char(11),
iban varchar(40),
trgovine_id int
);
create table sefovi(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40)not null,
oib char(11),
iban varchar(40)
);
create table trgovine(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
sefovi_id int,
osobe_id int
);
create table trgovine_osobe(
id int not null primary key identity(1,1),
trgovine_id int,
osobe_id int
);



alter table trgovine add foreign key (sefovi_id) references sefovi(id);
alter table trgovine add foreign key (osobe_id) references trgovine_osobe(id);
alter table osobe add foreign key (trgovine_id) references trgovine_osobe(id);







use master;
go
drop database if exists restorani;
go
create database restorani;
use master;
go
use restorani;

create table jelovnici(
id int not null primary key identity(1,1),
sifra int
);
create table pica(
id int not null primary key identity(1,1), 
naziv varchar(40)not null,
cijena decimal (5,2),
jela_id int
);
create table kategorije(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
jelovnici_id int
);
create table jela(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(5,2),
kategorije_id int,
pica_id int
);
create table jela_pica(
id int not null primary key identity(1,1),
jela_id int, 
pica_id int
);



alter table jela add foreign key (kategorije_id) references kategorije(id);
alter table jela add foreign key (pica_id) references jela_pica(id);
alter table pica add foreign key (jela_id) references jela_pica(id);
alter table kategorije add foreign key(jelovnici_id) references jelovnici(id);







use master;
go
drop database if exists opg;
go
create database opg;
use master;
go
use opg;

create table sirovine(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(5,2),
proizvodi_id int
);
create table djelatnici(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40) not null,
oib char(11),
iban varchar(40),
);
create table proizvodi(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal (5,2),
djelatnici_id int,
sirovine_id int
);
create table proizvodi_sirovine(
id int not null primary key identity(1,1),
proizvodi_id int, 
sirovine_id int
);


alter table sirovine add foreign key (proizvodi_id) references proizvodi_sirovine(id);
alter table proizvodi add foreign key (sirovine_id) references proizvodi_sirovine(id);
alter table proizvodi add foreign key(djelatnici_id) references djelatnici(id);






use master;
go
drop database if exists vodoinstalater;
go
create database vodoinstalater;
use master;
go
use vodoinstalater;

create table kvarovi(
id int not null primary key identity(1,1),
opis varchar(50),
sifra int,
popravci_id int
);
create table segrti(
id int not null primary key identity(1,1), 
ime varchar(40)not null,
prezime varchar(40) not null,
oib char(11),
iban varchar(40),
);
create table popravci(
id int not null primary key identity(1,1),
cijena decimal (5,2),
segrti_id int,
kvarovi_id int
);
create table popravci_kvarovi(
id int not null primary key identity(1,1),
popravci_id int, 
kvarovi_id int
);


alter table popravci add foreign key (segrti_id) references segrti(id);
alter table popravci add foreign key (kvarovi_id) references popravci_kvarovi(id);
alter table kvarovi add foreign key(popravci_id) references popravci_kvarovi(id);






use master;
go
drop database if exists nakladnik;
go
create database nakladnik;
use master;
go
use nakladnik;

create table djela(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
sifra int,
nakladnici_id int
);
create table mjesta(
id int not null primary key identity(1,1), 
adresa varchar(40)not null,
sifra int not null
);
create table nakladnici(
id int not null primary key identity(1,1),
naziv varchar (100) not null,
telefon varchar (50),
email varchar (50),
mjesta_id int,
djela_id int
);
drop table nakladnici;
create table nakladnici_djela(
id int not null primary key identity(1,1),
nakladnici_id int, 
djela_id int
);


alter table nakladnici add foreign key (djela_id) references nakladnici_djela(id);
alter table djela add foreign key (nakladnici_id) references nakladnici_djela(id);
alter table nakladnici add foreign key (mjesta_id) references mjesta(id);









use master;
go
drop database if exists kud;
go
create database kud;
use master;
go
use kud;

create table clanovi(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
nastupi_id int
);
create table mjesta(
id int not null primary key identity(1,1), 
zemlja varchar(40)not null,
inozemstvo varchar(40) not null
);
create table nastupi(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
datum datetime,
mjesta_id int,
clanovi_id int
);
create table nastupi_clanovi(
id int not null primary key identity(1,1),
nastupi_id int, 
clanovi_id int
);


alter table nastupi add foreign key (mjesta_id) references mjesta(id);
alter table nastupi add foreign key (clanovi_id) references nastupi_clanovi(id);
alter table clanovi add foreign key (nastupi_id) references nastupi_clanovi(id);









use master;
go
drop database if exists djecja_igraonica;
go
create database djecja_igraonica;
use master;
go
use djecja_igraonica;

create table djeca(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
skupine_id int
);
create table tete(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);
create table skupine(
id int not null primary key identity(1,1),
naziv varchar(40) not null,
broj_djece int,
tete_id int,
djeca_id int
);
create table djeca_skupine(
id int not null primary key identity(1,1),
djeca_id int, 
skupine_id int
);


alter table skupine add foreign key (tete_id) references tete(id);
alter table skupine  add foreign key (djeca_id) references djeca_skupine(id);
alter table djeca add foreign key (skupine_id) references djeca_skupine(id);









use master;
go
drop database if exists klub_citatelja;
go
create database klub_citatelja;
use master;
go
use klub_citatelja;

create table citatelji(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
knjige_id int
);
create table knjige(
id int not null primary key identity(1,1),
naziv varchar(50) not null,
autor varchar(50) not null,
sifra int,
citatelji_id int,
vlasnici_id int
);
create table vlasnici(
id int not null primary key identity,
citatelji_id int
);
create table citatelji_knjige(
id int not null primary key identity(1,1),
citatelji_id int, 
knjige_id int
);


alter table knjige add foreign key (citatelji_id) references citatelji_knjige(id);
alter table knjige  add foreign key (vlasnici_id) references vlasnici(id);
alter table citatelji add foreign key (knjige_id) references citatelji_knjige(id);
alter table vlasnici add foreign key (citatelji_id) references citatelji(id);