import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/DetailScreen.dart';
import 'package:hotel/model/room.dart';

import 'Category_Screen.dart';
import 'Home_Screen.dart';
void main() {
  runApp(HotelReservation());
}

class HotelReservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context)=>HomeScreen(),
        "category":(context)=>Category(),
        DetailRoomScreen.room:(context)=> DetailRoomScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Colors.brown[500]),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.brown[500])
      ),
    );
  }
}


