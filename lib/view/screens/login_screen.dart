import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy_food/view/widgets/custom_button.dart';
import 'package:healthy_food/view/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (MediaQuery.of(context).size.width - 318) / 2),
          child: ListView(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/mainLogo.png',
                  fit: BoxFit.cover,
                ),
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
              const CustomButton(
                  borderThikness: 1,
                  buttonLable: 'Log in',
                  color: Color(0xffB6E5B9)),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_box_outline_blank,
                    color: Color.fromARGB(153, 3, 80, 20),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontFamily: 'Montaga',
                      color: Color.fromARGB(153, 3, 80, 20),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color(0xff035014),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const CustomButton(
                borderThikness: 2,
                buttonLable: 'Creat new account',
                color: Color(0xffe4f6e5),
              ),
            ],
          ),
        ));
  }
}
