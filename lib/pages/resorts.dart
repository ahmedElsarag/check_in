import 'package:check_in/misc/AppColor.dart';
import 'package:check_in/pages/home.dart';
import 'package:check_in/pages/my_profile.dart';
import 'package:check_in/pages/reservation.dart';
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
    var list = [Home(),MyProfile(),Reservation(),MyProfile(),Home()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor:  AppColors.mainColor,
        currentIndex: currentIndex,
        onTap: _bottomNavIconClicked,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 35,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 35,),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today,size: 35,),label: "Reservation"),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 35,),label: "Me"),

      ],),
      body: list[currentIndex],
    );
  }
}
