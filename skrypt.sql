drop table naukowcy_badania;
drop table naukowcy;
drop table tytuly;
drop table wydzialy;
drop table badania;
drop table dyscypliny;
drop table dziedziny;

create table dziedziny (
  id integer primary key,
	nazwa varchar2(32)
);
Insert into DZIEDZINY (ID,NAZWA) values (1,'dziedzina nauk biologicznych');
Insert into DZIEDZINY (ID,NAZWA) values (2,'dziedzina nauk humanistycznych');
Insert into DZIEDZINY (ID,NAZWA) values (3,'dziedzina nauk spo?ecznych');
Insert into DZIEDZINY (ID,NAZWA) values (4,'dziedzina nauk fizycznych');
Insert into DZIEDZINY (ID,NAZWA) values (5,'dziedzina nauk technicznych');

create table dyscypliny
(	
  id integer primary key,
	id_dziedzina references dziedziny(id),
	nazwa varchar2(32)
);

Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (1,1,'biochemia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (2,1,'biotechnologia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (3,2,'archeologia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (4,2,'filozofia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (5,2,'historia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (6,3,'pedagogika');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (7,3,'socjologia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (8,3,'psychologia');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (9,4,'fizyka');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (10,4,'geofizyka');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (11,5,'informatyka');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (12,5,'mechanika');
Insert into dyscypliny (ID,ID_DZIEDZINA,NAZWA) values (13,5,'telekomunikacja');


create table badania (
  id integer primary key,
	id_dyscyplina integer references dyscypliny(id),
	temat varchar2(128), 
	data_rozpoczecia date,
	trwa number(1),
	data_zakonczenia date default null
);

Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (1,1,'Strukturalna i funkcjonalna charakterystyka mikrobiocenoz ?rodowisk naturalnych',to_date('12-11-13','DD-MM-RR'),0,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (2,2,'Nanocz?stki i oligomeryzacja receptorów zale?nych od bia?ek G',to_date('17-04-12','DD-MM-RR'),0,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (3,4,'Wspó?czesne koncepcje modernizacji kultury europejskiej',to_date('08-08-12','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (4,4,'Przemiany sfery publicznej i politycznej w epoce globalizacji',to_date('23-12-14','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (5,5,'Struktury spo?eczne, ?rodowisko kulturowe, instytucje publiczne w Polsce i Europie do ko?ca XVIII w.',to_date('22-10-12','DD-MM-RR'),0,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (6,6,'Samoocena m?odzie?y nieprzystosowanej spo?ecznie',to_date('29-03-13','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (7,6,'Gry komputerowe w procesie kszta?cenia',to_date('19-09-14','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (8,7,'Przemiany kultury i to?samo?ci w warunkach globalizacji i wielokulturowo?ci',to_date('23-07-13','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (9,8,'Zachowania konsumenckie',to_date('13-11-14','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (10,9,'Spektroskopia optyczna i mechaniczna biocz?steczek',to_date('10-09-13','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (11,9,'Badanie oddzia?ywa? elektronów i pozytonów z materi?',to_date('11-11-11','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (12,10,'Geofizyka w badaniach litosfery i wód podziemnych',to_date('18-03-14','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (13,11,'Metody sztucznej inteligencji i jej zastosowa?',to_date('16-01-13','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (14,11,'Akwizycja ruchu, emocji, mimiki twarzy',to_date('24-10-13','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (15,12,'Analiza i interpretacja sygna?ów neuronowych w mózgu',to_date('17-09-14','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (16,12,'Mikromechanika materia?ów niejednorodnych',to_date('12-03-11','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (17,13,'Projektowanie sieci telekomunikacyjnych i komputerowych, pól komutacyjnych, teorii ruchu, zarz?dzania, integracji sieci.',to_date('18-01-12','DD-MM-RR'),1,null);
Insert into BADANIA (ID,ID_DYSCYPLINA,TEMAT,DATA_ROZPOCZECIA,TRWA,DATA_ZAKONCZENIA) values (18,13,'Zagadnienia ekonomiczne i prawne w telekomunikacji',to_date('08-05-14','DD-MM-RR'),1,null);

create TABLE tytuly
  (	id integer primary key, 
	    "ZWROT" VARCHAR2(8 BYTE), 
	    "TYTUL" VARCHAR2(32 BYTE)
   );

Insert into tytuly (ID,ZWROT,TYTUL) values (1,'LIC','Licencjat');
Insert into tytuly (ID,ZWROT,TYTUL) values (2,'LICPIEL','Licencjat piel?gniarstwa');
Insert into tytuly (ID,ZWROT,TYTUL) values (3,'LICPOL','Licencjat polo?nictwa');
Insert into tytuly (ID,ZWROT,TYTUL) values (4,'INZ','In?ynier');
Insert into tytuly (ID,ZWROT,TYTUL) values (5,'LEK','Lekarz');
Insert into tytuly (ID,ZWROT,TYTUL) values (6,'LEKDEN','Lekarz dentysta');
Insert into tytuly (ID,ZWROT,TYTUL) values (7,'MGR','Magister');
Insert into tytuly (ID,ZWROT,TYTUL) values (8,'MGRFAR','Magister farmacji');
Insert into tytuly (ID,ZWROT,TYTUL) values (9,'MGRINZ','Magister in?ynier');
Insert into tytuly (ID,ZWROT,TYTUL) values (10,'MGRPIEL','Magister piel?gniarstwa');
Insert into tytuly (ID,ZWROT,TYTUL) values (11,'MGRPOL','Magister polo?nictwa');
Insert into tytuly (ID,ZWROT,TYTUL) values (12,'DR','Doktor');
Insert into tytuly (ID,ZWROT,TYTUL) values (13,'DRHAB','Doktor habilitowany');
Insert into tytuly (ID,ZWROT,TYTUL) values (14,'PROF','Profesor');

CREATE TABLE wydzialy
   (	"ID" integer primary key, 
	"SKROT" VARCHAR2(2 BYTE), 
	"NAZWA" VARCHAR2(32 BYTE)
   ) ;
Insert into WYDZIALY (ID,SKROT,NAZWA) values (1,'WI','Wydzia? Informatyki');
Insert into WYDZIALY (ID,SKROT,NAZWA) values (2,'WM','Wydzia? Matematyki');
Insert into WYDZIALY (ID,SKROT,NAZWA) values (3,'WF','Wydzia? Fizyki');
Insert into WYDZIALY (ID,SKROT,NAZWA) values (4,'WC','Wydzia? Chemii');
Insert into WYDZIALY (ID,SKROT,NAZWA) values (5,'WA','Wydzia? Architektury');
Insert into WYDZIALY (ID,SKROT,NAZWA) values (6,'WB','Wydzia? Budownictwa');

create table naukowcy (
  id integer primary key, 
	id_wydzial integer references wydzialy(id), 
	id_tytul integer references tytuly(id),
	imie varchar2(16),
	nazwisko varchar2(32), 
	data_urodzenia date);
  
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (1,4,1,'Anna','Andrzejewska',to_date('12-03-76','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (2,3,4,'Hanna','Bachórzewska-Gajewska',to_date('12-04-56','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (3,1,7,'Alina','Bakunowicz-?azarczyk',to_date('11-05-77','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (4,6,1,'Anna','Bielawska',to_date('17-03-75','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (5,5,4,'Krzysztof','Bielawski',to_date('12-03-56','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (6,2,7,'Barbara','Bie?',to_date('23-12-65','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (7,1,7,'Anna','Bodzenta-?ukaszyk',to_date('04-03-66','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (8,3,1,'Maria','Borawska',to_date('11-08-68','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (9,1,4,'Jacek','Borawski',to_date('12-05-74','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (10,1,7,'Artur','Bossowski',to_date('04-03-72','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (11,6,1,'Jan','Braszko',to_date('11-03-79','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (12,2,1,'Robert Antoni','Bucki',to_date('12-05-69','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (13,1,4,'Ewa','Chabielska',to_date('12-05-70','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (14,5,4,'Adrian','Chabowski',to_date('09-04-61','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (15,1,7,'Lech','Chrostek',to_date('12-11-71','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (16,1,1,'El?bieta','Chyczewska',to_date('10-03-72','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (17,3,1,'Lech','Chyczewski',to_date('12-07-68','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (18,1,1,'Jacek Wac?aw','Dadan',to_date('12-06-59','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (19,1,4,'Barbara','Darewicz',to_date('12-03-58','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (20,4,7,'Milena','D?browska',to_date('24-09-65','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (21,2,1,'Andrzej','D?browski',to_date('15-11-67','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (22,4,9,'Jan','D?ugosz',to_date('12-03-72','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (23,5,1,'S?awomir','Dobrzycki',to_date('04-05-60','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (24,6,1,'Wies?aw','Drozdowski',to_date('22-11-57','DD-MM-RR'));
Insert into naukowcy (ID,ID_WYDZIAL,ID_TYTUL,IMIE,NAZWISKO,DATA_URODZENIA) values (25,1,9,'Janusz','Dzi?cio?',to_date('15-01-74','DD-MM-RR'));

CREATE TABLE naukowcy_badania (	
  id_naukowiec integer references naukowcy(id),
  id_badanie integer references badania(id)
);

Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (1,1);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (2,2);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (3,3);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (4,4);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (5,5);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (6,1);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (7,2);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (8,3);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (9,4);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (10,6);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (11,1);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (12,2);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (13,3);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (14,4);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (15,7);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (16,8);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (17,9);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (18,10);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (19,11);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (20,12);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (21,13);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (22,14);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (23,15);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (24,16);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (25,17);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (1,9);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (2,7);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (3,6);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (4,16);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (5,18);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (12,16);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (14,11);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (18,12);
Insert into naukowcy_badania (ID_NAUKOWIEC,ID_BADANIE) values (21,15);

CREATE OR REPLACE VIEW "ZESTAWIENIE_BADAN" ("ID", "TEMAT", "DZIEDZINA", "DYSCYPLINA", "DATA_ROZPOCZECIA", "DATA_ZAKONCZENIA", "TRWA") AS 
(
select b.id, temat, dz.nazwa dziedzina, dy.nazwa dyscyplina, b.data_rozpoczecia, b.data_zakonczenia, trwa
from badania b
join dyscypliny dy on dy.id = b.id_dyscyplina
join dziedziny dz on dz.id = dy.id_dziedzina
);

CREATE OR REPLACE VIEW zestawienie_naukowcow as
(select * from 
(select n.id, n.imie, n.nazwisko, n.data_urodzenia, 
t.id id_tytul, t.tytul, w.nazwa nazwa_wydzialu, w.skrot skrot_wydzialu
from naukowcy n
join tytuly t on t.id = n.id_tytul 
join wydzialy w on w.id = n.id_wydzial)) order by id;

create or replace function policz_naukowcow_badania(id_badania integer) return integer
is
licznik integer;
begin
select count(*) into licznik from
naukowcy n
join naukowcy_badania nb on n.id = nb.id_naukowiec
join badania b on b.id = nb.id_badanie
where b.id = id_badania;
return licznik;
end;

create or replace function policz_naukowcow_wydzialu(skrot_wydzialu varchar2) return integer
is
licznik integer;
begin
  select count(*) into licznik from
  wydzialy w join naukowcy n on w.id = n.id_wydzial where w.skrot = skrot_wydzialu;
  return licznik;
end;

create or replace trigger trig_awansuj
instead of update on zestawienie_naukowcow
for each row
begin
  if :new.id_tytul > :old.id_tytul then
    update naukowcy set id_tytul = :new.id_tytul where :new.id = id;
  end if;
end;

create or replace trigger trig_usun_naukowca
instead of delete on zestawienie_naukowcow
for each row
begin
  dbms_output.put_line('Chce usunac ' || :old.id);
  delete from naukowcy_badania where id_naukowiec = :old.id;
  delete from naukowcy where id = :old.id;
end;

create or replace trigger trig_zakoncz_badanie
instead of update on zestawienie_badan
for each row
begin
  if :new.trwa = 0 then
    update badania set data_zakonczenia = sysdate where :new.id = id;
    update badania set trwa = 0 where :new.id = id;
  end if;
end;

commit;