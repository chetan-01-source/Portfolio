import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
 Future <void> _launchURL(String url) async{
   final Uri uri = Uri.parse(url);
   if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
     throw 'Can not launch url';
   }
 }
  @override

  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Pune",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "20",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                       _launchURL('https://drive.google.com/file/d/1-J46DnIGiOFuP6WT78IPR1pyaL-g-Lsf/view');
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _launchURL('https://www.linkedin.com/in/chetan-marathe-235932231');
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL('https://github.com/chetan-01-source');
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL('https://instagram.com/chetan_m0412?utm_source=qr&igshid=ZDc4ODBmNjlmNQ%3D%3D');
                            },
                            icon: SvgPicture.asset("assets/icons/instagram.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
