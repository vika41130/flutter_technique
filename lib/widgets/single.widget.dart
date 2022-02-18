import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.index.dart';
import 'package:provider/provider.dart';

class Single extends StatelessWidget {
  const Single({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // way 1: context.watch
    // final countModel = context.watch<CountModel>();
    // way 2: Provider.of
    // final countModel = Provider.of<CountModel>(context, listen: true);
    // return Center(
    //   child: Text(countModel.count.toString()),
    // );
    // way 3: Consumer
    return Consumer<CountModel>(builder: (_, countModel, __) =>
      Text(countModel.count.toString()));
  }
}
