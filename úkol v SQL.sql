CREATE TABLE typ_zanr (
    id_typ_zanr SERIAL NOT NULL,
	nazev VARCHAR (255) UNIQUE NOT NULL,
    CONSTRAINT "PK_id_typ_zanr" PRIMARY KEY (id_typ_zanr)
);

INSERT INTO typ_zanr(nazev) VALUES ('Rock');
INSERT INTO typ_zanr(nazev) VALUES ('Metal');
INSERT INTO typ_zanr(nazev) VALUES ('Folk');
INSERT INTO typ_zanr(nazev) VALUES ('Alternativa/indie');


CREATE TABLE album (
	id_album SERIAL,
    id_typ_zanr INT NOT NULL,
	nazev VARCHAR (255) UNIQUE NOT NULL,
	datum_vydani INT, 
    CONSTRAINT "PK_id_album" PRIMARY KEY (id_album),
    CONSTRAINT "FK_id_typ_zanr" FOREIGN KEY (id_typ_zanr) REFERENCES typ_zanr (id_typ_zanr) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (1,'Tsunami', 2017);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (1,'Svatá pravda', 2001);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (3,'Uplně levej', 2019);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (3,'Vlasy', 2017);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (2,'Master of Puppets', 1986);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (2,'Death Magnetic', 2008);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (3,'Corrida', 2006);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (3,'MegaHu', 1999);
INSERT INTO album(id_typ_zanr, nazev, datum_vydani) VALUES (4,'Trading Change', 2014);


CREATE TABLE skladba (
	id_skladba SERIAL UNIQUE,
    nazev VARCHAR (255) NOT NULL,
    delka NUMERIC(5,2) NOT NULL, 
    CONSTRAINT "PK_id_skladba" PRIMARY KEY (id_skladba)
);
INSERT INTO skladba(nazev, delka) VALUES ('Dobrý časy', 3.35);
INSERT INTO skladba(nazev, delka) VALUES ('Tsunami', 3.24);
INSERT INTO skladba(nazev, delka) VALUES ('Kořala', 3.30);
INSERT INTO skladba(nazev, delka) VALUES ('Země draků', 3.20);
INSERT INTO skladba(nazev, delka) VALUES ('Naděje', 3.13);
INSERT INTO skladba(nazev, delka) VALUES ('Bill', 3.16);
INSERT INTO skladba(nazev, delka) VALUES ('Svatá pravda', 3.30);
INSERT INTO skladba(nazev, delka) VALUES ('Uplně levej', 4.00);
INSERT INTO skladba(nazev, delka) VALUES ('Farmař Tonda', 2.53);
INSERT INTO skladba(nazev, delka) VALUES ('V lese', 3.25);
INSERT INTO skladba(nazev, delka) VALUES ('Vlasy', 1.17);
INSERT INTO skladba(nazev, delka) VALUES ('Mám doma kočku', 3.26);
INSERT INTO skladba(nazev, delka) VALUES ('Padá hvězda', 3.12);
INSERT INTO skladba(nazev, delka) VALUES ('Master of Puppets', 8.35);
INSERT INTO skladba(nazev, delka) VALUES ('Disposable Heroes', 8.16);
INSERT INTO skladba(nazev, delka) VALUES ('The End of the Line', 7.52);
INSERT INTO skladba(nazev, delka) VALUES ('Cyanide', 6.39);
INSERT INTO skladba(nazev, delka) VALUES ('Corrida', 2.55);
INSERT INTO skladba(nazev, delka) VALUES ('Malá dáma', 3.26);
INSERT INTO skladba(nazev, delka) VALUES ('Buldozerem', 2.51);
INSERT INTO skladba(nazev, delka) VALUES ('Teta', 2.58);
INSERT INTO skladba(nazev, delka) VALUES ('MegaHu', 2.21);
INSERT INTO skladba(nazev, delka) VALUES ('Prdel vody', 3.11);
INSERT INTO skladba(nazev, delka) VALUES ('Sinner', 2.33);
INSERT INTO skladba(nazev, delka) VALUES ('Power', 3.15);
INSERT INTO skladba(nazev, delka) VALUES ('Skiny Blues', 3.09);


CREATE TABLE album_skladba (
	id_album_skladba SERIAL,
    cislo_stopy INT,
    id_album INT NOT NULL,
    id_skladba INT NOT NULL,  
    CONSTRAINT "PK_album_skladba" PRIMARY KEY (id_album_skladba),
    CONSTRAINT "FK_id_album" FOREIGN KEY (id_album) REFERENCES album (id_album) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "FK_id_skladba" FOREIGN KEY (id_skladba) REFERENCES skladba (id_skladba) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (1, 1, 1);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 1, 2);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (3, 1, 3);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (4, 1, 4);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (11, 1, 5);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 2, 6);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (8, 2, 7);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (3, 3, 8);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (14, 3, 9);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (6, 3, 10);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (1, 4, 11);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (6, 4, 12);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (11, 4, 13);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 5, 14);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (5, 5, 15);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 6, 16);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (6, 6, 17);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 7, 18);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (6, 7, 19);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (9, 7, 20);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (1, 8, 21);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (6, 8, 22);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (10, 8, 23);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (1, 9, 24);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (2, 9, 25);
INSERT INTO album_skladba(cislo_stopy,id_album,id_skladba) VALUES (7, 9, 26);

CREATE TABLE typ_narodnost (
	id_typ_narodnost SERIAL,
    nazev VARCHAR (255) NOT NULL,
    CONSTRAINT "PK_id_typ_narodnost" PRIMARY KEY (id_typ_narodnost)
);
INSERT INTO typ_narodnost(nazev) VALUES ('Česká Republika');
INSERT INTO typ_narodnost(nazev) VALUES ('Amerika');
INSERT INTO typ_narodnost(nazev) VALUES ('Jihoafrická Republika');


CREATE TABLE interpret (
	id_interpret SERIAL,
    nazev VARCHAR (255) NOT NULL,
    id_typ_narodnost INT NOT NULL, 
    CONSTRAINT "PK_id_interpret" PRIMARY KEY (id_interpret),
    CONSTRAINT "FK_id_typ_narodnost" FOREIGN KEY (id_typ_narodnost) REFERENCES typ_narodnost (id_typ_narodnost) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO interpret(nazev, id_typ_narodnost) VALUES ('Divokej Bill', 1);
INSERT INTO interpret(nazev, id_typ_narodnost) VALUES ('Pokáč', 1);
INSERT INTO interpret(nazev, id_typ_narodnost) VALUES ('Metallica', 2);
INSERT INTO interpret(nazev, id_typ_narodnost) VALUES ('Kabát', 1);
INSERT INTO interpret(nazev, id_typ_narodnost) VALUES ('Jeremy Loops', 3);

CREATE TABLE album_interpret (
	id_album_interpret SERIAL,
    id_album INT NOT NULL,
    id_interpret INT NOT NULL, 
    CONSTRAINT "PK_id_album_interpret" PRIMARY KEY (id_album_interpret),
    CONSTRAINT "FK_id_album" FOREIGN KEY (id_album) REFERENCES album (id_album) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT "FK_id_interpret" FOREIGN KEY (id_interpret) REFERENCES interpret (id_interpret) ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (1, 1);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (2, 1);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (3, 2);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (4, 2);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (5, 3);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (6, 3);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (7, 4);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (8, 4);
INSERT INTO album_interpret(id_album, id_interpret) VALUES (9, 5);




------------------ Úkoly, zadání a řešení ------------------

-- Seznam všech alb včetně interpreta, počtu skladeb na albu. Seřazeno dle názvu interpreta a názvu alba.
SELECT Album.nazev, Interpret.nazev, Count(album_skladba.id_album)
FROM album
JOIN album_skladba
	ON album.id_album = album_skladba.id_album
JOIN skladba
	ON album_skladba.id_skladba = skladba.id_skladba
JOIN album_interpret
	ON album.id_album = album_interpret.id_album
JOIN interpret
	ON album_interpret.id_interpret = interpret.id_interpret
GROUP BY interpret.nazev, album.nazev
ORDER BY interpret.nazev, interpret.nazev


-- Najít album včetně interpreta, které obsahuje nejdelší písničku.
SELECT album.nazev, interpret.nazev, skladba.delka
FROM album
JOIN album_skladba
	ON album.id_album = album_skladba.id_album
JOIN skladba
	ON album_skladba.id_skladba = skladba.id_skladba
JOIN album_interpret
	ON album.id_album = album_interpret.id_album
JOIN interpret
	ON album_interpret.id_interpret = interpret.id_interpret
ORDER BY skladba.delka DESC
LIMIT 1