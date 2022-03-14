import 'package:check_in/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resorts extends StatefulWidget {
  const Resorts({Key? key}) : super(key: key);

  @override
  State<Resorts> createState() => _ResortsState();
}

class _ResortsState extends State<Resorts> {

  int currentIndex = 0;
  void _bottomNavIconClicked(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resorst',style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.arrow_back_ios_rounded),
        actions: [
          Icon(Icons.filter_alt),
          Icon(Icons.thumbs_up_down_rounded),
        ],
        centerTitle: true,

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.redAccent,
        currentIndex: currentIndex,
        onTap: _bottomNavIconClicked,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 35,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 35,),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today,size: 35,),label: "Reservation"),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 35,),label: "Me"),

      ],),
      body: Home(),
    );
  }
}
