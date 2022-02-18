import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';

class SingleSubscription extends StatelessWidget {
  const SingleSubscription({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Single Stream',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              CountSource().increment();
            },
            child: Text('Increment')
          ),
          SizedBox(height: 10,),
          Single(),
        ],
      ),
    );
  }
}