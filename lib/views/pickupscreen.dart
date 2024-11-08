import 'package:flutter/material.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/controllers/utills/common_bottom_sheet.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

class PickupScreen extends StatelessWidget {
  const PickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.primaryColor1,
          title: Text(
            "Order in 3 simple steps",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Text("Address Info",
                    style: AppTextStyles().mediumTextStyle()),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.greyColor),
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(20.0), // Circular corners
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/pngs/truck1.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.none,
                        textInputAction: TextInputAction.search,
                        onTap: () {
                          ShowPickupItemBottomSheet(context);
                        },
                        onChanged: (String value) {},
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 16, color: AppColors.blackColor1),
                          hintText: 'Pickup point??',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.greyColor),
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(20.0), // Circular corners
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/pngs/delivery_box.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        onTap: () {},
                        onChanged: (String value) {},
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 16, color: AppColors.blackColor1),
                          hintText: 'Delivery To?',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Text("What shall we get",
                    style: AppTextStyles()
                        .mediumTextStyle() // TextStyle(fontSize: 18, color: Colors.black),
                    ),
              ),
              CommonButton(
                title: 'Add Item',
                onTap: () {
                  ShowPickupAddItemBottomSheet(context, false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
