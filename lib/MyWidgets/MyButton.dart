import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyButton extends StatelessWidget {
  MyButton({@required this.MyKey});
  String MyKey;

  void showToast(String name) {
    Fluttertoast.showToast(
        msg: 'Welcome ${name}!',
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.pinkAccent,
        textColor: Colors.white
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.pinkAccent,
      splashColor: Colors.orange,
      child: Text(
        this.MyKey,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {showToast(this.MyKey);},
      shape: const StadiumBorder(),
    );
  }
}
