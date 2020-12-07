import 'package:flutter/material.dart';
import 'package:snapchatui/screens/authentication_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Snapchat UI ',
      theme: ThemeData(
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthenticationScreen(),

    );
  }
}
