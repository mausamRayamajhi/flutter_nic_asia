import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/profile_image.dart';

class TopAccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(
        //horizontal: deviceSize.width * 0.03,
        vertical: deviceSize.height * 0.02,
      ),
      child: Container(
        alignment: Alignment.center,
        height: deviceSize.height * 0.2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ProfileImage(),
                buildAcountDetail,
              ],
            ),
            Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final buildAcountDetail = Container(
    padding: EdgeInsets.only(
      left: 15.0,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'sammunati bachat khata'.toUpperCase(),
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'NPR.',
              style: TextStyle(
                fontSize: 17.0,
                color: primaryColorLight,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 3.0,
            ),
            Text(
              '1,00,999.35',
              style: TextStyle(
                fontSize: 20.0,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.remove_red_eye,
              color: Colors.teal.shade200,
              size: 20.0,
            )
          ],
        ),
        Text(
          '281656484161548651',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
