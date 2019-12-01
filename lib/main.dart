import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyHomePage(title: 'Meals'),
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
  
  @override
  Widget build(BuildContext context) {
    
    final mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text('Meals App'),
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Theme.of(context).primaryColor,
      //   height: 60,
      //   backgroundColor: null,
      //   items: <Widget>[              
      //     Icon( Icons.menu, size: 30, ),
      //     Icon(Icons.star, size: 30),
      //     Icon(Icons.settings, size: 30),
      //   ],
      //   animationCurve: Curves.easeIn,
      //   animationDuration: Duration(milliseconds: 600),
      // ),
    );
  }
}
