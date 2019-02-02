import 'package:flutter/material.dart';
import './Projects.dart';
import './ProjectControl.dart';

class ProjectManager extends StatefulWidget {
final Map startingProject;

ProjectManager({this.startingProject});
@override
  State<StatefulWidget> createState() {
    
    return _ProjectManager();
  }

}


class _ProjectManager extends State<ProjectManager>{
  
   List<Map<String, String>> _projects =[];
@override
  void initState() {
    super.initState();
    if (widget.startingProject !=null){
    _projects.add(widget.startingProject);  

    }
    
    
  }

  void _addProject( Map<String, String> project) {
     setState(() {
      _projects.add(project);             
                  });
  }

  void _deleteProject(int index){
    setState(() {
          _projects.removeAt(index);
        });


  }
  @override
    Widget build(BuildContext context) {
      
      return  Column(
        children: <Widget>[
           Container(
              margin: EdgeInsets.all(10.0),
              child: ProjectControl(_addProject),

            ),

            Expanded( child: Projects(_projects , deleteProject : _deleteProject))

        ]

      );
    }
}