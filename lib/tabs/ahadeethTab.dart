import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadethModel.dart';
import 'package:islami_app/myThemedata.dart';

import '../ahadethDetails.dart';

class Ahadeeth extends StatefulWidget {
  @override
  State<Ahadeeth> createState() => _AhadeethState();
}

class _AhadeethState extends State<Ahadeeth> {
  // List<String>hadeethTitle=[];
  List<HadethModel>Allahadeth=[];

  @override
  Widget build(BuildContext context) {
    loadAhadeeth();
    return Stack(
      children: [
        Scaffold(
          body: Column(
             children: [
               Row(
                 mainAxisAlignment:MainAxisAlignment.center ,
                 children: [
                   Image.asset('assets/imgs/ahadeth_image.png',),
                 ],
               ),
               Divider(
                 thickness: 3,
                 color: MythemeData.beegColor,
               ),
               Text('Ahadeeth',style:Theme.of(context).textTheme.bodyMedium,),
               Divider(
                 thickness: 3,
                 color: MythemeData.beegColor,
               ),
               Expanded(child: ListView.separated(
                   itemBuilder:(context, index) {
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AhadethDetails.routeName,
                              arguments: Allahadeth[index]
                            );
                          },
                          child: Text('${Allahadeth[index].title}'));
                   },
                   separatorBuilder: (context, index) {
                     return Divider(
                       thickness: 1,
                       color: MythemeData.beegColor,
                     );
                   },
                   itemCount: Allahadeth.length)
               )
             ],
          )
        )
      ],
    );
  }

  loadAhadeeth()async{
        String file=await rootBundle.loadString('assets/files/ahadeth.txt');
        List<String>ahadeeth= file.split('#');
        for(int i=0;i<ahadeeth.length;i++){
          String hadeeth=ahadeeth[i];
          List<String>hadeethLines=hadeeth.trim().split('\n');
          String title=hadeethLines[0];
          //hadeethTitle.add(title);
          hadeethLines.removeAt(0);
          List<String> content=hadeethLines;
          HadethModel hadethModel=HadethModel(content: content,title: title);
          Allahadeth.add(hadethModel);
        }
  }
}