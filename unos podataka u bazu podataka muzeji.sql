use muzeji;

select *from djela;

insert into djela(naziv)
values('The Luncheon On The Grass');

insert into djela(naziv)
values('The Pont Du Gard');

insert into djela(naziv)
values('Cardsharps');

insert into djela(naziv)
values('Odalisque');

insert into djela(naziv)
values('Barge Haulers On The Volga');

select * from izlozbe;

insert into izlozbe(naziv)
values ('Yves Saint Laurent aux Musées');

insert into izlozbe(naziv)
values ('The World of Stonehenge');

insert into izlozbe(naziv)
values ('Faith Ringgold: American People');

insert into izlozbe(naziv)
values ('Donatello: the Renaissance');

insert into izlozbe(naziv)
values ('150 years of Mondrian');



select * from kustosi;

insert into kustosi(ime,prezime,oib,iban)
values ('Mouna', 'Mekouar', null,null);

insert into kustosi(ime,prezime,oib,iban)
values ('Jennifer',' Wexler', null,null);

insert into kustosi(ime,prezime,oib,iban)
values ('Massimiliano', 'Giani', null,null);

insert into kustosi(ime,prezime,oib,iban)
values ('Petta', 'Moturre', null,null);

insert into kustosi(ime,prezime,oib,iban)
values ('Ulf', ' Küster',  null,null);


select * from sponzori;

insert into sponzori(naziv,broj_tel)
values ('Rudolf August Oetker Foundation', null);

insert into sponzori(naziv,broj_tel)
values ('Kaiser-Friedrich-Museumsverein', null);

insert into sponzori(naziv,broj_tel)
values ('JPMorgan Chase Foundation', null);

insert into sponzori(naziv,broj_tel)
values ('The oil and gas supermajor BP ', null);

insert into sponzori(naziv,broj_tel)
values ('The Fondation Pierre Bergé - LYS', null);