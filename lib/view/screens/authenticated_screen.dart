import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthenticatedScreen extends StatelessWidget {
  const AuthenticatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xffcecece),
                    )),
                Center(
                  child: Image.asset(
                    width: 220,
                    height: 120,
                    'assets/images/mainLogo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 30),
                  child: Text(
                    'Verification Code',
                    style: TextStyle(
                        fontFamily: 'Montaga',
                        color: Color(0xff035014),
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'We have sent the verification code to your email address',
                    style: TextStyle(
                        fontFamily: 'Montaga',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                PinCodeTextField(
                  pinTheme: PinTheme(
                    borderWidth: 1.8,
                    activeColor: const Color(0XFFDDDDDD),
                    selectedColor: const Color(0XFF035014),
                    inactiveColor: const Color(0XFFDDDDDD),
                    shape: PinCodeFieldShape.circle,
                    fieldWidth: 60,
                  ),
                  appContext: context,
                  length: 6,
                ),
                const Center(
                    child: Text(
                  '03:00',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF035014)),
                )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Send Again',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF035014)),
                    ))
              ],
            ),
          ),
        ));
  }
}
