import 'package:flutter/material.dart';
import 'package:flutter_burc_app/burc_detay.dart';

import 'burc_listeleme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        List<String> path = settings.name.split("/");

        if (path[1] == "detay") {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(path[2])));
        } else {
          return null;
        }
      },
      title: "Ömer Elvan",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BurcListeleme(),
    );
  }
}
