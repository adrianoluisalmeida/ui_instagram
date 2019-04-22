import 'package:flutter/material.dart';
import 'package:ui_instagram/pages/Timeline.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int _currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Icon(
      Icons.home,
    ),
    Icon(
      Icons.search,
    ),
    Icon(
      Icons.add_box,
    ),
    Icon(
      Icons.favorite_border
    ),
    Icon(
      Icons.verified_user
    )
    
  ];

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Timeline(),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.065),
            offset: Offset(0.0, -3.0),
            blurRadius: 10.0
          )
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {

            var index = bottomNavIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  setState((){
                    _currentIndex = index;
                  });
                },
                child: buttomNavItem(item, index == _currentIndex)//navigation
              ),
            );
        }).toList(),
      )
    )
    );
  }

}


buttomNavItem(Widget item, bool isSelected) => Container (
  decoration: BoxDecoration(
    boxShadow: isSelected ? 
    [
      BoxShadow(
        color: Colors.black12.withOpacity(0.02),
        offset: Offset(0.0, 5.0),
        blurRadius: 10.0
      )
    ] : []),
    child: item,
  );
