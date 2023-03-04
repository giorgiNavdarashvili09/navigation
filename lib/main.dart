import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          Text("Other text widget"),
          GestureDetector(
            onDoubleTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => OtherPage()));
            },
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => OtherPage()));
            },
            child: Text("Other Page"),
          ),
        ],
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
        automaticallyImplyLeading: false,

      ),
      body: Column(
        children: [
          Text("Other Page"),
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Go back"))
        ],
      ),
    );
  }
}
