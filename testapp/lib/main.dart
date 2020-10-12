import 'package:flutter/material.dart';
import './screens/appsScreen.dart';
import './screens/homeScreen.dart';
import './screens/loginScreen.dart';
import './screens/settingsScreen.dart';
import './screens/profileScreen.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final primaryColor = Color(0xff01A0C7);
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Sl\'app - Bienvenue';
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        title: appTitle,
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/login': (context) => MyCustomForm(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home': (context) => HomeScreen(),
          '/apps': (context) => AppsScreen(),
          '/settings': (context) => SettingsScreen(),
          '/profile': (context) => ProfileScreen(),
        },
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Color(0xff2F3B4C),
        ),
        home: Scaffold(
          body: MyCustomForm(),
        ),
      ),
    );
  }
}
