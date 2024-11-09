import 'package:flutter/material.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.primaryColor1,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "X",
                    style: AppTextStyles().mediumTextStyle(fontSize: 20),
                  ),
                ),
              ),
            ]),
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: AppColors.greyColor),
                    color: const Color.fromARGB(255, 244, 203, 82),
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular corners
                  ),
                  child: Image.asset("assets/pngs/user.png")),
              title: Text(
                "Ahmed Chowki",
                style: AppTextStyles()
                    .mediumTextStyle(fontSize: 16, color: Colors.white),
              ),
              subtitle: Text(
                "Wallet balance: 0.0 XD",
                style: AppTextStyles()
                    .mediumTextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("assets/pngs/location.png"),
                    title: Text(
                      "Address",
                      style: AppTextStyles().mediumTextStyle(
                          fontSize: 16, color: AppColors.greyColor),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/pngs/offer.png"),
                    title: Text(
                      "Offers",
                      style: AppTextStyles().mediumTextStyle(
                          fontSize: 16, color: AppColors.greyColor),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/pngs/call.png"),
                    title: Text(
                      "Support",
                      style: AppTextStyles().mediumTextStyle(
                          fontSize: 16, color: AppColors.greyColor),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/pngs/badge.png"),
                    title: Text(
                      "Privacy Policy",
                      style: AppTextStyles().mediumTextStyle(
                          fontSize: 16, color: AppColors.greyColor),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/pngs/wallet.png"),
                    title: Text(
                      "English/Arabic",
                      style: AppTextStyles().mediumTextStyle(
                          fontSize: 16, color: AppColors.greyColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DrawerWidget(),
                            )),
                        child: Icon(
                          Icons.menu,
                          size: 50,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      '15A, James Street',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Hello Ahmed 👋',
                    style: TextStyle(
                        color: Color(0xff666C89), fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 170,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 218, 93),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/pngs/image 12.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 12),
                      child: Column(
                        children: [
                          Text(
                            'On your ',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            '     First order',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'What you are \nlooking for today?',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F394B)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
