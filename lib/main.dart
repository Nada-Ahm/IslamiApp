import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ahadethDetails.dart';
import 'homescreen.dart';
import 'myThemedata.dart';
import 'surahDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MythemeData.lightMode,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SurahDetails.routeName:(context) => SurahDetails(),
        AhadethDetails.routeName:(context) => AhadethDetails(),
      },
    );
  }
}


