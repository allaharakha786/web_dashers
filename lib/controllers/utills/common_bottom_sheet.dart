import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context, {String title = "Your Text Here", required VoidCallback onButton1Pressed, required VoidCallback onButton2Pressed}) {
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
