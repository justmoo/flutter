import 'package:flutter/material.dart';
import './Projects.dart';
import './ProjectControl.dart';

class ProjectManager extends StatelessWidget {
  final List<Map<String, String>> projects;
  final Function addProject;
  final Function deleteProject;

  ProjectManager(this.projects, this.addProject, this.deleteProject);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProjectControl(addProject),
      ),
      Expanded(child: Projects(projects, deleteProject: deleteProject))
    ]);
  }
}
