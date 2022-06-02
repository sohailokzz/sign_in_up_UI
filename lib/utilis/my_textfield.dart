import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
    required this.obsecureText,
  }) : super(key: key);
  final String hintText;
  final TextInputType inputType;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 327,
      child: TextField(
        keyboardType: inputType,
        obscureText: obsecureText,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffC8BCB9),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          contentPadding: const EdgeInsets.all(16),
          hintText: hintText,
        ),
      ),
    );
  }
}
