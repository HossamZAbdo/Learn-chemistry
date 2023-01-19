import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../my_theme.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    required this.keyboardType,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      child: TextField(
        cursorColor: MyThemeData.kDarkGreenColor,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: GoogleFonts.poppins(
          color: MyThemeData.kDarkGreenColor,
          fontWeight: FontWeight.w600,
          fontSize: 15.0,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18.0),
          filled: true,
          fillColor: MyThemeData.kGinColor,
          prefixIcon: Icon(
            icon,
            size: 24.0,
            color: MyThemeData.kDarkGreenColor,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: MyThemeData.kDarkGreenColor,
            fontWeight: FontWeight.w600,
            fontSize: 15.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: MyThemeData.kGinColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: MyThemeData.kDarkGreenColor),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
