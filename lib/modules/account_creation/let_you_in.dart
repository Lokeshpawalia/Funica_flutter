import 'package:flutter/material.dart';
import 'package:funica/modules/account_login/login_account.dart';
import 'package:funica/modules/widgets/custom_widgets.dart';
import 'create_account.dart';

class LetYouIn extends StatefulWidget {
  const LetYouIn({super.key});

  @override
  State<LetYouIn> createState() => _LetYouInState();
}

class _LetYouInState extends State<LetYouIn> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
              height: screenHeight * 0.2,
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('images/icon.png', fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(height: 70),
            Text(
              "Let's you in",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 70),
            // Social Sign-In Buttons

            Column(
              children: [
                SocialButton(
                    socialMediaName: 'Continue with Facebook',
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 20,
                    )),
                SizedBox(
                  height: 15,
                ),
                SocialButton(
                    socialMediaName: 'Continue with Google',
                    icon: Icon(
                      Icons.g_translate,
                      color: Colors.greenAccent,
                    )),
                SizedBox(
                  height: 15,
                ),
                SocialButton(
                    socialMediaName: 'Continue with Apple',
                    icon: Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 25,
                    )),
              ],
            ),

            const SizedBox(height: 50),

            // OR Divider
            Row(
              children: [
                Expanded(
                  child: Divider(
                      thickness: 2, color: Colors.black.withOpacity(0.3)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("or",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            CustomButton(
              btName: 'Sign in with password',
              callback: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginAccount()));
              },
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateAccount()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Sign up",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
