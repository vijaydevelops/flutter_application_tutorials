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
      body:
          // vertically centered the div uisng Center widget
          // using crossAxisAlignment in the Row child, works differently
          Container(
        color: Colors.teal,
        height: 500,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // MainAxisAlignment.end
          crossAxisAlignment:
              CrossAxisAlignment.center, // CrossAxisAlignment.stretch,
          // when only row is used, the row height is determined to be filled in the space available
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red, // Cannot provide both a color and a decoration
              width: 100,
              height: 100,
              child: Text("Using COntainer to create a box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              alignment: Alignment.center, // align the child
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red, // Cannot provide both a color and a decoration
              width: 100,
              height: 100,
              child: Text("Using COntainer to create a box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              alignment: Alignment.center, // align the child
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.red, // Cannot provide both a color and a decoration
              width: 100,
              height: 100,
              child: Text("Using COntainer to create a box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              alignment: Alignment.center, // align the child
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
