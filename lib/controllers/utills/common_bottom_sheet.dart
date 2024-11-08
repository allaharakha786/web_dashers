import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/widgets/common_widgets.dart';

void showCustomBottomSheet(BuildContext context,
    {String title = "Your Text Here",
    required VoidCallback onButton1Pressed,
    required VoidCallback onButton2Pressed}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onButton1Pressed,
                  child: const Text("Button 1"),
                ),
                ElevatedButton(
                  onPressed: onButton2Pressed,
                  child: const Text("Button 2"),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void ShowPickupAddItemBottomSheet(BuildContext context, bool isPickupAnything) {
  showMaterialModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 700,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Item",
                style: AppTextStyles().mediumTextStyle(fontSize: 16),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.blueGrey),
                  color: AppColors.blueGrey,
                  borderRadius: BorderRadius.circular(10.0), // Circular corners
                ),
                child: Text(
                    "Our agent will update you, if price is different from estimate or items are not available",
                    style: AppTextStyles()
                        .mediumTextStyle(fontSize: 14, color: Colors.black)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.greyColor),
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(20.0), // Circular corners
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //     width: 0.5, color: AppColors.primaryColor1),
                          color: isPickupAnything
                              ? AppColors.greyColor
                              : AppColors.primaryColor1,
                          borderRadius:
                              BorderRadius.circular(20.0), // Circular corners
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            ShowPickupAddItemBottomSheet(context, false);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/pngs/bag.png",
                                width: 15,
                                height: 15,
                                color: isPickupAnything
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              Text(" Buy Anything",
                                  style: AppTextStyles().mediumTextStyle(
                                      fontSize: 12,
                                      color: isPickupAnything
                                          ? Colors.black
                                          : Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //     width: 0.5, color: AppColors.greyColor),
                          color: isPickupAnything
                              ? AppColors.primaryColor1
                              : AppColors.greyColor,
                          borderRadius:
                              BorderRadius.circular(20.0), // Circular corners
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            ShowPickupAddItemBottomSheet(context, true);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/pngs/box.png",
                                width: 15,
                                height: 15,
                                color: isPickupAnything
                                    ? AppColors.whiteColor
                                    : Colors.black,
                              ),
                              Text(" Pickup Anything",
                                  style: AppTextStyles().mediumTextStyle(
                                      fontSize: 12,
                                      color: isPickupAnything
                                          ? AppColors.whiteColor
                                          : Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.blackColor1),
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.0), // Circular corners
                ),
                child: Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    onChanged: (String value) {},
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15.0), // Rounded corners
                        borderSide: BorderSide.none, // No border side
                      ),
                      hintStyle:
                          TextStyle(fontSize: 16, color: AppColors.blackColor1),
                      hintText: 'Item name (required)',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.blackColor1),
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.0), // Circular corners
                ),
                child: Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    onChanged: (String value) {},
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(fontSize: 16, color: AppColors.blackColor1),
                      hintText: 'Item description (optional)',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              !isPickupAnything
                  ? Row(
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 10, right: 20),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColors.blackColor1),

                            color: AppColors.whiteColor,
                            borderRadius:
                                BorderRadius.circular(10.0), // Circular corners
                          ),
                          child: Expanded(
                            child: TextField(
                              textInputAction: TextInputAction.search,
                              onChanged: (String value) {},
                              onSubmitted: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: AppColors.blackColor1),
                                hintText: 'Estimated Price',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor1,
                            borderRadius:
                                BorderRadius.circular(5.0), // Circular corners
                          ),
                          child: Icon(
                            Icons.horizontal_rule,
                            color: Colors.white,
                          ),
                        ),
                        Text(" 2 "),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor1,
                            borderRadius:
                                BorderRadius.circular(5.0), // Circular corners
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: AppColors.blackColor1,
                            borderRadius:
                                BorderRadius.circular(15.0), // Circular corners
                          ),
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Item Quantity",
                          style: AppTextStyles().mediumTextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor1,
                                borderRadius: BorderRadius.circular(
                                    5.0), // Circular corners
                              ),
                              child: Icon(
                                Icons.horizontal_rule,
                                color: Colors.white,
                              ),
                            ),
                            Text(" 2 "),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor1,
                                borderRadius: BorderRadius.circular(
                                    5.0), // Circular corners
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Photo (Optional)",
                style: AppTextStyles().mediumTextStyle(fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.blackColor1),
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.0), // Circular corners
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder,
                      color: AppColors.primaryColor1,
                    ),
                    Text(
                      "  Choose item picture",
                      style: AppTextStyles().lightTextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CommonButton(
                title: 'Confirm Item',
              ),
            ],
          ),
        );
      });
}

void ShowPickupItemBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chose Pickup location",
                    style: AppTextStyles().mediumTextStyle(fontSize: 16),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5, color: AppColors.primaryColor1),
                      color: AppColors.primaryColor1,
                      borderRadius:
                          BorderRadius.circular(20.0), // Circular corners
                    ),
                    child: Text("Enable location",
                        style: AppTextStyles().mediumTextStyle(
                            fontSize: 14, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.blue),
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(20.0), // Circular corners
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Add new address (Search on map)",
                      style: AppTextStyles()
                          .mediumTextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.greyColor),
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(15.0), // Circular corners
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        onChanged: (String value) {},
                        onSubmitted: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 16, color: AppColors.blackColor1),
                          hintText: 'Search location from saved address',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: AppColors.primaryColor),
                        color: AppColors.primaryColor,
                        borderRadius:
                            BorderRadius.circular(10.0), // Circular corners
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Select saved address",
                style: AppTextStyles().mediumTextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: AppColors.greyColor),
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(20.0), // Circular corners
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: AppColors.primaryColor1),
                          color: AppColors.primaryColor1,
                          borderRadius:
                              BorderRadius.circular(20.0), // Circular corners
                        ),
                        child: Center(
                          child: Text("Saved Address",
                              style: AppTextStyles().mediumTextStyle(
                                  fontSize: 12, color: Colors.white)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: AppColors.greyColor),
                          color: AppColors.greyColor,
                          borderRadius:
                              BorderRadius.circular(20.0), // Circular corners
                        ),
                        child: Center(
                          child: Text("Saved Store",
                              style: AppTextStyles().mediumTextStyle(
                                  fontSize: 12, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nothing added yet",
                style: AppTextStyles().lightTextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      });
}
