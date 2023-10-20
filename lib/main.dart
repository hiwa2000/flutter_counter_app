import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String displayName = '';

  void updateName() {
    setState(() {
      displayName = 'Hiwa';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show name'),
        backgroundColor :Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayName,
              style: TextStyle(fontSize: 50,color:Colors.green),
              
              
            ),
            
            SizedBox(height: 40),
            
            ElevatedButton(
              onPressed: updateName,
              child: Text('show name'),

            ),
          ],
        ),
      ),
    );
  }
}
