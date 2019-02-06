import 'package:flutter/material.dart';

class ProjectCreatePage extends StatefulWidget {
  final Function addProject;

  ProjectCreatePage(this.addProject);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProjectCreatePageState();
  }
}

class _ProjectCreatePageState extends State<ProjectCreatePage> {
  String _titleValue = '';
  String _descriptionValue = '';
  double _pointsValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Points'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _pointsValue = double.parse(value);
              });
            },
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> project = {
                'title': _titleValue,
                'description': _descriptionValue,
                'points': _pointsValue,
                'image':'https://images.unsplash.com/photo-1478479474071-8a3014d422c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
              };
              widget.addProject(project);
              Navigator.pushReplacementNamed(context, '/projects');
            },
          )
        ],
      ),
    );
  }
}
