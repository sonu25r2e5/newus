import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0x00ee7600), primarySwatch: Colors.purple,),
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
