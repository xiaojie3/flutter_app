import 'package:flutter/material.dart';
import 'package:flutter_app/student/curriculum.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement createState
    return Scaffold(
      appBar: AppBar(title: new Text(""),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("首页"),
              selected: true,
            ),
            ListTile(
              title: Text("课表"),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return curriculum('课表');
                }));
              },
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
            ListTile(
              title: Text("菜单3"),
            ),
          ],
        ),
      ),
      body: Center(  //中央内容部分body
        child: Text('HomePage',style: new TextStyle(fontSize: 35.0),),
      ),
    );
  }

}