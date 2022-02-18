import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.index.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Multi Consumers: ',
            style: TextStyle(fontSize: 18,),
          ),
          // Consumer: 1 provider
          // Consumer2: 2 providers, Consumer3: 3 providers, Consumer4: 4 providers, 
          // Consumer5: 5 providers, Consumer6: 6 providers, 
          Consumer2<NBModel, PumaModel>(builder: (_, nbModel, pumaModel, __) =>
            Text((nbModel.count + pumaModel.count).toString())
          ),
        ],
      ),
    );
  }
}