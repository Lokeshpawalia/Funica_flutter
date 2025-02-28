import 'package:flutter/material.dart';

import 'home_second.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({super.key});

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      precacheImage(AssetImage('bedRoom.jpg'), context);
      precacheImage(AssetImage('flowerpotBrickWall.jpg'), context);
      precacheImage(AssetImage('laptop.jpg'), context);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeSecond()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/home.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to ',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Funica ',
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                'The best furniture e-commerce app of the century for your daily needs!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 19,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
