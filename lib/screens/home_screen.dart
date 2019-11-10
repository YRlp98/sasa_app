import 'package:flutter/material.dart';
import 'package:sasa_app/components/home_screen_cards/my_cards.dart';

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
            itemCount: 1,
            itemBuilder: (context, index) {
              return MyCardsUse();
            },
          ),
        ));
  }
}
