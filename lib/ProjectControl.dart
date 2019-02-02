import 'package:flutter/material.dart';

class ProjectControl extends StatelessWidget {
  final Function addProject;
  ProjectControl(this.addProject);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProject({
          'title': 'Project X',
          'image':
              'https://images.unsplash.com/photo-1532511555597-18d77974461a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1336&q=80'
        });
      },
      child: Text('Add project'),
    );
  }
}
