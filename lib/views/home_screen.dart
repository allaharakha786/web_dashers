// import 'package:custom_rating_bar/custom_rating_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:web_dasher/controllers/utills/app_colors.dart';
// import 'package:web_dasher/controllers/utills/app_textStyles.dart';
// import 'package:web_dasher/controllers/utills/app_colors.dart';
// import 'package:web_dasher/controllers/utills/app_textStyles.dart';

// import 'widgets/drawer_widget.dart';
// import 'widgets/card_widget.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//         drawer: Drawer(
//           backgroundColor: AppColors.primaryColor1,
//           child: Column(
//             children: [
//               Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       "X",
//                       style: AppTextStyles().mediumTextStyle(fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ]),
//               ListTile(
//                 leading: Container(
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 0.5, color: AppColors.greyColor),
//                       color: const Color.fromARGB(255, 244, 203, 82),
//                       borderRadius: BorderRadius.circular(30.0), // Circular corners
//                     ),
//                     child: Image.asset("assets/pngs/user.png")),
//                 title: Text(
//                   "Ahmed Chowki",
//                   style: AppTextStyles().mediumTextStyle(fontSize: 16, color: Colors.white),
//                 ),
//                 subtitle: Text(
//                   "Wallet balance: 0.0 XD",
//                   style: AppTextStyles().mediumTextStyle(fontSize: 14, color: Colors.white),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 15),
//                 child: Column(
//                   children: [
//                     ListTile(
//                       leading: Image.asset("assets/pngs/location.png"),
//                       title: Text(
//                         "Address",
//                         style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Image.asset("assets/pngs/offer.png"),
//                       title: Text(
//                         "Offers",
//                         style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Image.asset("assets/pngs/call.png"),
//                       title: Text(
//                         "Support",
//                         style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Image.asset("assets/pngs/badge.png"),
//                       title: Text(
//                         "Privacy Policy",
//                         style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Image.asset("assets/pngs/wallet.png"),
//                       title: Text(
//                         "English/Arabic",
//                         style: AppTextStyles().mediumTextStyle(fontSize: 16, color: AppColors.greyColor),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//             child: SafeArea(
//                 child: Container(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     InkWell(
//                         onTap: () => Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => DrawerWidget(),
//                             )),
//                         child: Icon(
//                           Icons.menu,
//                           size: 50,
//                         )),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Text(
//                       '15A, James Street',
//                       style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//                     ),
//                     Icon(Icons.arrow_drop_down)
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 14),
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Text(
//                     'Hello Ahmed 👋',
//                     style: TextStyle(color: Color(0xff666C89), fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 170,
//                 width: 350,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 213, 218, 93),
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset('assets/pngs/image 12.png'),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 40, right: 12),
//                       child: Column(
//                         children: [
//                           Text(
//                             'On your ',
//                             textAlign: TextAlign.start,
//                             style: TextStyle(fontSize: 25),
//                           ),
//                           Text(
//                             '     First order',
//                             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Text(
//                     'What you are \nlooking for today?',
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2F394B)),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Container(
//                   height: 50,
//                   width: 400,
//                   decoration: BoxDecoration(color: Color(0xffB7BBBC), borderRadius: BorderRadius.circular(10), border: Border.all()),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         suffixIcon: Padding(
//                           padding: const EdgeInsets.all(6.0),
//                           child: Container(
//                             height: 10,
//                             width: 10,
//                             decoration: BoxDecoration(color: Color(0xff61079C), borderRadius: BorderRadius.circular(10)),
//                             child: Icon(
//                               Icons.search,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         hintText: '  Search what you need...'),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text(
//                       'Categories',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     )),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                     categotyImages.length,
//                     (index) {
//                       return Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: 60,
//                               width: 60,
//                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(categotyImages[index]))),
//                             ),
//                           ),
//                           Text(
//                             categotyText[index],
//                             style: TextStyle(color: Color(0xff2F394B)),
//                           )
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                     gradientImage.length,
//                     (index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 110,
//                           width: 170,
//                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage(gradientImage[index]))),
//                           child: Column(children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 ItemTitle[index],
//                                 style: TextStyle(color: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(ItemSubtitle[index], style: TextStyle(color: AppColors.whiteColor, fontSize: 14)),
//                             ),
//                           ]),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: List.generate(
//                     3,
//                     (index) => Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 2.h,
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           // Get.to(() => ShowEquipmentNameProfile(
//                           //       id: '',
//                           //     ));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.only(right: 2.w, top: 10, bottom: 10, left: 8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: AppColors.blackColor),
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.1),
//                                 spreadRadius: 0,
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image.asset(
//                                 "assets/pngs/map_item_img.png",
//                                 height: 100,
//                                 width: 120,
//                                 fit: BoxFit.cover,
//                               ),
//                               SizedBox(width: 2.h),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         RatingBar(
//                                           filledIcon: Icons.star,
//                                           filledColor: AppColors.ratingColor,
//                                           size: 18,
//                                           emptyIcon: Icons.star_border,
//                                           onRatingChanged: (value) => debugPrint('$value'),
//                                           initialRating: 5,
//                                           maxRating: 5,
//                                         ),
//                                         SizedBox(width: 1.h),
//                                         Text("5.0", style: AppTextStyles().lightTextStyle()),
//                                       ],
//                                     ),
//                                     SizedBox(height: 1.5.h),
//                                     Text(
//                                       "4U Store Kuwait",
//                                       style: AppTextStyles().mediumTextStyle(fontSize: 14),
//                                     ),
//                                     SizedBox(height: 1.5.h),
//                                     Text(
//                                       "A5mall, Shuwaikh industrial, Kuwait",
//                                       style: TextStyle(
//                                         fontSize: 12.sp,
//                                         color: Colors.grey,
//                                       ),
//                                       textAlign: TextAlign.left,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ))));

//     //   body: SafeArea(
//     //     child: Container(
//     //       child: Column(
//     //         children: [
//     //           Padding(
//     //             padding: const EdgeInsets.all(8.0),
//     //             child: Row(
//     //               children: [
//     //                 InkWell(
//     //                     onTap: () => Navigator.push(
//     //                         context,
//     //                         MaterialPageRoute(
//     //                           builder: (context) => DrawerWidget(),
//     //                         )),
//     //                     child: Icon(
//     //                       Icons.menu,
//     //                       size: 50,
//     //                     )),
//     //                 SizedBox(
//     //                   width: 12,
//     //                 ),
//     //                 Text(
//     //                   '15A, James Street',
//     //                   style:
//     //                       TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//     //                 ),
//     //                 Icon(Icons.arrow_drop_down)
//     //               ],
//     //             ),
//     //           ),
//     //           SizedBox(
//     //             height: 16,
//     //           ),
//     //           Padding(
//     //             padding: const EdgeInsets.symmetric(horizontal: 14),
//     //             child: Align(
//     //               alignment: Alignment.bottomLeft,
//     //               child: Text(
//     //                 'Hello Ahmed 👋',
//     //                 style: TextStyle(
//     //                     color: Color(0xff666C89), fontWeight: FontWeight.w600),
//     //               ),
//     //             ),
//     //           ),
//     //           SizedBox(
//     //             height: 20,
//     //           ),
//     //           Container(
//     //             height: 170,
//     //             width: 350,
//     //             decoration: BoxDecoration(
//     //               color: Color.fromARGB(255, 213, 218, 93),
//     //               borderRadius: BorderRadius.all(Radius.circular(20)),
//     //             ),
//     //             child: Row(
//     //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //               children: [
//     //                 Image.asset('assets/pngs/image 12.png'),
//     //                 Padding(
//     //                   padding: const EdgeInsets.only(top: 40, right: 12),
//     //                   child: Column(
//     //                     children: [
//     //                       Text(
//     //                         'On your ',
//     //                         textAlign: TextAlign.start,
//     //                         style: TextStyle(fontSize: 25),
//     //                       ),
//     //                       Text(
//     //                         '     First order',
//     //                         style: TextStyle(
//     //                             fontSize: 25, fontWeight: FontWeight.bold),
//     //                       )
//     //                     ],
//     //                   ),
//     //                 )
//     //               ],
//     //             ),
//     //           ),
//     //           SizedBox(
//     //             height: 20,
//     //           ),
//     //           Align(
//     //             alignment: Alignment.bottomLeft,
//     //             child: Text(
//     //               'What you are \nlooking for today?',
//     //               style: TextStyle(
//     //                   fontSize: 25,
//     //                   fontWeight: FontWeight.bold,
//     //                   color: Color(0xff2F394B)),
//     //             ),
//     //           )
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // );
//   }

//   List<String> gradientImage = ['assets/pngs/gradient_1.png', 'assets/pngs/gradient_2.png'];

//   List<String> categotyImages = [
//     'assets/pngs/image1.png',
//     'assets/pngs/image2.png',
//     'assets/pngs/image3.png',
//     'assets/pngs/image4.png',
//     'assets/pngs/image5.png',
//   ];
//   List<String> categotyText = [
//     'Baby',
//     'Beauty',
//     'Coffee',
//     'Food',
//     'Laoundry',
//   ];

//   List<String> ItemTitle = ['Buy anything', 'Pickup anything'];
//   List<String> ItemSubtitle = ['Shop any item you want from any store', 'Send items from point A to B'];
// }
