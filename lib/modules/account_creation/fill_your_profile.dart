import 'package:flutter/material.dart';
import 'package:funica/modules/widgets/custom_widgets.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({super.key});

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Fill Your Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            _buildProfileImage(),
            _buildTextField(
                hintText: "Full Name", keyboardType: TextInputType.name),
            _buildTextField(
                hintText: "Nickname", keyboardType: TextInputType.name),
            _buildTextField(
              hintText: "D.O.B",
              keyboardType: TextInputType.datetime,
              suffixIcon: Icons.calendar_month,
            ),
            _buildTextField(
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
              suffixIcon: Icons.email,
            ),
            _buildTextField(
              hintText: "Phone No",
              keyboardType: TextInputType.phone,
              suffixIcon: Icons.phone,
            ),
            _buildGenderDropdown(),
            const SizedBox(height: 16),
            CustomButton(
              btName: 'Continue',
              callback: () {},
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Expanded(
      flex: 3,
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage('images/profile.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required TextInputType keyboardType,
    IconData? suffixIcon,
  }) {
    return Expanded(
      flex: 1,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[100],
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, color: Colors.black54)
              : null,
        ),
        keyboardType: keyboardType,
      ),
    );
  }

  Widget _buildGenderDropdown() {
    return Expanded(
      flex: 1,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: "Gender",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[100],
        ),
        value: null,
        onChanged: (String? newValue) {
          print("Selected Gender: $newValue");
        },
        items: ["Male", "Female", "Other"].map((String gender) {
          return DropdownMenuItem<String>(
            value: gender,
            child: Text(gender),
          );
        }).toList(),
      ),
    );
  }
}
