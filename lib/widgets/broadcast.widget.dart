import 'package:flutter/material.dart';
import 'package:flutter_application_1/source/source.index.dart';

class Broadcast extends StatelessWidget {
  const Broadcast({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<int>(
        stream: CountSource().countBroadcastStream,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return Container(
                width: 40,
                height: 40,
                child: LinearProgressIndicator(),
              );
            // if error, then active
            // data is null
            case ConnectionState.active:
              if (snapshot.hasError) { // error
                return Text(snapshot.error.toString());
              } else {
                return Text(snapshot.data.toString());
              }
            case ConnectionState.done:
              return Text('Completed!');
            default: // error
              return Text(snapshot.data.toString());
          }
          // return snapshot.hasData ? Text(snapshot.data.toString()) : Text('0');
        }
      ),
    );
  }
}