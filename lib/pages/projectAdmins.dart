import 'package:flutter/material.dart';
import './Project-create.dart';
import './Project-list.dart';

class ProjectsAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('choose'),
                ),
                ListTile(
                  title: Text('home page'),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, '/'
                    );
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Admin panel'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.create), text: "Create Projects"),
                Tab(icon: Icon(Icons.list), text: "List all Project")
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[ProjectCreatePage(), ProjectListPage()],
          ),
        ));
  }
}
