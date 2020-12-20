import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'provider/auth_provider.dart';

import 'page/home_page.dart';
import 'page/sign_in_page.dart';
import 'page/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: MaterialApp(
        title: 'Sign Up Screen ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        // home: Consumer<Auth>(
        //   builder: (context, auth, child) =>
        //       auth.user != null ? HomePage() : SignInPage(),
        // ),
        initialRoute: HomePage.ROUTE,
        routes: {
          HomePage.ROUTE: (context) => HomePage(),
          SignInPage.ROUTE: (context) => SignInPage(),
          SignUpPage.ROUTE: (context) => SignUpPage(),
        },
      ),
    );
  }
}
