import 'package:flutter/material.dart';
import 'package:nonton_id/screens/login_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Add a delay before navigating to the login screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const LoginScreen()), // Replace LoginScreen with your actual login screen widget
      );
    });
    return Scaffold(
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 150),
              SizedBox(
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 1.0,
                      ),
                      children: [
                        TextSpan(text: 'NONTON'),
                        TextSpan(
                          text: '-ID',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 473,
                    height: 633,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color(0xFF1c1a29),
                          ],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: const Image(
                        image: AssetImage('assets/images/unsplash.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
