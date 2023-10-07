import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MythemeData {
   static Color beegColor=Color(0xffB7935F);
   static ThemeData lightMode=ThemeData(
       scaffoldBackgroundColor:Colors.transparent,
       appBarTheme: AppBarTheme(
         iconTheme: IconThemeData(
           color:beegColor,
           size:35,
         ),
         centerTitle: true,
         backgroundColor:Colors.transparent,
         elevation:0.0,
       ),
       textTheme: TextTheme(
         bodyLarge:GoogleFonts.elMessiri(
           fontWeight:FontWeight.bold,
           fontSize:30,
           color:Color(0xff242424),
         ),
         bodyMedium: GoogleFonts.elMessiri(
           fontSize: 28,
           fontWeight: FontWeight.w600,
           color:Color(0xff242424),
         ),
         bodySmall: GoogleFonts.elMessiri(
           fontSize: 25,
           fontWeight: FontWeight.w600,
           color:Color(0xff242424),
         ),
       ),
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
         backgroundColor: beegColor,
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.black87,
         type: BottomNavigationBarType.shifting
       )
   );
   static  ThemeData darkMode=ThemeData();
}
