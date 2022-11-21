import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class PersonRoutePage extends StatelessWidget {
  static const String routeName = '/person';

  @override
  Widget build(BuildContext context) {
    final String _msg = '我的';

    return Scaffold(
      appBar: AppBar(
        title: Text('用户中心'),
      ),
      body: Center(
          child: Column(children: [
        Text(_msg),
        CupertinoButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            })
      ])),
    );
  }
}
