import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        leading: Icon(Icons.arrow_back),
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Container(
                width: 100.w,
                margin: index==0?EdgeInsets.fromLTRB(20, 20, 20, 10):EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index<2?AppColors.mainColor70:Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.mainColor50),
                        child: Icon(
                          Icons.notifications,
                          color: AppColors.mainColor,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Two Nights Free',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'For all moms two nights free in hotel',
                          style: TextStyle(color: Colors.black.withOpacity(.7)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '12:00 AM',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
