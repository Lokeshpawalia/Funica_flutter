import 'package:flutter/material.dart';

// Black rounded Button

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.btName,
      this.icon,
      this.bgColor,
      this.callback});

  final String btName;

  final Icon? icon;

  final Color? bgColor;

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          callback!();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shadowColor: Colors.black38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            )),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Container(
                    width: 12,
                  ),
                  Text(
                    btName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            : Text(
                btName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}

// Button For Social media Login!!

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key,
      required this.socialMediaName,
      required this.icon,
      this.callback});

  final String socialMediaName;
  final Icon icon;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Set background color
        elevation: .05, // Add slight shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 8), // Adjust padding
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            socialMediaName,
            style: TextStyle(
              color: Colors.black, // Text color
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
