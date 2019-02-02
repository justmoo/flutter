import 'package:flutter/material.dart';
import 'dart:async';

class ProjectPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProjectPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
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
          ))),
    );
  }
}
