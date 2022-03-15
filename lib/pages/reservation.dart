import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../misc/AppColor.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          'Reservation',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: index == 9
                    ? EdgeInsets.all(20)
                    : EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 30.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                        Image(
                          width: double.maxFinite,
                          height: 17.h,
                          image: AssetImage('asset/hotel.jpg'),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsetsDirectional.only(end: 30),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.7),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                          ),
                          child: Icon(Icons.bookmark,color: Colors.white,),
                        )
                      ]),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(255, 215, 0, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '5',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Text('Helton hotel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 10, start: 20),
                        child: Container(
                            child: Text(
                          'Sunday 22 March - Monday 23 March',
                          style: TextStyle(color: AppColors.textColor2),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 15, end: 15),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                              ),
                              Text(
                                'Alduha, Qatar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
