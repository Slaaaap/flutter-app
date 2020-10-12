import 'package:flutter/material.dart';

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  String email, password;

  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      cursorColor: Colors.white,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Login",
        hintStyle: TextStyle(color: Color(0xffC0CAD8)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.0)),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Veuillez saisir une adresse mail';
        } else {
          email = value;
        }
        return null;
      },
    );

    final passwordField = TextFormField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        hintStyle: TextStyle(color: Color(0xffC0CAD8)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.0)),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Veuillez saisir un mot de passe';
        } else {
          password = value;
        }
        return null;
      },
    );

    final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            // Check erreurs form
            if (_formKey.currentState.validate()) {
              // Si pas d'erreur, check des identifiants
              if (email == "mattgrenier33@gmail.com" && password == "matt") {
                // Scaffold.of(context)
                //     .showSnackBar(SnackBar(content: Text('Yo mec')));
                // Navigator.of(context).push(_createRoute("home"));
                Navigator.pushNamed(context, '/home');
              }
            }
          },
          child: Text("Se connecter",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ));

    // Build a Form widget using the _formKey created above.
    final form = Form(
        key: _formKey,
        child: Container(
          color: Color(0xff2F3B4C),
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 15.0),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButton,
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ));

    return Scaffold(
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Container(
                    color: Color(0xff2F3B4C),
                    child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(children: <Widget>[
                          SizedBox(height: 120.0),
                          form,
                        ]))))));
  }
}
