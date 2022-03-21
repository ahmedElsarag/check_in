import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../misc/AppColor.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context,index){
                return Container(
                  margin: index==11?EdgeInsets.fromLTRB(20, 20, 20, 15.h):EdgeInsets.fromLTRB(20, 20, 20, 0),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('asset/per.jpg'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text('Ahmed Elsarag',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold)),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('4 March 2022',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12)),
                                  ],
                                )
                              ],
                            ),
                            Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index > 2
                                        ? AppColors.starColor2
                                        : AppColors.starColor,
                                  );
                                }))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'The rooms are organized daily (unless you place the sign outside the door). The rooms look and smell clean. Very helpful staff',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 100.w,
              height: 10.h,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 60.w,
                    margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                    child: TextField(
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
                          hintText: 'write what you want'),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                    height: 6.h,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                        ),
                        child: Text(
                          'Post Review',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
