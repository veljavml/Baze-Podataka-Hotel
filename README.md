# Baze-Podataka-Hotel

Projekat u kome je potrebno modelovati i napraviti bazu podataka za hotel.

Model Objekti Veze

![Screenshot_3](https://user-images.githubusercontent.com/111191947/201307778-77bb86e9-63f7-4078-93d0-33c186c74d0a.png)

IDF1X Dijagram

![Screenshot_4](https://user-images.githubusercontent.com/111191947/201307836-a389a998-bf84-4228-84ea-54dee5c72d2c.png)

Tabela održanja kardinaliteta

![Screenshot_5](https://user-images.githubusercontent.com/111191947/201307855-946e6467-3b4b-4eea-a5a3-3db9f6c0d762.png)




Relaciona šema

TipSobe(TipSobeID, Vrsta_Sobe)
Sprat (SpratID, Broj_Sprata)
TrenutnoStanjeSobe (StanjeID, VrstaPogleda)
Pogled (PogledID, Vrsta_Pogleda)
Soba (SobaID, TipSobeID, SpratID, StanjeID, PogledID, Broj_Sobe)
Radnik(RadnikID, PosaoID, Telefon, Ime, Prezime, Adresa, JMBG, GodinaRodjenja)
Posao (PosaoID, Naziv_Posla)
Usluga (UslugaID, Vrsta_Usluge, Nacin_Placanja, Cena)
VrstaPlacanja (VrstaID, Naziv_Vrste)
Cek(CekID,BookingID, BrojCeka, Naziv_Banke)
Gost (GostID, Ime, Prezime, BrLK_Pas, DatPocUsluge)
Booking (BookingID, SobaID, UslugaID, VrstaPlacanjaID, GostID, RadnikID, DatPocetka, DatZavrsetka,Ukupno)
