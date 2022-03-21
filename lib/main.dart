import 'package:check_in/pages/ReviewDialog.dart';
import 'package:check_in/pages/check_avilability.dart';
import 'package:check_in/pages/favorite.dart';
import 'package:check_in/pages/home.dart';
import 'package:check_in/pages/hotel_details.dart';
import 'package:check_in/pages/invoices_payment.dart';
import 'package:check_in/pages/my_profile.dart';
import 'package:check_in/pages/notification.dart';
import 'package:check_in/pages/pay_invoice.dart';
import 'package:check_in/pages/profile_page.dart';
import 'package:check_in/pages/reservation.dart';
import 'package:check_in/pages/resorts.dart';
import 'package:check_in/pages/reviews_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return   MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HotelDetails(),
        );
      },

    );
  }
}


