import 'package:flutter/material.dart';
import 'package:portfolio_o/model/globalwidgets/customappbar/customappbar.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({super.key});
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: CustomAppBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double maxWidth = constraints.maxWidth;
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Container(
                  width: maxWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 400,
                                ),
                                Text(
                                  "Hi there!   ",
                                  style: NeededTextstyles.ultimatemaxwhite,
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 500,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("asset/swa.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1200,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
