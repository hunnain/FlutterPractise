import 'package:flutter/material.dart';

void main() => runApp(HomeWidget());

class HomeWidget extends StatelessWidget{
  @protected
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyScaffold(),
    );
  }
}

class MyAppBar extends StatelessWidget{
    MyAppBar({
      this.title
    });
    final Widget title;

    @override
    Widget build(BuildContext context){
      return Container(
        height: 86.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.red[500]),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu',
              onPressed: (){print("Icon Pressed");},
            ),
            Expanded(child: title,)
          ],
        ),
      );
    }
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
       child: Column(
         children: <Widget>[
           MyAppBar(
             title: Text('Example Title'),
           ),
           Expanded(
             child: Center(
               child: Text('Hello World!'),
             ),
           )
         ],
       ),
    );
  }
}