use frizerski_saloni;

select * from djelatnice;

insert into djelatnice(ime,prezime,oib,iban)
values ('Petra','Novković',null,null);

insert into djelatnice(ime,prezime,oib,iban)
values ('Marija','Petrović',null,null);

insert into djelatnice(ime,prezime,oib,iban)
values ('Kristina','Lukić',null,null);

insert into djelatnice(ime,prezime,oib,iban)
values ('Mia','Njegović',null,null);

insert into djelatnice(ime,prezime,oib,iban)
values ('Dorotea','Dragović',null,null);


select * from korisnici;

insert into korisnici( ime, prezime, oib, br_tel)
values ('Tea', 'Mišković',null,'+385924777859');

insert into korisnici( ime, prezime, oib, br_tel)
values ('Dara', 'Lebac',null,'+385914458900');

insert into korisnici( ime, prezime, oib, br_tel)
values ('Đurđa', 'Žetin',null,'+385978554203');

insert into korisnici( ime, prezime, oib, br_tel)
values ('Leontina', 'Branš',null,'+38595587145');



select * from usluge;

insert into usluge(opis,cijena)
values ('šišanje', 50);

insert into usluge(opis,cijena)
values ('pramenovi', 90);

insert into usluge(opis,cijena)
values ('balayage', 100);

insert into usluge(opis,cijena)
values ('pranje/feniranje', 30);

insert into usluge(opis,cijena)
values ('bojanje', 80);
