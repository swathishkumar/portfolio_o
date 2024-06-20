// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';

class Secondcard extends StatelessWidget {
  const Secondcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Nice to",
              style: NeededTextstyles.ultimate1,
            ),
            Text(
              "meet you",
              style: NeededTextstyles.ultimate1,
            ),
            SizedBox(
              height: 340,
            ),
            Text(
              "About me",
              style: NeededTextstyles.ultimate2,
            )
          ],
        ),
        Container(
          height: 700,
          width: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/swa.png"), fit: BoxFit.cover)),
          // child: Image.asset("asset/swa.png"),
        )
      ],
    );
  }
}
