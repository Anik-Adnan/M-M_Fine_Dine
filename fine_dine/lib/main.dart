import 'package:fine_dine/homepage/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 24.0),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 24.0,
        ),
        )
      ),
      home: const HomePage(),
    );
  }
}
