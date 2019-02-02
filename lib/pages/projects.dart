import 'package:flutter/material.dart';
import '../ProjectManager.dart';
import './projectAdmins.dart';

class ProjectPage extends StatelessWidget {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProjectsAdmin()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: new Text('Project Manager'),
      ),
      body: ProjectManager(),
    );
  }
}
