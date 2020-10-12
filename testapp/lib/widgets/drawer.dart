import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(Icons.home, size: 18, color: Colors.black)),
                  TextSpan(
                      text: " Accueil",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(Icons.apps, size: 18, color: Colors.black)),
                  TextSpan(
                      text: " Apps",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/apps');
            },
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child:
                          Icon(Icons.settings, size: 18, color: Colors.black)),
                  TextSpan(
                      text: " Paramètres",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child:
                          Icon(Icons.exit_to_app, size: 18, color: Colors.red)),
                  TextSpan(
                      text: " Se déconnecter",
                      style: TextStyle(color: Colors.red, fontSize: 18)),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    ));
  }
}
