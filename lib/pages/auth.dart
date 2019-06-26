import 'package:flutter/material.dart';

import 'package:flutter_course/pages/products.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String emailValue = "";
  String passwordValue = "";
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.85),
                    border: InputBorder.none,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      emailValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.85),
                      border: InputBorder.none),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      passwordValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                  ),
                  child: SwitchListTile(
                    title: Text('Accept Terms'),
                    onChanged: (bool value) {
                      setState(() {
                        acceptTerms = value;
                      });
                    },
                    value: acceptTerms,
                  ),
                ),
                FlatButton(
                  child: Text('Login'),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
