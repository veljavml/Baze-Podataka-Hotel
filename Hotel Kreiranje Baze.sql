use master
go
create database Hotel5
go
Use Hotel5
go
ALTER AUTHORIZATION ON DATABASE::Hotel5 TO sa
go


create table TipSobe
(
TipSobeID int not null identity(1,1),
VrstaSobe nvarchar(20),
)


alter table TipSobe
add constraint Pk_TipSobe primary key (TipSobeID)

create table Pogled
(
PogledID int not null identity(1,1),
VrstaPogleda nvarchar(20)
)

alter table Pogled
add constraint Pk_Pogled primary key (PogledID)

create table TrenutnoStanjeSobe
(
StanjeID int not null identity(1,1),
NazivStanja varchar(20) not null
)

alter table TrenutnoStanjeSobe
add constraint Pk_TrenutnoStanjeSobe primary key (StanjeID)

create table Sprat
(
SpratID int not null identity(1,1),
BrojSprata int not null,
)

alter table Sprat
add constraint PK_Sprat primary key (SpratID)

create table Posao
(
PosaoID int not null identity(1,1),
NazivPosla varchar(20)
)

alter table Posao
add constraint Pk_Posao primary key (PosaoID)

create table Radnik
(
RadnikID int not null identity(1,1),
PosaoID int,
Telefon int,
Adresa varchar(25),
Ime varchar(25),
Prezime varchar(25),
JMBG varchar(20),
GodinaRodjenja int
)

alter table Radnik
add constraint Pk_Radnik primary key (RadnikID)

alter table Radnik
add constraint FK_Radnik_Posao foreign key (PosaoID) references Posao(PosaoID)

create table Gost
(
GostID int not null identity(1,1),
Ime varchar(25),
Prezime varchar(25),
BrLK_Pasos varchar(20),
DatPocetkaUsluge datetime,
)

alter table Gost
add constraint Pk_Gost primary key (GostID)

create table Usluga
(
UslugaID int not null identity(1,1),
VrstaUsluge varchar(20),
Cena float 
)

alter table Usluga
add constraint Pk_Usluga primary key (UslugaID)

create table VrstaPlacanja
(
VrstaPlacanjaID int not null identity(1,1),
NazivVrste varchar(20)
)

alter table VrstaPlacanja
add constraint Pk_VrstaPlacanja primary key (VrstaPlacanjaID)

create table Soba
(
SobaID int not null identity(1,1),
TipSobeID int not null,
SpratID int not null,
PogledID int not null,
TrenutnoStanjeID int not null,
BrojSobe int not null
)

alter table Soba
add constraint Pk_Soba primary key (SobaID)

alter table Soba
add constraint FK_Soba_TipSobe foreign key (TipSobeID) references TipSobe(TipSobeID)

alter table Soba
add constraint FK_Soba_Sprat foreign key (SpratID) references Sprat(SpratID)

alter table Soba
add constraint FK_Soba_Pogled foreign key (PogledID) references Pogled(PogledID)

alter table Soba
add constraint FK_Soba_TrenutnoStanje foreign key (TrenutnoStanjeID) references TrenutnoStanjeSobe(StanjeID)

create table Booking
(
BookingID int not null identity(1,1),
RadnikID int not null,
GostID int not null,
VrstaPlacanjaID int not null,
UslugaID int not null,
SobaID int not null,
DatumZavrsetka datetime,
DatumPocetka datetime,
Ukupno float,
)

alter table Booking
add constraint PK_Booking primary key (BookingID, RadnikID, GostID, VrstaPlacanjaID, UslugaID, SobaID)

alter table Booking
add constraint FK_Booking_Radnik foreign key (RadnikID) references Radnik(RadnikID)

alter table Booking
add constraint FK_Booking_Gost foreign key (GostID) references Gost(GostID)

alter table Booking
add constraint FK_Booking_VrstaPlacanja foreign key (VrstaPlacanjaID) references VrstaPlacanja(VrstaPlacanjaID)

alter table Booking
add constraint FK_Booking_Usluga foreign key (UslugaID) references Usluga(UslugaID)

alter table Booking
add constraint FK_Booking_Soba foreign key (SobaID) references Soba(SobaID)

create table Cek
(
CekID int not null identity(1,1),
BookingID int not null ,
RadnikID int not null, 
GostID int not null,
VrstaPlacanjaID int not null,
UslugaID int not null,
SobaID int not null,
BrojCeka int not null,
NazivBanke varchar(20)
)

alter table Cek
add constraint PK_Cek primary key (CekID,BookingID, RadnikID, GostID, VrstaPlacanjaID, UslugaID, SobaID)

alter table Cek
add constraint FK_Cek_Booking foreign key(BookingID, RadnikID, GostID, VrstaPlacanjaID, UslugaID, SobaID)
references Booking(BookingID, RadnikID, GostID, VrstaPlacanjaID, UslugaID, SobaID)








