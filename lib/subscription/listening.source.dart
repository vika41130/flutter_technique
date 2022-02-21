import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';

class ListenCountSource extends StatefulWidget {
  const ListenCountSource({ Key? key }) : super(key: key);

  @override
  _ListenCountSourceState createState() => _ListenCountSourceState();
}

class _ListenCountSourceState extends State<ListenCountSource> {
  late String value = 'None';
  late StreamSubscription streamSub;

  @override
  void initState() {
    super.initState();
    streamSub = CountSource().countBroadcastStream
    .where((event) => true)
    .map((data) => data.toString() + 'map')
    .listen(
      (data) {
        value = data.toString();
        print(data);
        setState(() {});
      },
      onError: (error) {
        value = error.toString();
        setState(() {});
      },
      cancelOnError: false,
      onDone: () {
        value = 'Completed!';
        setState(() {});
      }
    )
    // when not assign to streamSub
    // .onError((error) {
    //   value = error.toString();
    //   setState(() {});
    //   print(error);
    // })
    // .onData((data) {
    //   print(data);
    // })
    ;
  }

  @override
  void dispose() {
    streamSub.cancel();
    super.dispose();
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
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              streamSub.pause();
            },
            child: Text('Pause')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              streamSub.resume();
            },
            child: Text('Resume')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              streamSub.cancel();
            },
            child: Text('Cancel')
          ),
        ],
      ),
    );
  }
}