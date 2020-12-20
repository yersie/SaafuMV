import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'provider/auth_provider.dart';
import 'page/home_page.dart';
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
        title: 'Sign Up',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Consumer<Auth>(
          builder: (context, auth, child) =>
              auth.user != null ? HomePage() : SignUpPage(),
        ),
        routes: {
          HomePage.ROUTE: (_) => HomePage(),
          SignUpPage.ROUTE: (_) => SignUpPage(),
        },
      ),
    );
  }
}
