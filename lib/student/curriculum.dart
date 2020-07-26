import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class curriculum extends StatelessWidget {
  final String pageText;

  curriculum(this.pageText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(pageText),
      ),
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
    return Table(
      border: TableBorder.all(width: 1.0, color: Colors.purpleAccent),
      children: _getXq(context),
    );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = List<Widget>();
    for (int i = 0; i < 7; i++) {
      var widget = new Text('测试');
      allWidgets.add(widget);
    }
    return allWidgets;
  }

  _getXq(BuildContext context) {
    List<String> xq = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
    height = (MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight -
            30) /
        6;
    int qs = 7;
    List<TableRow> rows = List<TableRow>();
    List<Widget> list = List<Widget>();
    list.add(_getKbXq('7月'));
    for (int i = -1; i < 6; i++) {
      list.add(_getKbXq(xq[(qs + i) % 7]));
    }
    rows.add(TableRow(children: list));
    for (int i = 1; i <= 6; i++) {
      List<Widget> list2 = List<Widget>();
      list2.add(_getTableCell(i.toString(),context));
      for (int i = -1; i < 6; i++) {
        list2.add(_getTableCell((height).toString(),context));
      }
      rows.add(TableRow(children: list2));
    }
    return rows;
  }

  double height = 0;

  _getTableCell(String text,BuildContext context) {
    return TableCell(
      child: Container(
          alignment: Alignment.center,
          height: height,
          child: GestureDetector(
            child: Text(text),
            onTap:  () {
              showDialog<Null> (
                context: context,
                builder: (BuildContext context) {
                  return new SimpleDialog(
                    //title: Text(await _getHttp()),
                    children: <Widget>[
                      new SimpleDialogOption(
                        child: new Text('http://desktop-9dqtrdr:81/login'),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: 'http://192.168.1.115:81/login'));
                        },
                      ),
                      new SimpleDialogOption(
                        child: new Text('选项 2'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              ) ;
          }
          )),
    );
  }

  _getKbXq(String text) {
    return TableCell(
      child:
          Container(alignment: Alignment.center, height: 30, child: Text(text)),
    );
  }

  Future<String> _getHttp() async {
    Response response;
    try {
      response = await Dio().get("http://www.google.com");
      //print(response);
    } catch (e) {
      print(e);
    }
    return response.data.toString();
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
