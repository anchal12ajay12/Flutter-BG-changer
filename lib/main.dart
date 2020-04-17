import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Random Background'),
          ),       
          
          body: HomePage(),
          
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List colors= [
      Colors.amber,
      Colors.orange,
      Colors.lightGreen,
      Colors.deepPurple,
      Colors.yellowAccent,
      Colors.pink,
      Colors.blue,
      Colors.brown,
      Colors.red,
      Colors.indigo
  ];
  
  var currentColor = Colors.grey[300];

  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
             color: currentColor,
             child: Center(
               child: RaisedButton(
                 onPressed: setRandomColor,
                 textColor: currentColor,
                child: Text('Change BG Color',style: TextStyle(fontSize: 20),),
                color: Colors.black54,
                splashColor: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),               
               ),
             ),
      ),
    );
  }
}