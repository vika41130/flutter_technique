import 'package:flutter/material.dart';
import 'package:flutter_application_1/subscription/subscription.index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: SingleSubscription()
            ),
            Container(
              width: 10, height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: BroadcastSubscription()
            ),
            Container(
              width: 10, height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: TransformSubscription()
            ),
          ],
        ),
      ),
    );
  }
}
