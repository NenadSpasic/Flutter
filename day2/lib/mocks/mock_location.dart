import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static Location FetchAny() {
    return Location(
        name: 'Arashiyama Bamboo Grove, Kyoto, Japan',
        url: 'https://fluttercrashcourse.com/assets/images/arashiyama@3x.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]);
  }
}

/**
 * Mock_location ima novi metod 'FetchAny' -> to je funkcija koja hvata bilo koju Lokaciju
 * koju definisemo, posto klasa MockLocation extenduje klasu Location, sto u sustini znaci
 * da nasledjuje sve osobine i metode koje su definisane u classi Location ali i dodaje 
 * novu funkciju a to je 'FetchAny';
 * U ovoj klasi koja mi IMITIRA podatke koje bih vukao sa servera, uvozimo i loction.dart 
 * i location_fact.dart;
 * Sa funkcijom 'FetchAny' zelim da vratim (return) INstANCU klase 'Location';
 * Ovde se pojavljuju i Liste u Dartu, to je u sutini Niz Array, ali se u flateru koristi kao 
 * poseban oblik gde mora da se striktno definise tip za svakog clana Liste/Array
 * u ovom slucaju kreiram Listu tipa LocationFact
 * 
 */
