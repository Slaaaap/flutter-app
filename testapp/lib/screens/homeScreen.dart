import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Center(
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
