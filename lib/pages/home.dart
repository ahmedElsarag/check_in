import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: index==9?EdgeInsets.all(20):EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Container(
                width: double.maxFinite,
                height: 30.h,
                child: Column(
                  children: [
                    Image(
                      width: double.maxFinite,
                      height: 17.h,
                      image: AssetImage('asset/hotel.jpg'),fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(255, 215, 0, 1),
                                ),
                                SizedBox(width: 3,),
                                Text(
                                  '5',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text('Helton hotel',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 10,start: 20),
                      child: Row(
                        children: [
                          Container(
                          margin: EdgeInsetsDirectional.only(end: 10)
                              ,child: Text(
                            'Start with',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Text(
                            '445 SAR',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainColor),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'Alduha, Qatar',
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Row(
                          children: [
                          Icon(
                          Icons.send_sharp,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(width: 4,),
                          Text(
                            '12.5KM',
                            style: TextStyle(fontWeight: FontWeight.bold,color:  AppColors.mainColor),
                          )
                        ],
                      ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
