import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  height: 100,
                ),
              );
            },
          ),
        ));
  }
}
