import 'package:flutter/material.dart';
import './pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      title: 'FTC APP',
      home: AuthPage(),
    );
  }
}
