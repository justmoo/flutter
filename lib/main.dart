import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/projectAdmins.dart';
import './pages/projects.dart';
import './pages/project.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _projects = [];

  void _addProject(Map<String, dynamic> project) {
    setState(() {
      _projects.add(project);
    });
  }

  void _deleteProject(int index) {
    setState(() {
      _projects.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      title: 'FTC APP',
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/projects': (BuildContext context) =>
            ProjectsPage(_projects ),
        '/admin': (BuildContext context) => ProjectsAdmin(_addProject, _deleteProject)
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name.split('/');
        if (pathElement[0] != '') {
          return null;
        }
        if (pathElement[1] == 'project') {
          final int index = int.parse(pathElement[2]);

          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProjectPage(
                _projects[index]['title'], _projects[index]['image'], _projects[index]['description'], _projects[index]['points'] ),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                ProjectsPage(_projects));
      },
    );
  }
}
