use djecja_igraonica;
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


select * from djeca_skupine;

insert into djeca_skupine(djeca_id,skupine_id)
values (null,null);

insert into djeca_skupine(djeca_id,skupine_id)
values (null,null);

insert into djeca_skupine(djeca_id,skupine_id)
values (null,null);

insert into djeca_skupine(djeca_id,skupine_id)
values (null,null);



select * from skupine;

insert into skupine(naziv,broj_djece)
values ('Animino', 30);

insert into skupine(naziv,broj_djece)
values ('Bambino', 25);

insert into skupine(naziv,broj_djece)
values ('Delfino', 20);

insert into skupine(naziv,broj_djece)
values ('', 30);

insert into skupine(naziv,broj_djece)
values ('Hrvograd', 19);


select * from tete;

insert into tete(ime,prezime,oib)
values ('Sonja','Lukas',null);

insert into tete(ime,prezime,oib)
values ('Dunja','Badrić',null);

insert into tete(ime,prezime,oib)
values ('Mishelle','Popov',null);

insert into tete(ime,prezime,oib)
values ('Aleksandra','Damjanić',null);

insert into tete(ime,prezime,oib)
values ('Kristina','Sinjanin',null);
