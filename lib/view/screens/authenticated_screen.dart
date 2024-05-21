import 'package:flutter/material.dart';

class AuthenticatedScreen extends StatelessWidget {
  const AuthenticatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
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
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffDDDDDD), width: 1.6),
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
