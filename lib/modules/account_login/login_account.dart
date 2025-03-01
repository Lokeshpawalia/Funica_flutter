import 'package:flutter/material.dart';
import 'package:funica/modules/account_creation/fill_your_profile.dart';

import '../account_creation/create_account.dart';

class LoginAccount extends StatefulWidget {
  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  bool _isChecked = false;
  bool _isObscured = true;

  Widget _buildSocialButton(IconData icon, Color color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 5),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: 24),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Expanded(
        flex: 2,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('images/icon.png', fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 60),
              Text(
                "Login to Your Account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.black54),
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.grey[100], // Light background color
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: _isObscured,
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.lock_open_outlined, color: Colors.black54),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100], // Light background color
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: Colors.black,
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FillYourProfile()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Text('Sign Up',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),

              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                        thickness: 2, color: Colors.black.withOpacity(0.3)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton(Icons.facebook, Colors.blue),
                  SizedBox(width: 15),
                  _buildSocialButton(Icons.g_mobiledata, Colors.black),
                  SizedBox(width: 15),
                  _buildSocialButton(Icons.apple, Colors.black),
                ],
              ),
              const SizedBox(height: 40),

              // Sign Up Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account", style: TextStyle(fontSize: 16)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateAccount()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
