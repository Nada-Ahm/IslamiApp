import 'package:flutter/material.dart';
import 'package:islami_app/myThemedata.dart';

import '../surahDetails.dart';
import '../surah_Model.dart';

class Quran extends StatelessWidget {
  List<String>SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/imgs/quran_image.png'),
        Divider(
          thickness: 3,
          color:MythemeData.beegColor ,
        ),
        Text('Surah name',
           style:Theme.of(context).textTheme.bodyMedium!.copyWith(
               color:Colors.black87 ),
         ),
        Divider(
          thickness: 3,
          color: MythemeData.beegColor,
        ),
        Expanded(
           child: ListView.separated(
             separatorBuilder: (context, index){
               return Divider(
                 thickness: 1,
                 color: MythemeData.beegColor,
                 endIndent:30 ,
                 indent: 30,
               );
             },
             itemBuilder:(context, index){
               return InkWell(
                 onTap: () {
                   Navigator.of(context).pushNamed(SurahDetails.routeName,
                   arguments: SurahModel(index:index,surahName:SuraNames[index])
                   );
                 },
                 child: Text(SuraNames[index],
                   textAlign:TextAlign.center ,
                   style:Theme.of(context).textTheme.bodySmall ,
                 ),
               );
             } ,
             itemCount: SuraNames.length,
           ),
         ),

      ],
    );
  }
}