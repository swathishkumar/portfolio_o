import 'package:flutter/material.dart';
import 'package:portfolio_o/model/globalwidgets/contactcard/contactcard.dart';
import 'package:portfolio_o/model/globalwidgets/customappbar/customappbar.dart';
import 'package:portfolio_o/util/textconstant/textconstant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({super.key});
  void launchURL(String urlString) async {
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
                            height: 600,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("asset/swa.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 900,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello! I'm Swathishkumar AS, a passionate 22-year-old Flutter developer hailing from Alappuzha, Chengannur. I thrive on crafting elegant and functional mobile applications using Flutter, harnessing its powerful capabilities to create seamless user experiences.",
                                style: NeededTextstyles.aboutmecontentwhite,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "My journey into mobile development began with a curiosity for building intuitive interfaces and has evolved into a dedicated pursuit of mastering Flutter's versatility.",
                                style: NeededTextstyles.aboutmecontentwhite,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Beyond coding, I enjoy exploring new technologies, solving puzzles, and constantly refining my skills to stay at the forefront of app development trends.",
                                style: NeededTextstyles.aboutmecontentwhite,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "I believe in the impact of clean code and intuitive design, striving always to deliver products that exceed expectations.",
                                style: NeededTextstyles.aboutmecontentwhite,
                              ),
                              SizedBox(height: 16),
                              Text(
                                " When I'm not coding, you can find me exploring nature or immersed in a good book. Let's connect and build something amazing together!",
                                style: NeededTextstyles.aboutmecontentwhite,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 100,
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  launchUrlString(
                                      'mailto:swathishkumar03@gmail.com');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Hire Me",
                                      style: NeededTextstyles.ultimatex2dark,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  launchUrlString(
                                      'https://drive.google.com/file/d/113uC0M2w6g5q8P5OFEzGrzNTsXgsWtDl/view?usp=sharing');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "Download CV",
                                      style: NeededTextstyles.ultimatex2dark,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Contactcard()
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
