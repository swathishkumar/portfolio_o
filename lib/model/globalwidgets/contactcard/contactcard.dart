import 'package:flutter/material.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactcard extends StatelessWidget {
  const Contactcard({super.key});
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 1200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Go",
                        style: NeededTextstyles.ultimatemax,
                      ),
                      Text(
                        "Digital",
                        style: NeededTextstyles.ultimatemax,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "© 2024 SWATHISH KUMAR AS",
                        style: NeededTextstyles.littletext,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 440,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            _launchURL('mailto:swathishkumar03@gmail.com');
                          },
                          child: Text("Email",
                              style: NeededTextstyles.contactsname)),
                      InkWell(
                          onTap: () {
                            _launchURL('https://instagram.com/swathishkumaras');
                          },
                          child: Text(
                            "Instagram",
                            style: NeededTextstyles.contactsname,
                          )),
                      InkWell(
                          onTap: () {
                            _launchURL('https://twitter.com/yourusername');
                          },
                          child: Text(
                            "Twitter",
                            style: NeededTextstyles.contactsname,
                          )),
                      InkWell(
                          onTap: () {
                            _launchURL('https://github.com/swathishkumar');
                          },
                          child: Text(
                            "Github",
                            style: NeededTextstyles.contactsname,
                          )),
                      InkWell(
                          onTap: () {
                            _launchURL(
                                'https://www.linkedin.com/in/swathish-kumar-as-88b3ab290/');
                          },
                          child: Text(
                            "LinkedIn",
                            style: NeededTextstyles.contactsname,
                          ))
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
