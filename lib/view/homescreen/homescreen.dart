import 'package:flutter/material.dart';
import 'package:portfolio_o/model/globalwidgets/contactcard/contactcard.dart';
import 'package:portfolio_o/model/globalwidgets/customappbar/customappbar.dart';
import 'package:portfolio_o/view/aboutme/aboutme.dart';
import 'package:portfolio_o/view/homescreen/widgets/firstcard.dart';
import 'package:portfolio_o/view/homescreen/widgets/secondcard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                  firstcard(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Aboutme(),
                            ));
                      },
                      child: Container(
                        height: 700,
                        width: maxWidth * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        child: Secondcard(),
                      ),
                    ),
                  ),
                  Contactcard(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
