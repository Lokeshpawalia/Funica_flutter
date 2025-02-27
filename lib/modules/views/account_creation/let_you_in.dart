import 'package:flutter/material.dart';
import 'package:funica/modules/views/account_creation/create_account.dart';
import 'package:funica/modules/views/account_login/login_account.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LetYouIn extends StatefulWidget {
  const LetYouIn({super.key});

  @override
  State<LetYouIn> createState() => _LetYouInState();
}

class _LetYouInState extends State<LetYouIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Center(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('images/icon.png', fit: BoxFit.fill),
              ),
            ),
            const SizedBox(height: 70),
            Text("Let's you in",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,),),

            const SizedBox(height: 70),
            // Social Sign-In Buttons
            SizedBox(
              width: double.infinity,
              child: SignInButton(Buttons.facebook,
                  text: "Continue with Facebook", onPressed: () {}),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: SignInButton(Buttons.google,
                  text: "Continue with Google", onPressed: () {}),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: SignInButton(Buttons.apple,
                  text: "Continue with Apple", onPressed: () {}),
            ),

            const SizedBox(height: 50),

            // OR Divider
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 2, color: Colors.black.withOpacity(0.3)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("or",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
                Expanded(
                  child: Divider(thickness: 2,color: Colors.black.withOpacity(0.3),),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Sign In with Password Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginAccount()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                child: Text('Sign in with password',
                    style: TextStyle(fontSize: 16,color: Colors.white)),
              ),
            ),

            const SizedBox(height: 40),

            // Sign Up Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreateAccount()));
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
