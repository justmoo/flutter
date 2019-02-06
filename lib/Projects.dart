import 'package:flutter/material.dart';


class Projects extends StatelessWidget {
  final List<Map<String, dynamic>> projects;
  

  Projects(this.projects);

  Widget _buidProjects(BuildContext context, int index) {
    return Card(
      child: new Column(
        children: <Widget>[
          Image.network(projects[index]['image']),
          Text(projects[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Details',
                ),
                onPressed: () => Navigator.pushNamed<bool>(
                      context, '/project/' +index.toString()
                      
                    )
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProjectList() {
    Widget projectCard = Center(
      child: Text('No Projects , YAY'),
    );
    if (projects.length > 0) {
      projectCard = ListView.builder(
        itemBuilder: _buidProjects,
        itemCount: projects.length,
      );
    }
    return projectCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProjectList();
  }
}
