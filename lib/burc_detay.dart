import 'package:flutter/material.dart';
import 'package:flutter_burc_app/burc_listeleme.dart';
import 'package:flutter_burc_app/models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    Burc secilenBurc = BurcListeleme.tumBurclar[gelenIndex];
    return Scaffold(
      body: burcDetay(secilenBurc),
    );
  }

  burcDetay(Burc secilenBurc) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          elevation: 10,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "images/" + secilenBurc.burcBuyukResim,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Text(secilenBurc.burcDetay),
          ),
        )
      ],
    );
  }
}
