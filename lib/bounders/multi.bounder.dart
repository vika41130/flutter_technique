import 'package:flutter/material.dart';
import 'package:flutter_application_1/multi_consumers/cart.dart';
import 'package:flutter_application_1/providers/providers.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';
import 'package:provider/provider.dart';

MultiProvider createMultiBounderProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<NBModel>(
        create: (_) => NBModel(),
      ),
      ChangeNotifierProvider<PumaModel>(
        create: (_) => PumaModel(),
      )
    ],
    child: MultiBounder(),
  );
}

class MultiBounder extends StatelessWidget {
  const MultiBounder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Multi Provider Bounder',
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Provider.of<NBModel>(context, listen: false).increase();
            },
            child: Text('Increment NB')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              context.read<PumaModel>().increase();
            },
            child: Text('Increment Puma')
          ),
          SizedBox(height: 10,),
          Multi(),
          SizedBox(height: 10,),
          Cart(),
        ],
      ),
    );
  }
}