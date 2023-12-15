use djecji_vrtici;


select * from djeca;

insert into djeca(ime,prezime,oib)
values ('Tanja','Marić', null);

insert into djeca(ime,prezime,oib)
values ('Lana','Sokol', null);

insert into djeca(ime,prezime,oib)
values ('Mia','Perić', null);

insert into djeca(ime,prezime,oib)
values ('Luka','Petrošević', null);

insert into djeca(ime,prezime,oib)
values ('Kruno','Marić', null);

insert into djeca(ime,prezime,oib)
values ('Tin','Bošković', null);



select * from odgajateljice;

insert into odgajateljice(ime,prezime,oib,iban)
values ('Sonja','Lukas',null,null);

insert into odgajateljice(ime,prezime,oib,iban)
values ('Dunja','Badrić',null,null);

insert into odgajateljice(ime,prezime,oib,iban)
values ('Mishelle','Popov',null,null);

insert into odgajateljice(ime,prezime,oib,iban)
values ('Aleksandra','Damjanić',null,null);

insert into odgajateljice(ime,prezime,oib,iban)
values ('Kristina','Sinjanin',null,null);

select * from odgojne_skupine;

insert into odgojne_skupine(naziv)
values ('OS1');

insert into odgojne_skupine(naziv)
values ('OS2');

insert into odgojne_skupine(naziv)
values ('OS3');

insert into odgojne_skupine(naziv)
values ('OS4');

insert into odgojne_skupine(naziv)
values ('OS5');


select * from strucne_spreme;

insert into strucne_spreme(naziv)
values ('VSS');

insert into strucne_spreme(naziv)
values ('VSS');

insert into strucne_spreme(naziv)
values ('VSS');

insert into strucne_spreme(naziv)
values ('VSS');

insert into strucne_spreme(naziv)
values ('VSS');