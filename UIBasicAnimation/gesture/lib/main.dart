import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //  Here our title for App Bar
          title: Text("Gesture"),
          centerTitle: true,
        ),
        body: new Center(
          child: GestureDetector(
            child: InkWell(
            onTap: () {
              print("Clicked Me");
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                // color: Colors.lightBlueAccent,r
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Center(child: Text('Click Me')),
            ),
            )
          ),
      )
    );
  }
}
