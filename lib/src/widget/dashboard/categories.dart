import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';
import 'package:nic_asia/src/widget/dashboard/category.dart';

import '../heading.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Heading(
          title: 'would you like to?',
        ),
        SizedBox(
          height: 25.0,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            // primary: true,
            children: categories
                .map((item) => Category(
                      title: item['title'],
                      image: item['image'],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
