import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_up_ui/views/sign_up_view.dart';

import '../routing/right_routing.dart';
import '../utilis/my_button.dart';
import '../utilis/my_textfield.dart';
import '../utilis/top_header.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

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
                    size: const Size(200, 200),
                    painter: Header(),
                  ),
                  Positioned(
                    right: 10,
                    child: Image.asset(
                      'assets/images/loginman.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Sign In',
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Email',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const MyTextField(
                hintText: 'khan@gmail.com',
                inputType: TextInputType.emailAddress,
                obsecureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const MyTextField(
                hintText: '********',
                inputType: TextInputType.text,
                obsecureText: true,
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                color: const Color(0xFFFF6347),
                onTap: () {},
                title: 'Sign In 👋',
              ),
              const SizedBox(
                height: 12,
              ),
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    SlideRightRoute(
                      page: const SignUpView(),
                    ),
                  );
                },
                title: 'Sign Up 👉',
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
