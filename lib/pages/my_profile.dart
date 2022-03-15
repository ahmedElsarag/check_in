import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //imge and name
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/per.jpg'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Ahmed Elsarag',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20,color: AppColors.mainColor,),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'My profile',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications_none,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Notifications',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.payment,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Payments',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_exchange_rounded,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Currency',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20, color: AppColors.mainColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.language,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Language',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications_none,color: AppColors.mainColor,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'About',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor,
                              ))
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.question_answer_outlined,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'FAQ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone_in_talk_rounded,color: AppColors.mainColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Contact us',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.mainColor),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
