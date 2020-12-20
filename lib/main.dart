import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './page/home_page.dart';
import './page/sign_in_page.dart';
import './page/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: 'Sign Up Screen ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: SignUpPage.ROUTE,
      // initialRoute: HomePage.ROUTE,
      routes: {
        SignInPage.ROUTE: (context) => SignInPage(),
        SignUpPage.ROUTE: (context) => SignUpPage(),
        HomePage.ROUTE: (context) => HomePage(),
      },
    );
  }
}
