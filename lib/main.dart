import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nonton_id/movies_screen/movie_screen.dart';
import 'package:nonton_id/movies_screen/movie_screen2.dart';
import 'package:nonton_id/movies_screen/movie_screen3.dart';
import 'package:nonton_id/movies_screen/movie_screen4.dart';
import 'package:nonton_id/movies_screen/movie_screen5.dart';
import 'package:nonton_id/movies_screen/movie_screen6.dart';
import 'package:nonton_id/screens/app_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/movie1': (context) => const MovieScreen(),
        '/movie2': (context) => const MovieScreen2(),
        '/movie3': (context) => const MovieScreen3(),
        '/movie4': (context) => const MovieScreen4(),
        '/movie5': (context) => const MovieScreen5(),
        '/movie6': (context) => const MovieScreen6(),
      },
      home: const AppScreen(),
    );
  }
}
