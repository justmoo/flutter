import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  final List<String> projects;
  
    Projects(this.projects);

  @override

  Widget build(BuildContext context) {
    
   return Column(
  children:
   projects.map((element)=>
    Card(
       child: new Column(
         children: <Widget>[
          Image.network('https://images.unsplash.com/photo-1532511555597-18d77974461a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1336&q=80'),
           Text(element),
         ],

            ),


    ),
                   
  ).toList(),


   );
  }


}