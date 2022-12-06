import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
   test({Key? key,required this.detail}) : super(key: key);
var detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
    itemCount: detail.length,
    itemBuilder: (BuildContext context, int index) {
      String key = detail.keys.elementAt(index);
      return  Column(
        children: <Widget>[
           ListTile(
            title:  Text("$key"),
            subtitle:  Text(detail[key].toString()),
          ),
           const Divider(
            height: 2.0,
          ),
        ],
      );
    },
    ));
  }
}
