import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'myThemedata.dart';
import 'tabs/ahadeethTab.dart';
import 'tabs/quranTab.dart';
import 'tabs/sebhaTab.dart';
import 'tabs/radioTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/imgs/background.png",
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامى',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:index ,
            onTap: (value) {
              index=value;
              setState(() {});
            },
            items:[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/radio.png'),size:35 ),
                label: 'radio',
                backgroundColor:MythemeData.beegColor ,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/sebha.png'),size:35),
                label: 'sebha',
                  backgroundColor:MythemeData.beegColor
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/ahadeeth.png'),size:35),
                label: 'ahadeeth',
                  backgroundColor:MythemeData.beegColor
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/imgs/quran.png'),size:35),
                label: 'quran',
                backgroundColor:MythemeData.beegColor
              ),
            ],
          ),
          body:tabs[index]
      ),
    ]);
  }

  List<Widget>tabs=[
    Radioo(),
    Sebha(),
    Ahadeeth(),
    Quran(),
  ];
}
