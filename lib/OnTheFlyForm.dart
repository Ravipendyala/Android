import 'package:flutter/material.dart';

class DynamicForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registration",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Registration form",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var stringListReturnedFromApiCall = ["Blood group", "Age", "Gender", "Last donation date", "Weight"];

    // This list of controllers can be used to set and get the text from/to the TextFields
    var textEditingControllers = <TextEditingController>[];

    var textFields = <TextField>[];
    stringListReturnedFromApiCall.forEach((str) {
      var textEditingController = new TextEditingController(text: str);
      textEditingControllers.add(textEditingController);
      return textFields.add(new TextField(controller: textEditingController));
    });

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: new Column(
              children: textFields,
            )));
  }
}