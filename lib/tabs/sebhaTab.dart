import 'package:flutter/material.dart';
import 'package:islami_app/myThemedata.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  List<String>zekr=[
    'سبحان الله',
    'الحمد الله',
    'الله اكبر',
    'لا اله الا الله',
  ];
  int counter = 0;
  int listCounter=0;
  String zekrname='';
  addZekr(){
      zekrname=zekr[listCounter];
      if(counter<3){
        counter++;}
      else{
        counter=0; listCounter++;
      }
      setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Stack(children: [Scaffold(body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgs/sebhaimg.png',
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('عدد التسبيحات')]),
        SizedBox(
        height: 20,
      ),
        ElevatedButton(
          style:ElevatedButton.styleFrom(
            backgroundColor:MythemeData.beegColor,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w600,)
          ),
          child: Container(
            width: width * .05,
            height: height * .1,
            child: Text(
              '${counter}',
            ),
          ),
          onPressed: () {
            //counter++;
            addZekr();

          },
        ),
        SizedBox(
        height: 20,
      ),
        Container(
          width: width*.7,
          decoration: BoxDecoration(
            border: Border.all(color:MythemeData.beegColor,width:4),
            borderRadius:BorderRadius.circular(40)
          ),
          padding:EdgeInsets.all(15) ,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Text(zekrname,style: TextStyle(fontSize: 40) ,)
            ],
          ),
        )
      ]))
    ]);
  }
}
