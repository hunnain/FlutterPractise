import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _star1 = false;
  bool _star2 = false;
  bool _star3 = false;
  bool _star4 = false;
  bool _star5 = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(onTap: (){setState(() {
              _star1 = true;
            });},onDoubleTap: (){
              setState(() {
                _star1 = false;
              });
            }, child: Icon(Icons.star, color: _star1 ?  Colors.green[500] : Colors.black,),),
            GestureDetector(onTap: (){setState(() {
              _star2 = true;
            });},onDoubleTap: (){
              setState(() {
                _star2 = false;
              });
            }, child: Icon(Icons.star, color: _star2 ?  Colors.green[500] : Colors.black,),),
            GestureDetector(onTap: (){setState(() {
              _star3 = true;
            });},onDoubleTap: (){
              setState(() {
                _star3 = false;
              });
            }, child: Icon(Icons.star, color: _star3 ?  Colors.green[500] : Colors.black,),),
            GestureDetector(onTap: (){setState(() {
              _star4 = true;
            });},onDoubleTap: (){
              setState(() {
                _star4 = false;
              });
            }, child: Icon(Icons.star, color: _star4 ?  Colors.green[500] : Colors.black,),),
            GestureDetector(onTap: (){setState(() {
              _star5 = true;
            });},onDoubleTap: (){
              setState(() {
                _star5 = false;
              });
            }, child: Icon(Icons.star, color: _star5 ?  Colors.green[500] : Colors.black,),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
