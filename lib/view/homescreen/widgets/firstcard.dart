// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';

class firstcard extends StatelessWidget {
  const firstcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 550,
        width: 960,
        child: Column(
          children: [
            Text(
              "As a UI/UX designer and Flutter Developer, I specialize in creating fluid and captivating mobile interfaces that ensure seamless user experiences.",
              style: NeededTextstyles.ultimate1,
              textAlign: TextAlign.center,
            ),
            Text(
              "",
              style: NeededTextstyles.ultimate1,
            ),
          ],
        ),
      ),
    );
  }
}
