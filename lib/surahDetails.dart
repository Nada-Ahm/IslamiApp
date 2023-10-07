import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/surah_Model.dart';

class SurahDetails extends StatefulWidget {
   static const String routeName='SurDetails';

  @override
  State<SurahDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
   List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SurahModel;
    if(verses.isEmpty){
      loadfile(args.index);
    }

    return Stack(
      children: [
        Image.asset(
          "assets/imgs/background.png",
        ),
        Scaffold(
          backgroundColor:Colors.transparent ,
          appBar:AppBar(
            //leading: Icon(Icons.arrow_back,),
            title:Text(args.surahName,
              style: Theme.of(context).textTheme.bodyLarge,),
          ) ,
          body:ListView.builder(
              itemBuilder: (context, index) {
                return Text(verses[index]);
              },
              itemCount: verses.length,
          ) ,
        )
      ],);
  }

   loadfile(int index)async{
     String file= await rootBundle.loadString("assets/files/${index+1}.txt");
     List<String>lines=file.split("\n");
     print(lines);
     verses=lines;
     setState(() {

     });
   }
}
