import 'package:flutter/material.dart';
import '../ProjectManager.dart';

class HomePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    
    return new Scaffold(
          appBar: AppBar( title: new Text('Project Manager'),),
          body: ProjectManager(),


        );
  }


}