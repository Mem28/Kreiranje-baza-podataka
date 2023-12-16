use klub_citatelja;

select*from citatelji;

insert into citatelji(ime,prezime,oib)
values ('Matija', 'Perkovic',null);

insert into citatelji (ime,prezime,oib)
values ('Suzana','Bulić',null);

insert into citatelji(ime,prezime,oib)
values ('Dušan','Savić',null);

insert into citatelji(ime,prezime,oib)
values ('Luka','Duković',null);

insert into citatelji(ime,prezime,oib)
values ('Franjo','Dakić',null);



select * from knjige;

insert into knjige(naziv,autor,sifra)
values ('Kula tmine I - revolveraš', 'Stephen King', null);

insert into knjige(naziv,autor,sifra)
values ('Kemičarka', 'Stephenie Meyer', null);

insert into knjige(naziv,autor,sifra)
values ('Gost iznenađenja', 'Nita Prose', null);

insert into knjige(naziv,autor,sifra)
values ('Svećenik i demoni', 'Robert Nezirović', null);

insert into knjige(naziv,autor,sifra)
values ('Pelagija i crni monah', 'Boris Akunin', null);

insert into knjige(naziv,autor,sifra)
values ('Djevojka u orlovim kanđama', 'Karin Smirnoff', null);

insert into knjige(naziv,autor,sifra)
values ('Dugo putovanje kući', 'Louise Penny', null);

insert into knjige(naziv,autor,sifra)
values ('Mreža šapata', 'Chandler Baker', null);



insert into citatelji(ime,prezime,oib)
values ('Žarko','Mišković',null);
