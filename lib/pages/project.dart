import 'package:flutter/material.dart';
import 'dart:async';

class ProjectPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  ProjectPage(this.title, this.imageUrl ,this.description);

_showWarningDialog(BuildContext context){
  showDialog(context: context ,builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Are you sure ?'),
                      content: Text('This action cannot be undone'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        FlatButton(
                          child: Text('Me Sure'),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context, true);
                          },
                        )
                      ],
                    );
                  });
}
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
              child: ListView(
          
            children: <Widget>[
              Image.network(imageUrl),
              Text(description),
              RaisedButton(
                child: Text('Delete'),
                onPressed:() => _showWarningDialog(context),
                  
                
              )
            ],
          ))),
    );
  }
}
