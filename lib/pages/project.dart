import 'package:flutter/material.dart';
import 'dart:async';

class ProjectPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double points;

  ProjectPage(this.title, this.imageUrl, this.description, this.points);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure ?'),
            content: Text('This action is problematic'),
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
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 19.0),
                ),
              ),
              Container( 
                
                 decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                child: Text('₿ '+points.toString(), style: TextStyle(fontSize: 17),),
              ),
              RaisedButton(
                child: Text('Take it'),
                onPressed: () => _showWarningDialog(context),
              )
            ],
          ))),
    );
  }
}
