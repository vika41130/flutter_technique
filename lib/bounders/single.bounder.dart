import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';
import 'package:provider/provider.dart';

ChangeNotifierProvider<CountModel> createSingleBounderProvider() {
  return ChangeNotifierProvider(
    create: (_) => CountModel(),
    child: SingleBounder(),
  );
}

class SingleBounder extends StatelessWidget {
  const SingleBounder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Single Provider Bounder',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              // way 1: Provider.of
              // Provider.of<CountModel>(context, listen: false).increaseCount();
              // way 2: context.read
              context.read<CountModel>().increaseCount();
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