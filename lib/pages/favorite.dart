import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../misc/AppColor.dart';

class FavoritScreen extends StatefulWidget {
  const FavoritScreen({Key? key}) : super(key: key);

  @override
  State<FavoritScreen> createState() => _FavoritScreenState();
}

class _FavoritScreenState extends State<FavoritScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit'),
        leading: Icon(Icons.arrow_back),
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
          child: GridView.builder(
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 50.w,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Image(
                                  width: double.maxFinite,
                                  height: 20.h,
                                  image: AssetImage('asset/hotel.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  margin: EdgeInsetsDirectional.only(end: 30),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.7),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: InkWell(
                                    child: Icon(
                                      Icons.bookmark,
                                      color: AppColors.secondaryColor,
                                    ),
                                    onTap: (){

                                    },
                                  ),
                                )
                              ]),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Helton Hotel',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '445 SAR',
                            style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index > 2
                                      ? AppColors.starColor2
                                      : AppColors.starColor,
                                );
                              })),
                          SizedBox(height: 20,),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Check Avilability',style: TextStyle(color: AppColors.mainColor)),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1, color: AppColors.mainColor),
                            ),

                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
