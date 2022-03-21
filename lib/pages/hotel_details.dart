import 'package:check_in/misc/AppColor.dart';
import 'package:check_in/pages/ReviewDialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import '';
import 'check_avilability.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  List<String> images = [
    "asset/resort.jpg",
    "asset/per.jpg",
    "asset/hotel.jpg",
  ];
  late PageController _pageController;
  int activePage = 0;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.mainColor,
            expandedHeight: 35.h,
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: PageView.builder(
                        itemCount: images.length,
                        pageSnapping: true,
                        controller: _pageController,
                        onPageChanged: (page) {
                          setState(() {
                            activePage = page;
                          });
                        },
                        itemBuilder: (context, pagePosition) {
                          return Container(
                            child: Image.asset(
                              images[pagePosition],
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  width: 5.h,
                  height: 5.h,
                  margin: EdgeInsetsDirectional.only(top: 6.h, start: 3.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.bookmark,
                    color: AppColors.mainColor,
                  ),
                ),
                PositionedDirectional(
                    bottom: 20,
                    end: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        'sale 30%',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.mainColor),
                    ))
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 6),
                      child: Text('Helton hotel',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Spacer(),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      'Alduha, Qatar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.only(end: 10, start: 6),
                        child: Text(
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
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'All Services',
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 5.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text("Wifi")
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'The rooms are organized daily (unless you place the sign outside the door). The rooms look and smell clean. Very helpful staff - one of them was able to accommodate my late check out time by 1 hour. The hotel staff honor the Booking.com purchase just like it is: Very reliable!! (Unlikely other hotels and resorts in Hilton Head Island...). Staff easy to deal with over the phone to clarify some of my concerns.',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Locaion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      'Alduha, Qatar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //map
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.maxFinite,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reviews",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context){
                          return ReviewDialog();
                        });
                      },
                      child: Text(
                        'Add Review',
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '24 review from clients',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: List.generate(
                        3,
                        (index) => Container(
                              margin: EdgeInsets.only(bottom: 15),
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
                            )),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'More Reviews',
                        style:
                            TextStyle(color: AppColors.mainColor, fontSize: 16),
                      )),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 7.h,
                        width: 50.w,
                        child: ElevatedButton(
                          onPressed: () => showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                              builder: (context) {
                                return CheckAvilability();
                              }),
                          child: Text(
                            'check Avilability',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: AppColors.mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 2),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Price per night',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '445 SAR',
                            style: TextStyle(
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
