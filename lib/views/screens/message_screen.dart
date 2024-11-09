import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(height: mediaQuerySize.height, width: mediaQuerySize.width, child: Center(child: Text('No messages'))),
    );
  }
}
