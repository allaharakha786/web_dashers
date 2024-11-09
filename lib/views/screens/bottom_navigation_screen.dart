import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/views/screens/home_screen.dart';
import 'package:web_dasher/views/screens/message_screen.dart';
import 'package:web_dasher/views/screens/myorder_screen.dart';
import 'package:web_dasher/views/screens/notification_screen.dart';

// ignore: must_be_immutable
class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});
  RxInt currentIndex = 0.obs;
  List<Widget> screen = [HomeScreen(), MyOrderScreen(), NotificationScreen(), MessageScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return screen[currentIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex.value,
            onTap: (value) {
              currentIndex.value = value;
            },
            items: [
              BottomNavigationBarItem(label: '', icon: Icon(Icons.home, color: currentIndex.value == 0 ? AppColors.primaryColor : Colors.grey)),
              BottomNavigationBarItem(label: '', icon: Image.asset('assets/pngs/order_icon.png', color: currentIndex.value == 1 ? AppColors.primaryColor : Colors.grey)),
              BottomNavigationBarItem(label: '', icon: Image.asset('assets/pngs/notification_icon.png', color: currentIndex.value == 2 ? AppColors.primaryColor : Colors.grey)),
              BottomNavigationBarItem(label: '', icon: Image.asset('assets/pngs/message_icon.png', color: currentIndex.value == 3 ? AppColors.primaryColor : Colors.grey))
            ]);
      }),
    );
  }
}
