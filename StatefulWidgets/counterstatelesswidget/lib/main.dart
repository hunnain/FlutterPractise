import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// Main Route
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Counter(),
    );
  }
}

class CounterDisplay extends StatelessWidget{
  CounterDisplay({this.count});

  final int count;
  @override
  Widget build(BuildContext context){
    return Text('Count: $count');
  }
}

// Counter Incrementor
class CounterIncrementor extends StatelessWidget{
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

// Counter Stateful Widget
class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState(); 
}

// Counter State
class _CounterState extends State<Counter>{
  int _counter = 0;

  // Function
  void _increment(){
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        CounterIncrementor(
          onPressed: _increment,
        ),
        CounterDisplay(
          count: _counter,
        )
      ],
    );
  }
}