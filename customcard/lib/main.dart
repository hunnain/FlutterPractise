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
      home: Center(
  child: Column(
    children: <Widget>[
      Container(
        color: Colors.red,
        width: 100.0,
        height: 100.0,
      ),
      Container(
        color: Colors.blue,
        width: 100.0,
        height: 100.0,
      ),
      Container(
        color: Colors.green,
        width: 100.0,
        height: 100.0,
      ),
    ],
  ),
),
    );
  }
}



// class CustomCard extends StatelessWidget {
//   CustomCard({
//     // @required this.index, 
//     @required this.onPress
//   })
//   // final index;
//    Function onPress;

//   @override
//   Widget build(BuildContext context) {
    
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Text('Card '),
//           FlatButton(
//             child: const Text('Press'),
//             onPressed: this.onPress,
//           ),
//         ],
//       )
//     );
//   }
// }
