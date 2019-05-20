import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          'assets/image/nicLogo.png',
          color: Colors.white,
        ),
        backgroundColor: primaryColor,
        onPressed: () {},
      ),
    );
  }
}
