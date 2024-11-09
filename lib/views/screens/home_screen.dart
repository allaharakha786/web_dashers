import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';
import 'package:web_dasher/views/screens/map_screen.dart';
import 'package:web_dasher/views/screens/pickupscreen.dart';
import 'package:web_dasher/views/widgets/search_customtextfield_screen.dart';
import 'package:web_dasher/views/widgets/small_common_button.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
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
                        borderRadius: BorderRadius.circular(30.0), // Circular corners
                      ),
                      child: Image.asset("assets/pngs/user.png")),
                  title: Text(
                    "Ahmed Chowki",
                    style: AppTextStyles().mediumTextStyle(fontSize: 16, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Wallet balance: 0.0 XD",
                    style: AppTextStyles().mediumTextStyle(fontSize: 14, color: Colors.white),
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
                          style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/pngs/offer.png"),
                        title: Text(
                          "Offers",
                          style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/pngs/call.png"),
                        title: Text(
                          "Support",
                          style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/pngs/badge.png"),
                        title: Text(
                          "Privacy Policy",
                          style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/pngs/wallet.png"),
                        title: Text(
                          "English/Arabic",
                          style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            title: Row(
              children: [Text('15A, James Street', style: AppTextStyles().mediumTextStyle(fontSize: 12)), Icon(Icons.arrow_drop_down)],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: SafeArea(
                    child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Ahmed 👋',
                    style: AppTextStyles().mediumTextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightYellowColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.05, vertical: mediaQuerySize.height * 0.025.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(width: mediaQuerySize.width * 0.4, child: Image.asset('assets/pngs/image 12.png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'On your ',
                                    textAlign: TextAlign.left,
                                    style: AppTextStyles().lightTextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    'First order',
                                    style: AppTextStyles().mediumTextStyle(fontSize: 22),
                                  )
                                ],
                              )
                            ],
                          ),
                          DotsIndicator(
                            mainAxisSize: MainAxisSize.min,
                            dotsCount: 5,
                            position: 0,
                            decorator: DotsDecorator(
                              activeColor: AppColors.blackColor1,
                              color: Colors.grey,
                              size: Size.square(8.0),
                              activeSize: Size(8.0, 8),
                              activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'What you are \nlooking for today?',
                      style: AppTextStyles().boldTextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: AppColors.blackColor1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SearchCustomTextFormField(
                    fillColor: AppColors.textFieldColor,
                    isBorder: true,
                    isPrefix: false,
                    onSuffixIconPressed: () {
                      Get.to(() => MapViewScreen(
                            isItem: false,
                          ));
                    },
                    suffixIcon: Image.asset(
                      'assets/pngs/search_icon.png',
                      fit: BoxFit.cover,
                    ),
                    hintText: 'Search here',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Categories',
                    style: AppTextStyles().boldTextStyle(fontSize: 16, color: AppColors.blackColor1, fontWeight: FontWeight.w500),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        categotyImages.length,
                        (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(categotyImages[index]))),
                                ),
                              ),
                              Text(
                                categotyText[index],
                                style: AppTextStyles().mediumTextStyle(fontSize: 11, color: AppColors.blackColor1),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        gradientImage.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                if (index == 1) {
                                  Get.to(() => PickupScreen());
                                }
                              },
                              child: Container(
                                height: 110,
                                width: 170,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(gradientImage[index]))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    Text(
                                      ItemTitle[index],
                                      style: AppTextStyles().boldTextStyle(fontSize: 14, color: AppColors.whiteColor),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(ItemSubtitle[index], style: TextStyle(color: AppColors.whiteColor, fontSize: 14)),
                                  ]),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MapViewScreen(
                                  isItem: true,
                                  imageUrl: productImages[index],
                                  title: productTitles[index],
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.only(right: 2.w, top: 10, bottom: 10, left: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: 120,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(productImages[index]))),
                                ),
                                SizedBox(width: 2.h),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            RatingBar(
                                              filledIcon: Icons.star,
                                              filledColor: AppColors.ratingColor,
                                              size: 18,
                                              emptyIcon: Icons.star_border,
                                              onRatingChanged: (value) => debugPrint('$value'),
                                              initialRating: 5,
                                              maxRating: 5,
                                            ),
                                            SizedBox(width: 1.h),
                                            Text("5.0", style: AppTextStyles().lightTextStyle()),
                                          ],
                                        ),
                                        SizedBox(height: 7.h),
                                        Text(
                                          productTitles[index],
                                          style: AppTextStyles().mediumTextStyle(fontSize: 14),
                                        ),
                                        SizedBox(height: 3.h),
                                        Text(
                                          "A5mall, Shuwaikh industrial, Kuwait",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Popular Places',
                    style: AppTextStyles().boldTextStyle(fontSize: 16, color: AppColors.blackColor1, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        2,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: mediaQuerySize.width * 0.5.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: mediaQuerySize.height * 0.16.h,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(popularImages[index]))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SmallCommonButton(
                                            title: 'Open',
                                            textColor: AppColors.whiteColor,
                                          ),
                                          Container(
                                            height: mediaQuerySize.height * 0.035.h,
                                            width: mediaQuerySize.width * 0.2.w,
                                            decoration: BoxDecoration(
                                              color: AppColors.lightYellowColor,
                                              borderRadius: BorderRadius.circular(10.sp),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '25-30 min',
                                                style: AppTextStyles().mediumTextStyle(fontSize: 10, color: AppColors.blackColor1),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  popularPlacesTitles[index],
                                  style: AppTextStyles().mediumTextStyle(fontSize: 14),
                                ),
                                Row(
                                  children: [
                                    Text("5.0", style: AppTextStyles().lightTextStyle()),
                                    SizedBox(width: 1.w),
                                    RatingBar(
                                      filledIcon: Icons.star,
                                      filledColor: AppColors.ratingColor,
                                      size: 18,
                                      emptyIcon: Icons.star_border,
                                      onRatingChanged: (value) => debugPrint('$value'),
                                      initialRating: 5,
                                      maxRating: 5,
                                    ),
                                    Text(' (10) ', style: AppTextStyles().lightTextStyle()),
                                    Text('1.0 km', style: AppTextStyles().lightTextStyle())
                                  ],
                                ),
                                Text('Al Hashimiya, 1', style: AppTextStyles().lightTextStyle()),
                                Text(' شارع عبدالمنعم رياض،، مدينة الكويت،', style: AppTextStyles().lightTextStyle())
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))),
          )),
    );

    //   body: SafeArea(
    //     child: Container(
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Row(
    //               children: [
    //                 InkWell(
    //                     onTap: () => Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                           builder: (context) => DrawerWidget(),
    //                         )),
    //                     child: Icon(
    //                       Icons.menu,
    //                       size: 50,
    //                     )),
    //                 SizedBox(
    //                   width: 12,
    //                 ),
    //                 Text(
    //                   '15A, James Street',
    //                   style:
    //                       TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
    //                 ),
    //                 Icon(Icons.arrow_drop_down)
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 16,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 14),
    //             child: Align(
    //               alignment: Alignment.bottomLeft,
    //               child: Text(
    //                 'Hello Ahmed 👋',
    //                 style: TextStyle(
    //                     color: Color(0xff666C89), fontWeight: FontWeight.w600),
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Container(
    //             height: 170,
    //             width: 350,
    //             decoration: BoxDecoration(
    //               color: Color.fromARGB(255, 213, 218, 93),
    //               borderRadius: BorderRadius.all(Radius.circular(20)),
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Image.asset('assets/pngs/image 12.png'),
    //                 Padding(
    //                   padding: const EdgeInsets.only(top: 40, right: 12),
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         'On your ',
    //                         textAlign: TextAlign.start,
    //                         style: TextStyle(fontSize: 25),
    //                       ),
    //                       Text(
    //                         '     First order',
    //                         style: TextStyle(
    //                             fontSize: 25, fontWeight: FontWeight.bold),
    //                       )
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Align(
    //             alignment: Alignment.bottomLeft,
    //             child: Text(
    //               'What you are \nlooking for today?',
    //               style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.bold,
    //                   color: Color(0xff2F394B)),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  List<String> gradientImage = ['assets/pngs/gradient_1.png', 'assets/pngs/gradient_2.png'];

  List<String> popularImages = ['assets/pngs/popular_image_2.png', 'assets/pngs/popular_image_1.png'];

  List<String> productImages = ['assets/pngs/map_item_img.png', 'assets/pngs/product_image_3.png', 'assets/pngs/product_image_2.png'];

  List<String> categotyImages = [
    'assets/pngs/image1.png',
    'assets/pngs/image2.png',
    'assets/pngs/image3.png',
    'assets/pngs/image4.png',
    'assets/pngs/image5.png',
  ];
  List<String> categotyText = [
    'Baby',
    'Beauty',
    'Coffee',
    'Food',
    'Laoundry',
  ];

  List<String> popularPlacesTitles = [
    'Asima Mall',
    "The Avenues Mall",
  ];
  List<String> productTitles = [
    '4U Store Kuwait',
    "Bloomingdale's Kuwait",
    'Astore Kuwait',
  ];

  List<String> ItemTitle = ['Buy anything', 'Pickup anything'];
  List<String> ItemSubtitle = ['Shop any item you want from any store', 'Send items from point A to B'];
}
