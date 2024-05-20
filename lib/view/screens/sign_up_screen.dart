import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy_food/view/widgets/custom_button.dart';
import 'package:healthy_food/view/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (MediaQuery.of(context).size.width - 318) / 2),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130,
                    width: 260,
                    child: Image.asset(
                      'assets/images/mainLogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 95,
                        height: 95,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: const Color(0xff035014)),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent),
                      ),
                      const Icon(
                        FontAwesomeIcons.camera,
                        size: 45,
                        color: Color(0xff035014),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const CustomTextFormField(
                emptyIcon: true,
                labelText: 'Username',
                icon: FontAwesomeIcons.mobile,
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                icon: (FontAwesomeIcons.penToSquare),
                labelText: 'email',
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                emptyIcon: true,
                labelText: 'Mobile Number',
                icon: FontAwesomeIcons.mobile,
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                labelText: 'Password',
                icon: FontAwesomeIcons.eyeSlash,
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                labelText: 'Confirm Password',
                icon: FontAwesomeIcons.eyeSlash,
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomButton(
                  borderThikness: 1,
                  buttonLable: 'Sign up',
                  color: Color(0xffB6E5B9)),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?  ',
                    style: TextStyle(
                      fontFamily: 'Cabin',
                      color: Color(0xff035014),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontFamily: 'Cabin',
                      color: Color(0xff25A340),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
