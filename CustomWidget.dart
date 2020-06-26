import 'package:flutter/material.dart';
import 'MyWidgets/MyButton.dart';

class CustomWidgetExample extends StatefulWidget {
  @override
  _CustomWidgetExampleState createState() {
    return _CustomWidgetExampleState();
  }
}

class _CustomWidgetExampleState extends State {

  @override
  Widget build(BuildContext context) {
    List<String> Names = ['Anudeep','Anwesh','Narsi','Lakshma Reddy','Naveen','Satish','Ravi'];
    return MaterialApp(
      title: 'Custom widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custome widget example'),
        ),
        body:
        Column(
          children: [
            for ( var Name in Names) MyButton(MyKey: Name)
          ],
        ),
      ),
    );
  }
}