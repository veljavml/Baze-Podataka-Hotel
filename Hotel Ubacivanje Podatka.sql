use Hotel5

exec TipSobe_Insert @VrstaSobe='Vrsta 1'
exec TipSobe_Insert @VrstaSobe='Vrsta 2'
exec TipSobe_Insert @VrstaSobe='Vrsta 3'

exec Pogled_Insert @Naziv ='Pogled 1'
exec Pogled_Insert @Naziv ='Pogled 2'
exec Pogled_Insert @Naziv ='Pogled 3'

exec TrenutnoStanjeSobe_Insert @Stanje='Stanje 1'
exec TrenutnoStanjeSobe_Insert @Stanje='Stanje 2'
exec TrenutnoStanjeSobe_Insert @Stanje='Stanje 3'

exec Sprat_Insert @BrojSprata=1
exec Sprat_Insert @BrojSprata=2
exec Sprat_Insert @BrojSprata=3

exec Soba_Insert @BrojSobe=11, @PogledID=1, @SpratID=1,@TipSobeID=1,@TrenutnoStanje=1
exec Soba_Insert @BrojSobe=21, @PogledID=2, @SpratID=2,@TipSobeID=2,@TrenutnoStanje=2
exec Soba_Insert @BrojSobe=31, @PogledID=3, @SpratID=3,@TipSobeID=3,@TrenutnoStanje=3

exec Usluga_Insert @VrstaUsluge='Usluga1',@Cena=123112
exec Usluga_Insert @VrstaUsluge='Usluga2',@Cena=55123
exec Usluga_Insert @VrstaUsluge='Usluga3',@Cena=51253

exec VrstaPlacanja_Insert @Naziv='Naziv 1'
exec VrstaPlacanja_Insert @Naziv='Naziv 2'

exec Posao_Insert @Naziv='Posao 1'
exec Posao_Insert @Naziv='Posao 2'
exec Posao_Insert @Naziv='Posao 3'

exec Radnik_Insert @PosaoID=1,@Ime='Ime 1',@Prezime='Prezime 1',@Adresa='Adresa 1',@JMBG=123123123,@GodinaRodj=2001, @Telefon=6123123
exec Radnik_Insert @PosaoID=1,@Ime='Ime 2',@Prezime='Prezime 2',@Adresa='Adresa 2',@JMBG=51235123,@GodinaRodj=1999, @Telefon=612312512
exec Radnik_Insert @PosaoID=1,@Ime='Ime 3',@Prezime='Prezime 3',@Adresa='Adresa 3',@JMBG=61234,@GodinaRodj=1950, @Telefon=6123123

exec Gost_Insert @Ime='Ime1',@Prezime='Prezime 1', @BrLkPas=123123,@DatumPocetka='2020-11-11 21:00:00'
exec Gost_Insert @Ime='Ime2',@Prezime='Prezime 2', @BrLkPas=623123,@DatumPocetka='2021-3-3 3:00:00'
exec Gost_Insert @Ime='Ime3',@Prezime='Prezime 3', @BrLkPas=213124,@DatumPocetka='2021-12-12 12:00:00'

exec Booking_Insert @RadnikID=1,@GostID=1,@VrstaPlacanjaID=1,@UslugaID=1,@SobaID=1,
					@DatumZavrsetka='2021-12-12 12:00:00',@DatumPocetka='2021-12-12 12:00:00',@Ukupno=1312312
exec Booking_Insert @RadnikID=2,@GostID=2,@VrstaPlacanjaID=2,@UslugaID=2,@SobaID=2,
					@DatumZavrsetka='2021-12-12 12:00:00',@DatumPocetka='2021-11-12 12:00:00',@Ukupno=4512312
exec Booking_Insert @RadnikID=3,@GostID=3,@VrstaPlacanjaID=2,@UslugaID=3,@SobaID=3,
					@DatumZavrsetka='2021-10-12 12:00:00',@DatumPocetka='2021-9-12 12:00:00',@Ukupno=61231



exec Cek_Insert @BookingID=1, @GostID=1,@VrstaPlacanjaID=1,@UslugaID=1,@SobaID=1,@RadnikID=1,@BrojCeka=1, @NazivBanke='Banka1'
exec Cek_Insert @BookingID=2, @GostID=2,@VrstaPlacanjaID=2,@UslugaID=2,@SobaID=2,@RadnikID=2,@BrojCeka=2, @NazivBanke='Banka2'


 
