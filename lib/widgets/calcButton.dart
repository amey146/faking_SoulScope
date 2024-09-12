import 'package:flutter/material.dart';

Widget calcButton(
    String buttonText, Color buttonColor, void Function()? buttonPressed,
    {double height = 70}) {
  return Container(
    width: 75,
    height: height,
    padding: const EdgeInsets.all(0),
    child: ElevatedButton(
        onPressed: buttonPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: buttonColor),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
  );
}
