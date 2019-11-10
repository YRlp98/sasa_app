import 'package:flutter/material.dart';
import 'package:sasa_app/screens/quick_sort/quick_sort_screen.dart';

class MyCardsCreate extends StatelessWidget {
  final Icon cardLeading;
  final Text cardTitle;
  final Text cardSubTitle;
  final Function cardOnTap;

  const MyCardsCreate(
      {Key key,
      this.cardLeading,
      this.cardTitle,
      this.cardSubTitle,
      this.cardOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
        child: ListTile(
          leading: cardLeading,
          title: cardTitle,
          subtitle: cardSubTitle,
          trailing: Icon(Icons.more_vert),
          onTap: cardOnTap,
        ),
      ),
    );
  }
}

class MyCardsUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // QuickSort Card
    return new MyCardsCreate(
      cardLeading: Icon(Icons.sort),
      cardTitle: Text('QuickSort'),
      cardSubTitle: Text(
        'Like Merge Sort, QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.',
        maxLines: 1,
      ),
      cardOnTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => QuickSortScreen()));
      },
    );
  }
}
