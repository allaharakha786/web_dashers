import 'package:flutter/material.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';

import 'widgets/drawer_widget.dart';
import 'widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
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
                          color: Color(0xff666C89),
                          fontWeight: FontWeight.w600),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'What you are \nlooking for today?',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2F394B)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(0xffB7BBBC),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xff61079C),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          hintText: '  Search what you need...'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      categotyImages.length,
                      (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(categotyImages[index]))),
                              ),
                            ),
                            Text(
                              categotyText[index],
                              style: TextStyle(color: Color(0xff2F394B)),
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
                          child: Container(
                            height: 110,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(gradientImage[index]))),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ItemTitle[index],
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(ItemSubtitle[index],
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 14)),
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> gradientImage = [
    'assets/pngs/gradient_1.png',
    'assets/pngs/gradient_2.png'
  ];

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

  List<String> ItemTitle = ['Buy anything', 'Pickup anything'];
  List<String> ItemSubtitle = [
    'Shop any item you want from any store',
    'Send items from point A to B'
  ];
}
