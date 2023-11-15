import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_pratice/components/index.dart';
import 'package:login_app_pratice/screens/signup.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pswdController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/linear_back.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: SizedBox(
                  height: 160,
                  width: 160,
                  child: ClipOval(
                    child: Image.asset(
                      "images/guy.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sign In',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 290,
                child: MyTextField(
                  hint: "Email",
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 15,
                width: double.infinity,
              ),
              SizedBox(
                width: 290,
                child: MyTextField(
                  controller: pswdController,
                  hint: "Password",
                  obscure: true,
                ),
              ),
              const SizedBox(
                height: 15,
                width: double.infinity,
              ),
              SizedBox(
                width: 289,
                child: Text(
                  'Forgot Your Password?',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.inter(
                    color: const Color(0xFF5F5F5F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
                width: double.infinity,
              ),
              RoundedButton(
                onPressed: () {},
                text: "Sign in",
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 272,
                height: 17,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF5F5F5F),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Or',
                      style: TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF5F5F5F),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgButton(
                    path: "google",
                    onPressed: () {},
                  ),
                  SvgButton(
                    path: "facebook",
                    onPressed: () {},
                  ),
                  SvgButton(
                    path: "linkedin",
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account.',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF5F5F5F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => const SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF22577A),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
