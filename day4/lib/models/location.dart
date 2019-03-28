import './location_fact.dart';

class Location {
  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({this.name, this.url, this.facts});
}

/*
Dakle kada pravimo Modele prvo kreiramo folder "models",
zatim kreiramo fajl u tom folderu pod nazivom "location.dart"
u tom fajlu modeliramo/kreiramo model onakak kakav zelimo da bude
Model nije nista drugo do obicne klase 'class' i u njoj definisemo
atribute (osobine) i eventualne metode;
U konkretnom slucaju imamo definisane varijable ciji se tip unapred odredjuje
npr 'String' i imaju kljucnu rec 'final' sto znaci da ne mogu da se redefinisu ponovo
vec da su konacne. Pored toga u novokreiranom modelu pozivamo i jedan konstruktor
definisan sa 'Location' i njega koristimo kako bi smo ispisali definisane osobine klase.
KONSTRUKTOR je ustvari specijalni metod-funkcija koja nam omogucava da oderimo-definisemo
vrednosti za instancu klase koju kreiramo;
Dakle KONSTRUKTOR kreira INSTANCU jedne klase
Sta je "this"? je u osnovi neka vrsta pogodnosti u Dart programskom jeziku i kad god
koristimo 'this' to znaci da nas upucuje na same clanove ove klase, znaci da ako u KONSTRUKTORU
prosledimo neke vrednosti ka 'this' on ce automatki dodeliti vrednosti definisanim clanovima 
te klase;
I na kraju {} ugaone zagrade u KONSTRUKTORU u Dartu su opcione

*/
