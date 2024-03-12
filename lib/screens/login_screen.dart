import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:nonton_id/models/bottom_navbar.dart';
import 'package:nonton_id/screens/daftar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1c1a29),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 200),
                Align(
                  alignment: Alignment.center,
                  child: Animate(
                    effects: const [FadeEffect(duration: Duration(seconds: 2))],
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
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      color: Colors.white,
                    ),
                  ).animate().shakeY(delay: const Duration(seconds: 1)).then(),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 284,
                  child: Column(
                    children: [
                      Animate(
                        effects: const [
                          SlideEffect(
                              begin: Offset(1.0, 0.0),
                              duration: Duration(seconds: 1))
                        ],
                        child: TextField(
                          controller: usernameController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: const TextStyle(color: Colors.white38),
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 60,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Animate(
                        effects: const [
                          SlideEffect(
                              begin: Offset(-1.0, 0.0),
                              duration: Duration(seconds: 1))
                        ],
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.white38),
                            prefixIcon: const Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 60,
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Belum Punya Akun?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white38,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DaftarScreen()),
                        );
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(usernameController.text),
                Text(passwordController.text),
                const SizedBox(height: 150),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: Animate(
                      effects: const [SlideEffect(begin: Offset(0.0, 1.0))],
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const NavigationScreen(),
                              transition: Transition.circularReveal,
                              duration: const Duration(seconds: 2));
                        },
                        child: const Text('Masuk'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
