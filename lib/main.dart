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
      // body:Container(child: Text("Hi"))
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          // color: Colors.red, // Cannot provide both a color and a decoration
          width: 200,
          height: 200,
          child: Text("Using COntainer to create a box",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          alignment: Alignment.center, // align the child
          // constraints: ,
          // gradients, etc...
          decoration: BoxDecoration(
              color: Colors.red,
              // shape: BoxShape.circle,
              // clipBehavior: Clip.antiAlias,
              // Clip.antiAliasWithSaveLayer    // Clip.hardEdge

              borderRadius: BorderRadius.circular(10),
              // border:
              gradient: LinearGradient(colors: [Colors.blue, Colors.amber]),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 10),
              ]),
        ),
      ),
    );
  }
}
