import 'package:flutter/cupertino.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/dashboard/single_category.dart';
import 'package:nic_asia/src/widget/heading.dart';

class LastTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Heading(
          title: 'Last transacctions',
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          height: deviceSize.height * 0.13,
          color: primaryColor,
        ),
      ],
    );
  }
}
