import 'package:flutter/material.dart';

class curriculum extends StatelessWidget{
  final String pageText;

  curriculum(this.pageText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(pageText),),
      body: Center(

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            DataTable(

              columns: [
                DataColumn(label: Text("节次")),
                DataColumn(label: Text("周日")),
                DataColumn(label: Text("周一")),
                DataColumn(label: Text("周二")),
                DataColumn(label: Text("周三")),
                DataColumn(label: Text("周四")),
                DataColumn(label: Text("周五")),
                DataColumn(label: Text("周六")),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('6')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('7')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('8')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('9')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
                DataRow(cells: [
                  DataCell(Text('12')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                  DataCell(Text('数学')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}