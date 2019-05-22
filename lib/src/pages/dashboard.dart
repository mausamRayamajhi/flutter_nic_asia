import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/dashboard/top_account_info.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: buildAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            color: primaryColor,
            height: deviceSize.height * 0.1,
          ),
          TopAccountInfo(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      // centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'MAUSAM'.toUpperCase(),
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('assets/image/ic_scan2pay_64_4.png'),
          tooltip: 'QR Scan',
          onPressed: () {},
        ),
      ],
    );
  }
}
