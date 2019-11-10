import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuickSortBody extends StatefulWidget {
  @override
  _QuickSortBodyState createState() => _QuickSortBodyState();
}

List<int> numbersList = new List();
int intNumberList;

class _QuickSortBodyState extends State<QuickSortBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final inputController = TextEditingController();

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      inputController.dispose();
      super.dispose();
    }

    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: new Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),

          // Input filed
          TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              labelText: 'Input',
              hintText: 'Enter your number here',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            controller: inputController,
            // onChanged: (userNumber) {
            //   _addToList(userNumber);
            // },
            onSaved: (userNumber) {
              _addToList(userNumber);
            },
          ),

          SizedBox(height: 10.0),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Remove button
              FlatButton(
                child: Text(
                  'Clear list',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  _clreattoList();
                },
              ),

              // Add button
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.white)),
                child: Container(
                  child: Text('ADD'),
                ),
                onPressed: () {
                  _addToList(inputController.text);
                },
              ),
            ],
          ),

          SizedBox(height: 20.0),

          // Show inputed numbers
          Container(
            padding: const EdgeInsets.all(18.0),
            height: 60.0,
            width: width,
            decoration: BoxDecoration(
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                'Unsorted: ' + numbersList.toString(),
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),

          SizedBox(height: 20.0),

          // Show sorted numbers
          Container(
            padding: const EdgeInsets.all(15.0),
            height: 50.0,
            width: width,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                'Sorted: ' + intNumberList.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Add element to list
  void _addToList(String userNumber) {
    setState(() {
      // numbersList.add(userNumber);
      intNumberList = int.tryParse(userNumber);
      numbersList.add(intNumberList);
    });
  }

// Clear all list elements
  void _clreattoList() {
    setState(() {
      numbersList.clear();
    });
  }
}
