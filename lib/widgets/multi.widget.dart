import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.index.dart';
import 'package:provider/provider.dart';

class Multi extends StatelessWidget {
  const Multi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nbModel = context.watch<NBModel>();
    final pumaModel = context.watch<PumaModel>();
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('NB: '),
              Text(nbModel.count.toString()),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Puma: '),
              Text(pumaModel.count.toString()),
            ],
          ),
        ],
      ),
    );
  }
}