import 'package:flutter/material.dart';
import 'package:sasa_app/components/web_view.dart';

class QuickSortHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      // height: height / 5,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75))
        ],
        color: Colors.blue,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              'Like Merge Sort, QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.justify,
              maxLines: 5,
            ),
            SizedBox(
              height: 2.5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.white)),
                child: Container(
                  child: Text('Read more...'),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebViewContainer(
                              'https://www.geeksforgeeks.org/quick-sort/',
                              'QuickSort')));
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
