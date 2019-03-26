import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(location),
      ),
    );
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      //ovako se pristupa clanovima Liste
      result.add(_sectionText(location.facts[i].text));
      //varijabla 'locaation' predstavlja Konstruktor Location cija lista pod nazivom 'facts' se ispusuje dokle god ima clanova u njoj
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Text(text);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}

/**
 * Posto je ovo StatelessWidget trebalo bi da je moguce da mu se prosledi
 * neki parametar, dakle definisem clana mog StatelessWidgeta i on ce biti 'final' 
 * znaci da se nece menjati, ali definisemo ovaj clan da bi mogli da kreiramo NOi KONSTRUKTOR
 * pod naxivom 'LocationDetail' a ne da koristimo defoltni KONSTRUKTOR koji je vec definisan u
 * samom Widgetu;
 * U novokreiranom "custom" KONSTRUKTOrU definisemo --> 'LocationDetail(this.location)' da bi
 * na najlaksi nacin dodeljivali svojstva nasoj varijabli 'location' jer ce zbog
 * reci '.this' automatski biti dodeljeno varijabli sta god da prosledio KONSTRUKTORU;
 * Zbog toga sada mogu da uradim sledece --> 
        '  appBar: AppBar(
        title: Text(location.name), ' sto znaci da umesto da hardkodiramo naslov
        on ce se automatski nasledjivati iz naseg modela 'Location' posto sama klasa
        poseduje atribut 'name' koji je 'final' i tipa je 'String'
 * Najlaksi nacin da se to uradi je da se definise varijabla tipa Location
 * --> 'final Location location;'
 */
