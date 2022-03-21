import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 20.w,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/per.jpg'),
                          radius: 60,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.add_a_photo_rounded,
                          color: Colors.white,
                          size: 3.w,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(50)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Full Name',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.black.withOpacity(.6)),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Enter your full name'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Email',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.black.withOpacity(.6)),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Mobile Number',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.black.withOpacity(.6)),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Enter your number'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Country',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.black.withOpacity(.6)),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Enter your counter'),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: 100.w,
                height: 8.h,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                    ),
                    child: Text(
                      'Save Changes',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
