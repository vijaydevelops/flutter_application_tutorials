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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Its new app..."),
      ),
      // body:Container(child: Text("Hi"))
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(children: <Widget>[
                Image.asset("assets/vijay.png",
                    // width: 200,
                    fit: BoxFit.contain),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Update after click",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter the name",
                        labelText: "Name",
                        border: OutlineInputBorder()),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.send),
        // mini: true,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            /*
            DrawerHeader(
              child: Text("Here comes the drawer"),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            */
            UserAccountsDrawerHeader(
              accountName: Text("Vijayakumar S"),
              accountEmail: Text("vijaynetdevaiml@gmail.com"),
              /*
              currentAccountPicture: 
              Image.network(
                "https://images.unsplash.com/photo-1659699119176-75498038be71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80"),
              */
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1659699119176-75498038be71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80")),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Vijayakumar S"),
              subtitle: Text("Software Developer"),
              trailing: Icon(
                  Icons.edit), // anything other than icon can also be added
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("vijaynetdevaiml@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
