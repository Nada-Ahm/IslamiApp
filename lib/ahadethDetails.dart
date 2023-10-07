import 'package:flutter/material.dart';

import 'hadethModel.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName='details';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          "assets/imgs/background.png",
        ),
        Scaffold(
          backgroundColor:Colors.transparent ,
          appBar:AppBar(
            //leading: Icon(Icons.arrow_back,),
            title:Text(args.title,
              style: Theme.of(context).textTheme.bodyLarge,),
          ) ,
          body:ListView.builder(
            itemBuilder: (context, index) {
              return Text(args.content[index]);
            },
            itemCount: args.content.length,
          ) ,
        )
      ],);
  }
}
