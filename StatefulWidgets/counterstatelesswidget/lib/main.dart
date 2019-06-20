import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Main Route
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Counter(),
//     );
//   }
// }

// class CounterDisplay extends StatelessWidget{
//   CounterDisplay({this.count});

//   final int count;
//   @override
//   Widget build(BuildContext context){
//     return Text('Count: $count');
//   }
// }

// // Counter Incrementor
// class CounterIncrementor extends StatelessWidget{
//   CounterIncrementor({this.onPressed});

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context){
//     return RaisedButton(
//       onPressed: onPressed,
//       child: Text('Increment'),
//     );
//   }
// }

// // Counter Stateful Widget
// class Counter extends StatefulWidget{
//   @override
//   _CounterState createState() => _CounterState();
// }

// // Counter State
// class _CounterState extends State<Counter>{
//   int _counter = 0;

//   // Function
//   void _increment(){
//     setState(() {
//       ++_counter;
//     });
//   }

//   @override
//   Widget build(BuildContext context){
//     return Row(
//       children: <Widget>[
//         CounterIncrementor(
//           onPressed: _increment,
//         ),
//         CounterDisplay(
//           count: _counter,
//         )
//       ],
//     );
//   }
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

// Incremnt Button Class
class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: FloatingActionButton(
          onPressed: onPressed,
          tooltip: 'Increment',
          child: Icon(Icons.add_alarm),
        ),
        ),
      ],
    );
  }
}

// Increment Value Show Class
class DisplayValue extends StatelessWidget {
  DisplayValue({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 350,),
        Text('Count: $count')
      ],
    );
  }
}

class _CounterState extends State<Counter> {
  int _counterVar = 0;

  // Increment Function
  void incrementFuction() {
    setState(() {
      ++_counterVar;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DisplayValue(
          count: _counterVar,
        ),
        CounterIncrementor(
          onPressed: incrementFuction,
        ),
      ],
    );
  }
}
