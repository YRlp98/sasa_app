import 'package:flutter/material.dart';
import 'package:sasa_app/screens/quick_sort_about.dart';

class QuickSortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text('QuickSort'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new QuickSortAbout(),
              new Container(),
            ],
          ),
        ));
  }
}
