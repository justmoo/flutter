import 'package:flutter/material.dart';


void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){

    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{
  List<String> _projects= ['project one'];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FTC APP',
      home: new Scaffold(
          appBar: AppBar( title: new Text('Project Manager'),),
          body: new Column(
          children: <Widget>[


                 Column(
                   children: _projects.map((element)=>
                          Card(
                        child: new Column(
                        children: <Widget>[
                          Image.network('https://images.unsplash.com/photo-1532511555597-18d77974461a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1336&q=80'),
                          Text(element),
                        ],

            ),


          ),
                   
                   ).toList(),

                 ),
                      
                 
             Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                         _projects.add("Project two");             
                  });
                },
                child: Text('Add project'),
              ),

            ),


          ],


        ),
      ),
    );
  }
}



