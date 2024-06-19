// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';
import 'package:portfolio_o/view/aboutme/aboutme.dart';
import 'package:portfolio_o/view/contactscreen/contactscreen.dart';
import 'package:portfolio_o/view/homescreen/homescreen.dart';
import 'package:portfolio_o/view/projectscreen/projectscreen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Swathisk Kumar A S",
              style: NeededTextstyles.heading1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ));
                  },
                  child: Text(
                    "Home",
                    style: NeededTextstyles.Subheading1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Aboutme(),
                        ));
                  },
                  child: Text(
                    "About Me",
                    style: NeededTextstyles.Subheading1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Projectscreen(),
                        ));
                  },
                  child: Text(
                    "Projects",
                    style: NeededTextstyles.Subheading1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactScreen(),
                        ));
                  },
                  child: Text(
                    "Contact",
                    style: NeededTextstyles.Subheading1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
