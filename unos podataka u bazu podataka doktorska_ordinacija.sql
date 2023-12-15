use doktorske_ordinacije;

select * from doktori;

insert into doktori(ime,prezime,oib,iban)
values ('Martin','Đoković',null,null);

insert into doktori(ime,prezime,oib,iban)
values ('Leontina','Pokos',null,null);

insert into doktori(ime,prezime,oib,iban)
values ('Petar', 'Martinović',null,null);

insert into doktori(ime,prezime,oib,iban)
values ('Žarko','Bulat',null,null);

insert into doktori(ime,prezime,oib,iban)
values ('Danijela','Lazić',null,null);

insert into doktori(ime,prezime,oib,iban)
values ('Andrea','Pašalić',null,null);


select * from medicinske_sestre;

insert into medicinske_sestre(ime,prezime,oib,iban)
values ('Lara', 'Lukas',null,null);


insert into  medicinske_sestre(ime,prezime,oib,iban)
values ('Monika', 'Dokić',null,null);


insert into  medicinske_sestre(ime,prezime,oib,iban)
values ('Anđela','Ančić',null,null);


insert into  medicinske_sestre(ime,prezime,oib,iban)
values ('Mirjana','Bulat',null,null);



select * from pacijenti;

insert into  pacijenti(ime,prezime,oib,br_tel)
values ('Suzana','Bulić',null,null);

insert into  pacijenti(ime,prezime,oib,br_tel)
values ('Dušan','Savić',null,null);

insert into  pacijenti(ime,prezime,oib,br_tel)
values ('Luka','Duković',null,null);

insert into  pacijenti(ime,prezime,oib,br_tel)
values ('Franjo','Dakić',null,null);

insert into  pacijenti(ime,prezime,oib,br_tel)
values ('Žarko','Mišković',null,null);
