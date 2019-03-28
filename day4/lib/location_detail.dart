import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          location.name,
          style: Styles.navBarTitle,
        )),
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
        child:
            Text(text, textAlign: TextAlign.left, style: Styles.headerLarge));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(
          text,
          style: Styles.textDefault,
        ));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}

/**
 * Managing Style and Adding Custom Fonts
 * U realisticnim aplikacijama stilovi ce se ponavlajati stalno 
 * i zato ih treba grupisati u klase i onda te stilove koristiti kad nam trebaju
 * ovde ne govorimo o Themingu
 * Prvo u 'lib' direktorijumu reiramo fajl "syles.dart"
 * Kreiramo klasicnu clasu koja sadrzi neku stilizaciju
 * koju stalno ponavljamo
 * a onda je koristimo u drugim fajlovima kada nam treba
 * konkretno u ovom primeru u fajlu "location_detail.dart"
 * importujemo 'styles.dart' i koristimo u "_sectionText" widgetu
 * koji zelimo da stilizujemo. a pozivamo ga u samom Text widgetu kao
 * svojstvo tj klasu "Styles.headerLarge"
 * fontovi se dodaju u pubspec.yaml fajlu
 * pod fonts i mora da se navede familija fonta, i sami fontovi
 * kao i tacna lokacija gde se nalaze fontovi i njihova debljina
 * 
 */
