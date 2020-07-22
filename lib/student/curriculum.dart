import 'package:flutter/material.dart';

class curriculum extends StatelessWidget{
  final String pageText;

  curriculum(this.pageText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(pageText),),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
            ? _buildVerticalLayout(context)
            : _buildHorizontalLayout(context);
        },
      ),
    );
  }

  _buildVerticalLayout(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 8,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0,
        children: _getGridViewItems(context),
      ),
    );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = List<Widget>();
    for (int i = 0; i < 96; i++) {
      var widget = new Text('测试');
      allWidgets.add(widget);
    }
    return allWidgets;
  }

  _buildHorizontalLayout(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 12,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0,
        children: _getGridViewItems(context),
      ),
    );
  }
}

