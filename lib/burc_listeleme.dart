import 'package:flutter/material.dart';
import 'package:flutter_burc_app/utils/strings.dart';

import 'models/burc.dart';

class BurcListeleme extends StatelessWidget {
  static List<Burc> tumBurclar;
  @override
  Widget build(BuildContext context) {
    tumBurclar = burcAtama();
    return Scaffold(
      appBar: AppBar(
        title: Text("Burc Listesi"),
      ),
      body: liste_fonk(),
    );
  }

  Widget liste_fonk() {
    return ListView.builder(
      itemCount: tumBurclar.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 20,
          color: Colors.white,
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/detay/$index");
            },
            leading: Image.asset("images/" + tumBurclar[index].burcKucukResim),
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                tumBurclar[index].burcAdi,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(tumBurclar[index].burcTarihi),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }

  List<Burc> burcAtama() {
    List<Burc> kayitlar = [];
    for (int i = 0; i < 12; i++) {
      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc burc = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i], kucukResim, buyukResim);
      kayitlar.add(burc);
    }
    return kayitlar;
  }
}
