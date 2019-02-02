import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final String title;
  final String imageUrl ;

  ProjectPage(this.title , this.imageUrl)

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text(title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(imageUrl),
            RaisedButton(
              child: Text('Delete'),
              onPressed: () => Navigator.pop(context, true),
            )
          ],
        )));
  }
}
