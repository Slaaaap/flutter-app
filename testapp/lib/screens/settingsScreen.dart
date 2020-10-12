import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appBar.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
