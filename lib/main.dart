import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/soulvoice_view.dart';

//Start Point, to run app

void main() {
  runApp(const MyApp());
}

//Root of the main app

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.activeBlue,
          fontFamily:
              'Alice' //Remove this custom font if not present in ur directory
          ),
      home: SoulVoiceScreen(), //Here call the screen you want to
    );
  }
}
