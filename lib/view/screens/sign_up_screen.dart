import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy_food/core/constant/colors.dart';
import 'package:healthy_food/view/widgets/custom_button.dart';
import 'package:healthy_food/view/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color(0xffB6E5B9).withOpacity(0.25),
                  const Color(0xffF2FFF3).withOpacity(0.25),
                  const Color(0xffF2FFF3).withOpacity(0.25),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
            ),
            Padding(
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
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: const Color(0xff035014)),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent),
                          ),
                          const Icon(
                            FontAwesomeIcons.camera,
                            size: 40,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: kfillColor,
                            border: Border.all(color: const Color(0xffD7DDDB)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Certificate PDF file  ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA3C5B0),
                                fontFamily: 'Cabin',
                              ),
                            ),
                            Icon(
                              Icons.cloud_upload_outlined,
                              color: Color(0xffA3C5B0),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
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
            ),
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(179, 176, 235, 180)
                          .withOpacity(0.35),
                      blurRadius: 25,
                      spreadRadius: 25,
                    )
                  ],
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(150))),
            ),
          ],
        ));
  }
}
