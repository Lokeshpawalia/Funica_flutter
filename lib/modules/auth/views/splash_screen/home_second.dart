import 'package:flutter/material.dart';
import 'package:funica/modules/widgets/custom_widgets.dart';

import '../../../account_creation/let_you_in.dart'; // Import LetYouIn page

class HomeSecond extends StatefulWidget {
  const HomeSecond({super.key});

  @override
  State<HomeSecond> createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  int currentIndex = 0;

  final List<Map<String, String>> contentList = [
    {
      'image': 'images/bedRoom.jpg',
      'text': 'We provide high quality product just for you',
    },
    {
      'image': 'images/laptop.jpg',
      'text': 'Your satisfaction is our number one priority',
    },
    {
      'image': 'images/flowerpotBrickWall.jpg',
      'text': 'Lets fulfill your house needs with Funica right now!',
    },
  ];

  void nextContent() {
    if (currentIndex < contentList.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      // Navigate to LetYouIn screen when reaching the last content
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LetYouIn()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenheight * 0.5,
            child: Image.asset(
              contentList[currentIndex]['image']!,
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: screenheight * 0.3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  contentList[currentIndex]['text']!,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Dots Indicator
          Container(
            height: screenheight * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contentList.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 8,
                  width: currentIndex == index ? 25 : 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: screenheight * 0.06,
            child: CustomButton(
              btName: currentIndex == contentList.length - 1
                  ? 'Get Started'
                  : 'Next',
              callback: nextContent,
            ),
          ),
        ],
      ),
    );
  }
}

//SizedBox(
//   width: double.infinity,
//   child: ElevatedButton(
//     onPressed: nextContent,
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.black,
//       padding: EdgeInsets.symmetric(vertical: 16),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(30),
//       ),
//     ),
//     child: Text(
//       currentIndex == contentList.length - 1 ? 'Get Started' : 'Next',
//       style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.white),
//     ),
//   ),
// ),
