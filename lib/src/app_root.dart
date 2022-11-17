import 'package:app1/screens/screen1.dart';
import 'package:app1/screens/screen2.dart';
import 'package:app1/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppRoot extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Appointments(),
      debugShowCheckedModeBanner: false,
    );
  }
}