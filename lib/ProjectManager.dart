import 'package:flutter/material.dart';
import './Projects.dart';


class ProjectManager extends StatelessWidget {
  final List<Map<String, dynamic>> projects;
 

  ProjectManager(this.projects);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
     
      Expanded(child: Projects(projects))
    ]);
  }
}
