import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatelessWidget {
  final List<String> imgList = [
    'https://plus.unsplash.com/premium_photo-1704583083883-515a77e7c16f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1pbi1zYW1lLXNlcmllc3wyfHx8ZW58MHx8fHx8',
    'https://plus.unsplash.com/premium_photo-1704855263482-e990af19da17?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D',
    'https://plus.unsplash.com/premium_photo-1704855263461-7cbbf3d1056a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D',
    'https://plus.unsplash.com/premium_photo-1704994789445-6e167937a9a7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHx8',
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen's height and width
    final screenHeight = MediaQuery.of(context).size.height * 0.5;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider Example'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              height: screenHeight, // Full screen height
              width: screenWidth, // Full screen width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imgList[index]),
                  fit: BoxFit.cover, // Ensures the image covers the container
                ),
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            aspectRatio: 1.0, // Keeps the width and height ratio 1:1
            viewportFraction: 1.0, // Makes sure the carousel takes full width
          ),
        ),
      ),
    );
  }
}
