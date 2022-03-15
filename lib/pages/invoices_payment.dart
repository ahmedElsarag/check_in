import 'package:check_in/misc/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicesPayment extends StatefulWidget {
  const InvoicesPayment({Key? key}) : super(key: key);

  @override
  State<InvoicesPayment> createState() => _InvoicesPaymentState();
}

class _InvoicesPaymentState extends State<InvoicesPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alexander Chernov',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.9), fontSize: 16),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white),
                        child: Icon(
                          Icons.restore_from_trash_outlined,
                          color: AppColors.secondaryColor,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 35),
                    child: Text(
                      '234 4443 1223 ***',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '**/**',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            '***',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.secondaryColor,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child:
                  OutlinedButton(
                      onPressed: () {},
                      child: Text('Add New Card',style: TextStyle(fontSize: 18),),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.mainColor),
                      primary: AppColors.mainColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),

            ),
          ],
        ),
      ),
    );
  }
}
