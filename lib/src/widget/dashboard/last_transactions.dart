import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/dashboard/transaction.dart';
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
          title: 'Last transactions',
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          height: transactions.length * deviceSize.height * 0.15,
          //  color: Colors.red,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, int index) => Transaction(
                  transaction: transactions[index],
                ),
          ),
        ),
      ],
    );
  }
}
