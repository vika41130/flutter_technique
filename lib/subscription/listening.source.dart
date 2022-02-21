import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';

class ListenCountSource extends StatefulWidget {
  const ListenCountSource({ Key? key }) : super(key: key);

  @override
  _ListenCountSourceState createState() => _ListenCountSourceState();
}

class _ListenCountSourceState extends State<ListenCountSource> {
  late int value = 0;

  @override
  void initState() {
    super.initState();
    CountSource().countBroadcastStream
    .listen((data) {
      value = data;
      print(data);
      setState(() {});
    })
    // .onData((data) {
    //   print(data);
    // })
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Listening Source',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          Text(value.toString()),
        ],
      ),
    );
  }
}