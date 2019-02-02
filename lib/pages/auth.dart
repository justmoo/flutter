import 'package:flutter/material.dart';
import './projects.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Auth Page'),
      ),
      body: Center(
        child: RaisedButton(
          child:  Text('Login'),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProjectPage()));
          },
        ),
      ),
    );
    
  }
}
