import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Counter(title:"App Title"),
    );
  }
}

// Counter Widgets
class Counter extends StatefulWidget {
    Counter({Key key, this.title}) : super(key: key);
  // This class is the configuration for the state. It holds the
  // values (in this case nothing) provided by the parent and used by the build
  // method of the State. Fields in a Widget subclass are always marked "final".
  final String title;
  @override
  _CounterState createState() => _CounterState();
}

// Counter State Widget
class _CounterState extends State<Counter>{
  // Integer Value of Counter
  int _counter = 0;

  // Increment Function that call setState
  void incrementFunction(){
    setState(() {
      _counter ++;
      print('Counter Value $_counter');
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appbar:AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Counter: $_counter',style: TextStyle(color: Colors.blue,decoration: TextDecoration.none)),
      ),
      FloatingActionButton(
          onPressed: incrementFunction,
          tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}