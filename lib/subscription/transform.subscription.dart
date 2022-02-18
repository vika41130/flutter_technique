import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';

class TransformSubscription extends StatelessWidget {
  const TransformSubscription({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Transform Stream',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              CountSource().incrementTransform();
            },
            child: Text('Increment')
          ),
          SizedBox(height: 10,),
          TranSform(),
        ],
      ),
    );
  }
}