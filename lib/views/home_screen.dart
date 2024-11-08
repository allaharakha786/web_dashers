import 'package:flutter/material.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
