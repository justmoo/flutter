import 'package:flutter/material.dart';
import '../ProjectManager.dart';


class ProjectsPage extends StatelessWidget {
  final List<Map<String,dynamic>> projects;
 
  ProjectsPage(this.projects);
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
      body: ProjectManager(projects),
    );
  }
}
