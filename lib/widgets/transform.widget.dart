import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';

class TranSform extends StatelessWidget {
  const TranSform({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<int>(
        stream: CountSource().countTransformStream,
        builder: (context, snapshot) {
          return snapshot.hasData ? Text(snapshot.data.toString()) : Text('0');
        }
      ),
    );
  }
}