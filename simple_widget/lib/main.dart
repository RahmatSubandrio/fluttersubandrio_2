import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Selamat datang di politeknik sampit';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = 'Terima kasih atas kunjunganya!';
                  });
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}