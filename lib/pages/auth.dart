import 'package:flutter/material.dart';
import './projects.dart';
class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body:Center( child: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'E-Mail'),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                setState(() {
                  _emailValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('LOGIN'),
              onPressed: () {
                
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ],
        ),
      ),
    ));
  }
}

