import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';

class BroadcastSubscription extends StatelessWidget {
  const BroadcastSubscription({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Broadcast Stream',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              CountSource().incrementBroadcast();
            },
            child: Text('Increment')
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Broadcast(),
              SizedBox(width: 20,),
              Broadcast(),
              SizedBox(width: 20,),
              Broadcast(),
            ],
          ),
        ],
      ),
    );
  }
}