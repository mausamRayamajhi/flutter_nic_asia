import 'package:flutter/material.dart';
import 'package:nic_asia/src/pages/dashboard.dart';
import 'package:nic_asia/src/pages/login.dart';
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
      // home: SafeArea(
      //   top: true,
      //   child: App(),
      // ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              top: true,
              child: Login(),
            ),
        '/dashboard': (context) => SafeArea(
              top: true,
              child: Dashboard(),
            ),
      },
      onUnknownRoute: (RouteSettings settings) {
        print('INSIDE Unknown routes');
        return MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        );
      },
    );
  }
}
