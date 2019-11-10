import 'package:flutter/material.dart';

class QuickSortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('QuickSort'),
        centerTitle: true,
      ),
      body: new Center(
        child: Text('data'),
      ),
    );
  }
}
