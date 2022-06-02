import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_up_ui/routing/left_routing.dart';
import 'package:sign_in_up_ui/views/sign_in_view.dart';

import '../utilis/my_button.dart';
import '../utilis/my_textfield.dart';
import '../utilis/top_header.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(200, 100),
                    painter: Header(),
                  ),
                  Positioned(
                    top: 50,
                    right: 10,
                    child: Image.asset(
                      'assets/images/signup.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'First Name',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const MyTextField(
                hintText: 'John',
                inputType: TextInputType.text,
                obsecureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Surname',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const MyTextField(
                hintText: 'Doe',
                inputType: TextInputType.text,
                obsecureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Email',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const MyTextField(
                hintText: 'abcsd@gmail.com',
                inputType: TextInputType.emailAddress,
                obsecureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Password',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const MyTextField(
                hintText: '********',
                inputType: TextInputType.text,
                obsecureText: true,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Confirm Password',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const MyTextField(
                hintText: '********',
                inputType: TextInputType.text,
                obsecureText: true,
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                color: const Color(0xFFFF6347),
                onTap: () {},
                title: 'Sign Up 👉',
              ),
              const SizedBox(
                height: 12,
              ),
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    SlideLeftRoute(
                      page: const SignInView(),
                    ),
                  );
                },
                title: '👈 Sign In',
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
