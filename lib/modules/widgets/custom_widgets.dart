import 'package:flutter/material.dart';

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
