import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, location),
        ));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child: Text(text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
            )));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}

/**
 * Rad sa slikama i osnovna stilizacija teksta
 *  ovde cu da ucitam sliku koju dobijam sa url-a koji se nalazi u mock folderu
 * u ovom skrinu cemo implementirati metod koji cu nazvati
 * '_bannerImage' i on prihvata dva parametra 'url' i 'height'
 * i on vraca 'Container' widget. Postoje vise nacina da se 
 * radi sa slikama ali najcesci je da se slika "obuzda" u containeru
 * iz razloga sto zelimo da ogranicimo visinu slike u tacno definisanom
 * broju piksela, jer je to realisticno posto ce baner slika koja je na
 * pocetku ekrana uglavnom da ima tacno definisanu visinu
 * Prvo definisem 'child' svojstvo kontejnera i onda "pozovemo"
 * imenovani konstruktor'network' svojstvo za Image jer koritimo url
 * a onda uz 'url' definisemo i svojstvo koje se zove 'fit:' a on
 * nam definise kako ce slika da bude postavljana u Container
 * za 'fit' koristimo specijalnu klasu 'fit:BoxFit.fitWidth' kako
 * bi osigurali da se u svakako prikaze barem puna sirina slike koju zelimo
 * Da bi prikazali widget koji sam kreirao napravicemo poseban metod
 * "_renderBody" on ce da prima dva parametra "(BuildContext i Location)"
 * "addAll()" se koristi kada zelimo da dodamo novu listu kroz koju 
 * cemo da vrsimo iteraciju/prolazak ili nesto slicno listi
 * i sam widget "_renderBody" ce ustvari biti tipa 'List'
 * Vracam se na image Container gde cu da definiem jos jedno sojstvo
 * koje se zove 'constrains' kako bih mogao da lakse definisem visinu slike
 * "consttains:BoxConstraints.tightFor()"
 * Ako hocemo da dodamo padding ili neko slicno svojstvo
 * najlakse je da widget umotamo u Container widget da bi mogli
 * da ga kastimizujemo
 */
