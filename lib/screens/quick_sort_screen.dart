import 'package:flutter/material.dart';
import 'package:sasa_app/screens/quick_sort_about.dart';

class QuickSortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
