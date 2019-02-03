import 'package:flutter/material.dart';
import '../ProjectManager.dart';


class ProjectsPage extends StatelessWidget {
  final List<Map<String,String>> projects;
  final Function addProject;
  final Function deleteProject;
  ProjectsPage(this.projects,this.addProject,this.deleteProject);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('choose'),
            ),
            ListTile(
              title: Text('Manage Projects'),
              onTap: () {
                Navigator.pushNamed(context ,'/admin' );
              }
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: new Text('Project Manager'),
      ),
      body: ProjectManager(projects,addProject,deleteProject),
    );
  }
}
