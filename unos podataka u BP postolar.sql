use postolari;

select * from korisnici;

insert into korisnici(ime,prezime,br_tel)
values ('Andrej' ,'Bulić', null);

insert into korisnici(ime,prezime,br_tel)
values ('Petar' ,'Vojnović', null);

insert into korisnici(ime,prezime,br_tel)
values ('Žarko' ,'Milelj', null);

insert into korisnici(ime,prezime,br_tel)
values ('Duško' ,'Kesić', null);

insert into korisnici(ime,prezime,br_tel)
values ('Tatjana' ,'Depron', null);

insert into korisnici(ime,prezime,br_tel)
values ('Lidija' ,'Stivan', null);


select * from obuce;

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('tenisice','Nike',48);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('tenisice','Adidas',43);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('čizme','Steve Madden',38);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('čizme','Buffalo',39);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('niske cipele','Karl Lagerfeld',37);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('gležnjaće','S Oliver', 38);

insert into obuce(vrsta_obuce,proizvodac,br_obuce)
values('salonke','Guess',36);



select * from popravci;

insert into popravci(opis,cijena)
values ('promjena potpetice',30);


insert into popravci(opis,cijena)
values ('ljepljenje',20);


insert into popravci(opis,cijena)
values ('bojanje',25);


insert into popravci(opis,cijena)
values ('izrada novih tabanica',30);


insert into popravci(opis,cijena)
values ('promjena tumpli',35);


insert into popravci(opis,cijena)
values ('presvlaka peta',30);


select * from segrti;

insert into segrti(ime,prezime,oib,iban)
values ('Leo', 'Pekić',null,null);

