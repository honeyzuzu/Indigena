import 'package:flutter/material.dart';
import 'searchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 16.0,fontFamily: 'Circe'),
          bodyLarge: TextStyle(fontSize: 20.0,fontFamily: 'Carelia'),
          // bodyText2: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),

        ), 
        scaffoldBackgroundColor: const Color(0xffefebe7)


      ),
      home: const SearchPage(title: 'Flutter Demo Home Page'),    );
  }
}

