import 'package:flutter/material.dart';
import 'dart:math'; // to use Random Nomber generator class


class MyBankStatus extends StatefulWidget {

  //Every Statefull Widget need to override  createState function
  @override
  State<StatefulWidget> createState() {
      //Every time my Application state changes Flutter will recall this method to update value and redraw the UI
      return new _MyBankStatusState();

  }

}

class _MyBankStatusState extends State<MyBankStatus> {
  int _myCounter = 0; // init valu for bank balance
  var _rundumNomber = new Random();
  void _incraseCounter(){
    setState(() {
          _myCounter = _myCounter + _rundumNomber.nextInt(1000) ;
      });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('حسابي البنكي'),
        backgroundColor: Colors.blueAccent,

      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Center(
              child: new Image.asset('assets/images/dollar.jpg',
              fit: BoxFit.contain,
              )

          ),
            ),
          new Expanded(
            child: new Center(
              child: new Text("\$$_myCounter",
              style: new TextStyle(
                fontSize: 40.0,
                color: Colors.blue,
                fontWeight: FontWeight.w500

              ),
              ),
            ),
          ),
          new Expanded(
            child: new Center(
            child: new FlatButton(
              color: Colors.lightBlue,
              onPressed: _incraseCounter,
              child: new Text('اجعلني غنياً',
              style: new TextStyle(
                fontSize: 20.0,
                decorationColor: Colors.cyanAccent,
                color: Colors.white,
                fontWeight: FontWeight.w900
              ),
              ),
            ),
            ),
          )
          ],

        ),
      ),
    );
  }
}
