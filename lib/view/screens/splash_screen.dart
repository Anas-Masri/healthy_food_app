import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food/view/screens/login_screen.dart';
//import 'package:healthy_food/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        ));
      },
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
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
            Center(
              child: DropShadowImage(
                offset: const Offset(0, 4),
                scale: 1,
                blurRadius: 2,
                image: Image.asset(
                  'assets/images/mainLogo.png',
                  width: 495,
                  height: 402,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
