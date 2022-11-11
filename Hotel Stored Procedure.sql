use Hotel5

CREATE PROCEDURE Sprat_Insert
(
@BrojSprata int 
)
AS
BEGIN
    insert into Sprat(BrojSprata) values (@BrojSprata)
END
GO

CREATE PROCEDURE Sprat_Update
(
@BrojSprata int,
@SpratID int
)
AS
BEGIN
    UPDATE Sprat set BrojSprata=@BrojSprata
	where SpratID=@SpratID
END
GO

CREATE PROCEDURE Sprat_Delete
(
@BrojSprata int,
@SpratID int
)
AS
BEGIN
    delete from Sprat
	where SpratID=@SpratID
END
GO

-------------------------------------------

CREATE PROCEDURE TipSobe_Insert
(
@VrstaSobe nvarchar(20) 
)
AS
BEGIN
    insert into TipSobe(VrstaSobe) values (@VrstaSobe)
END
GO

create PROCEDURE TipSobe_Update
(
@TipSobeID int,
@VrstaSobe varchar(20)
)
AS
BEGIN
    UPDATE TipSobe set VrstaSobe=@VrstaSobe
	where TipSobeID=@TipSobeID
END
GO

CREATE PROCEDURE TipSobe_Delete
(
@TipSobeID int
)
AS
BEGIN
    delete from TipSobe 
	where TipSobeID=@TipSobeID
END
GO
-------------------------------------------
CREATE PROCEDURE TrenutnoStanjeSobe_Insert
(
@Stanje nvarchar(20) 
)
AS
BEGIN
    insert into TrenutnoStanjeSobe (NazivStanja) values (@Stanje)
END
GO

CREATE PROCEDURE TrenutnoStanjeSobe_Update
(
@ID int,
@Naziv nvarchar(20)
)
AS
BEGIN
    UPDATE TrenutnoStanjeSobe set NazivStanja=@Naziv
	where StanjeID=@ID
END
GO

CREATE PROCEDURE TrenutnoStanjeSobe_Delete
(
@ID int
)
AS
BEGIN
    delete from TrenutnoStanjeSobe 
	where StanjeID=@ID
END
GO
-------------------------------------------
CREATE PROCEDURE Pogled_Insert
(
@Naziv nvarchar(20) 
)
AS
BEGIN
    insert into Pogled (VrstaPogleda) values (@Naziv)
END
GO

CREATE PROCEDURE Pogled_Update
(
@ID int,
@Naziv nvarchar(20)
)
AS
BEGIN
    UPDATE Pogled set VrstaPogleda=@Naziv
	where PogledID=@ID
END
GO

CREATE PROCEDURE Pogled_Delete
(
@ID int
)
AS
BEGIN
     delete from Pogled 
	where PogledID=@ID
END
GO

-------------------------------------------

CREATE PROCEDURE Usluga_Insert
(
@VrstaUsluge nvarchar(20) ,
@Cena float
)
AS
BEGIN
    insert into Usluga(VrstaUsluge, Cena ) values (@VrstaUsluge,@Cena)
END
GO

CREATE PROCEDURE Usluga_Update
(
@ID int,
@VrstaUsluge varchar(20),
@Cena float
)
AS
BEGIN
    UPDATE Usluga set VrstaUsluge=@VrstaUsluge, Cena=@Cena
	where UslugaID=@ID
END
GO

CREATE PROCEDURE Usluga_Delete
(
@ID int
)
AS
BEGIN
     delete from Usluga 
	where UslugaID=@ID
END
GO

-------------------------------------------

CREATE PROCEDURE VrstaPlacanja_Insert
(
@Naziv nvarchar(20) 
)
AS
BEGIN
    insert into VrstaPlacanja(NazivVrste) values (@Naziv)
END
GO

CREATE PROCEDURE VrstaPlacanja_Update
(
@ID int,
@Naziv nvarchar(20)
)
AS
BEGIN
    UPDATE VrstaPlacanja set NazivVrste=@Naziv
	where VrstaPlacanjaID=@ID
END
GO

CREATE PROCEDURE VrstaPlacanja_Delete
(
@ID int
)
AS
BEGIN
     delete from VrstaPlacanja 
	where VrstaPlacanjaID=@ID
END
GO

-------------------------------------------
CREATE PROCEDURE Gost_Insert
(
@Ime nvarchar(20),
@Prezime nvarchar(20),
@BrLkPas int,
@DatumPocetka datetime
)
AS
BEGIN
    insert into Gost(Ime,Prezime,BrLK_Pasos,DatPocetkaUsluge) values (@Ime,@Prezime,@BrLkPas,@DatumPocetka)
END
GO

CREATE PROCEDURE Gost_Update
(
@ID int,
@Ime nvarchar(20),
@Prezime nvarchar(20),
@BrLkPas int,
@DatumPocetka datetime
)
AS
BEGIN
    UPDATE Gost set Ime=@Ime,Prezime=@Prezime,BrLK_Pasos=@BrLkPas,DatPocetkaUsluge=@DatumPocetka
	where GostID=@ID
END
GO

CREATE PROCEDURE Gost_Delete
(
@ID int
)
AS
BEGIN
     delete from Gost
	where GostID=@ID
END
GO

-------------------------------------------

create PROCEDURE Radnik_Insert
(
@PosaoID int,
@Telefon int,
@Ime nvarchar(20),
@Prezime nvarchar(20),
@Adresa varchar(20),
@JMBG int,
@GodinaRodj int
)
AS
BEGIN
    insert into Radnik(PosaoID,Ime,Prezime,Adresa,JMBG,GodinaRodjenja,Telefon) 
				values (@PosaoID,@Ime,@Prezime,@Adresa,@JMBG,@GodinaRodj,@Telefon)
END
GO

create PROCEDURE Radnik_Update
(
@ID int,
@PosaoID int,
@Telefon int,
@Ime nvarchar(20),
@Prezime nvarchar(20),
@Adresa varchar(20),
@JMBG int,
@GodinaRodj int
)
AS
BEGIN
    update Radnik set PosaoID=@PosaoID,Telefon=@Telefon, Ime=@Ime, Prezime=@Prezime, Adresa=@Adresa, JMBG=@JMBG,GodinaRodjenja=@GodinaRodj
	where RadnikID=@ID
END
GO

CREATE PROCEDURE Radnik_Delete
(
@ID int
)
AS
BEGIN
    delete from Radnik
	where RadnikID=@ID
END
GO
-------------------------------------------
CREATE PROCEDURE Posao_Insert
(
@Naziv varchar(20)
)
AS
BEGIN
    insert into Posao(NazivPosla) values (@Naziv)
END
GO

CREATE PROCEDURE Posao_Update
(
@ID int,
@Naziv varchar(20)
)
AS
BEGIN
    update Posao set NazivPosla=@Naziv
	where PosaoID=@ID
END
GO

CREATE PROCEDURE Posao_Delete
(
@ID int
)
AS
BEGIN
    delete from Posao
	where PosaoID=@ID
END
GO

-------------------------------------------

CREATE PROCEDURE Soba_Insert
(
@BrojSobe int,
@PogledID int,
@SpratID int,
@TipSobeID int,
@TrenutnoStanje int
)
AS
BEGIN
    insert into Soba(BrojSobe, PogledID, SpratID, TipSobeID, TrenutnoStanjeID) values (@BrojSobe,@PogledID,@SpratID,@TipSobeID,@TrenutnoStanje)
END
GO

CREATE PROCEDURE Soba_Update
(
@ID int,
@BrojSobe int,
@PogledID int,
@SpratID int,
@TipSobeID int,
@TrenutnoStanje int
)
AS
BEGIN
    update Soba set BrojSobe=@BrojSobe, PogledID=@PogledID, SpratID=@SpratID, TipSobeID=@TipSobeID, TrenutnoStanjeID=@TrenutnoStanje
	where SobaID=@ID
END
GO

CREATE PROCEDURE Soba_Delete
(
@ID int
)
AS
BEGIN
    delete from Soba
	where SobaID=@ID
END
GO
-------------------------------------------
CREATE PROCEDURE Booking_Insert
(
@RadnikID int ,
@GostID int ,
@VrstaPlacanjaID int ,
@UslugaID int ,
@SobaID int ,
@DatumZavrsetka datetime,
@DatumPocetka datetime,
@Ukupno float
)
AS
BEGIN
    insert into Booking(RadnikID,GostID,VrstaPlacanjaID,UslugaID,SobaID,DatumZavrsetka,DatumPocetka,Ukupno)
	values (@RadnikID,@GostID,@VrstaPlacanjaID,@UslugaID,@SobaID,@DatumZavrsetka,@DatumPocetka,@Ukupno)
END
GO

CREATE PROCEDURE Booking_Update
(
@ID int ,
@RadnikID int ,
@GostID int ,
@VrstaPlacanjaID int ,
@UslugaID int ,
@SobaID int ,
@DatumZavrsetka datetime,
@DatumPocetka datetime,
@Ukupno float
)
AS
BEGIN
    update Booking set RadnikID=@RadnikID,GostID=@GostID,VrstaPlacanjaID=@VrstaPlacanjaID,UslugaID=@UslugaID,
						SobaID=@SobaID,DatumZavrsetka=@DatumZavrsetka,DatumPocetka=@DatumPocetka,Ukupno=@Ukupno
	where BookingID=@ID
END
GO

CREATE PROCEDURE Booking_Delete
(
@ID int
)
AS
BEGIN
    delete from Booking
	where BookingID=@ID
END
GO
-------------------------------------------
create PROCEDURE Cek_Insert
(
@BookingID int,
@RadnikID int ,
@GostID int ,
@VrstaPlacanjaID int ,
@UslugaID int ,
@SobaID int ,
@BrojCeka int,
@NazivBanke varchar(20)
)
AS
BEGIN
    insert into Cek(BookingID,GostID,VrstaPlacanjaID,UslugaID,SobaID,RadnikID,BrojCeka,NazivBanke)
	values	(@BookingID, @GostID,@VrstaPlacanjaID,@UslugaID,@SobaID,@RadnikID,@BrojCeka, @NazivBanke)
END
GO

CREATE PROCEDURE Cek_Update
(
@ID int,
@BookingID int,
@RadnikID int ,
@GostID int ,
@VrstaPlacanjaID int ,
@UslugaID int ,
@SobaID int ,
@BrojCeka int,
@NazivBanke varchar(20)
)
AS
BEGIN
    update Cek set   BookingID=@BookingID, RadnikID=@RadnikID,GostID=@GostID,VrstaPlacanjaID=@VrstaPlacanjaID,UslugaID=@UslugaID,
					SobaID=@SobaID, BrojCeka=@BrojCeka, NazivBanke=@NazivBanke
	where CekID=@ID
END
GO

CREATE PROCEDURE Cek_Delete
(
@ID int
)
AS
BEGIN
    delete from Cek
	where CekID=@ID
END
GO