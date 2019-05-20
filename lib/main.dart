import 'package:flutter/material.dart';
import 'package:nic_asia/src/pages/app.dart';
import 'package:nic_asia/src/util/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColorLight,
      ),
      home: SafeArea(
        top: true,
        child: App(),
      ),
    );
  }
}
