import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      title: 'Geometry',
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geometry'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.red),
                  child: FlatButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            child: AlertDialog(
                              content: Text('This is 2D Geometric Shapes'),
                            ));
                      },
                      child: Image.asset('images/2d.png'))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.blue,
                  ),
                  child: FlatButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            child: AlertDialog(
                              content: Text('This is 3D Geometric Shapes'),
                            ));
                      },
                      child: Image.asset('images/3d.png'))),
            ),
          )
        ],
      ),
    );
  }
}
