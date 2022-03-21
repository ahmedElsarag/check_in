import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PayInvoice extends StatefulWidget {
  const PayInvoice({Key? key}) : super(key: key);

  @override
  State<PayInvoice> createState() => _PayInvoiceState();
}

class _PayInvoiceState extends State<PayInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing'),
        leading: Icon(Icons.arrow_back),
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Invoice Details',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('172 SAR * 3 days',
                          style:
                              TextStyle(color: Colors.black.withOpacity(.7))),
                      Text(
                        '344 SAR',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Services fees',
                          style:
                              TextStyle(color: Colors.black.withOpacity(.7))),
                      Text(
                        '14 SAR',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style:
                              TextStyle(color: Colors.black.withOpacity(.7))),
                      Text(
                        '394 SAR',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.black.withOpacity(.1),width: 2))
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Card Owner Name',
                      style: TextStyle(color: Colors.black.withOpacity(.5))),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Card Number',
                      style: TextStyle(color: Colors.black.withOpacity(.5))),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your card number',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Colors.black.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Colors.black.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Card Owner Name',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5))),
                                SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter your name',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10)),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Card Owner Name',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5))),
                                SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter your name',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10)),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(height: 6.h,),
                  SizedBox(
                    width: double.maxFinite,
                    height: 8.h,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Pay',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
