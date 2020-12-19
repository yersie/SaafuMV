import 'package:SaafuMV/page/home_page.dart';
import 'package:SaafuMV/page/sign_in_page.dart';
import 'package:SaafuMV/page/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
        'Home': (context) => HomeScreen(),
      },
    );
  }
}
