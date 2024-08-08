import 'package:flutter/material.dart';
import 'package:flutter_application_2/tokopedia_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dylan',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(176, 34, 255, 0)),
        useMaterial3: true,
      ),
      home: LoginTokopedia(),
      
    );
  }
}
