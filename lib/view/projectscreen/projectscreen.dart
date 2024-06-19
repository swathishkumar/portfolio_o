import 'package:flutter/material.dart';
import 'package:portfolio_o/model/globalwidgets/contactcard/contactcard.dart';
import 'package:portfolio_o/model/globalwidgets/customappbar/customappbar.dart';
import 'package:portfolio_o/view/projectscreen/widget/contentcard1.dart';

class Projectscreen extends StatefulWidget {
  const Projectscreen({super.key});

  @override
  State<Projectscreen> createState() => _ProjectscreenState();
}

class _ProjectscreenState extends State<Projectscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 162, 201, 233),
        appBar: CustomAppBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double maxWidth = constraints.maxWidth;
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 700,
                      width: maxWidth * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.withOpacity(0.2),
                      ),
                      child: ContentCard1(),
                    ),
                  ),
                  Contactcard()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
