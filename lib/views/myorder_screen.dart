import 'package:flutter/material.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/controllers/utills/common_bottom_sheet.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.blue,
            backgroundColor: AppColors.primaryColor,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: AppColors.primaryColor,
                  label: "Home",
                  icon: Icon(
                    Icons.home_outlined,
                  )),
              BottomNavigationBarItem(
                  label: "Docs", icon: Icon(Icons.document_scanner_outlined)),
              BottomNavigationBarItem(
                  label: "Notificaiton",
                  icon: Icon(Icons.notifications_outlined)),
              BottomNavigationBarItem(
                  label: "Chat", icon: Icon(Icons.chat_outlined))
            ]),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.primaryColor1,
          title: Text(
            "My Orders",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: AppColors.blueGrey,
              child: Row(
                children: [
                  Text("Past"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Ongoing")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: AppColors.greyColor),
                    color: AppColors.greyColor,
                    borderRadius:
                        BorderRadius.circular(20.0), // Circular corners
                  ),
                  child: Text("All"),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: AppColors.greyColor),
                    color: AppColors.greyColor,
                    borderRadius:
                        BorderRadius.circular(20.0), // Circular corners
                  ),
                  child: Text("Buy Anything"),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: AppColors.greyColor),
                    color: AppColors.greyColor,
                    borderRadius:
                        BorderRadius.circular(20.0), // Circular corners
                  ),
                  child: Text("Pickup Anything"),
                )
              ],
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/pngs/order.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Haven't tried Mach?",
                    style: AppTextStyles()
                        .mediumTextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Place your first order",
                    style: AppTextStyles().lightTextStyle(
                        fontSize: 14, color: AppColors.blackColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
