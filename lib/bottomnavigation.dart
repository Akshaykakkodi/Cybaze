import 'package:cybaze_test/favourites.dart';
import 'package:cybaze_test/myCourse.dart';
import 'package:cybaze_test/myNote.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _HomeState();
}

class _HomeState extends State<BottomNavigation> {
  int indexnum=0;
  List Pages=[Home(),Mycourse(),Favourites(),Mynote()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor: const Color(0xFFFFFFFF),
       bottomNavigationBar: BottomNavigationBar(
         showSelectedLabels:true,
         showUnselectedLabels: true,
         selectedIconTheme: const IconThemeData(color: Colors.blue,size: 20),
         iconSize:20,

         unselectedItemColor: Colors.black,
         selectedItemColor: Colors.blue,
         onTap: (value) {

          setState(() {
            indexnum=value;
          });

        },
        currentIndex: indexnum,
        items: [
          const BottomNavigationBarItem(icon:Icon(Icons.home, ),label: "Home",),
          BottomNavigationBarItem(icon:Image.asset("Assets/images/graduation.jpg"),label: "My Course"),
         const BottomNavigationBarItem(icon:Icon(Icons.favorite_border_outlined),label: "Favourite"),
          BottomNavigationBarItem(icon:Image.asset("Assets/images/nete2.png",width: 15,height: 15,),label: "My note"),
       ],),
      body: Pages.elementAt(indexnum),

    );
  }
}
