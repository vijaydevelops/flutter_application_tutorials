import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  // WidgetApp - no in built designs much
  // Material App
  // Cupertino App (human interface design just like in ios)
  /// can be passed to runApp

  // runApp(WidgetsApp(color: color));
  // runApp(MaterialApp());
  // runApp(CupertinoApp());

  /*
  runApp(MaterialApp(
    home: Container(
      color: Colors.amber,
      child: Text("Hi Flutter demo"),
    ),
  ));
  */

  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      color: Colors.amber,
      child: Text("Hi Flutter super demo"),
    );
    */
    // using another widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Its new app..."),
      ),
      body: Container(
        child: Text("Its new app body..."),
      ),
    );
  }
}
