import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/image/Group 31.png', height: 170),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
