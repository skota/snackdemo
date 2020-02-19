import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Snack demo"),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Show Snackbar"),
                    onPressed: () {
                      return _showSnackBar(context);
                    },
                  )
                ],
              ),
            );
          },
        ));
  }

  void _showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.purple,
        duration: Duration(seconds: 30),
        content: Text("I am a snackbar!"),
        // action: SnackBarAction(
        //   label: "Chow down",
        //   onPressed: () {
        //     print("Gettin' fat!");
        //   },
        // ),
      ),
    );
  }
}
