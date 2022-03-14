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
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.maxFinite,
              height: 30.h,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image(
                    width: double.maxFinite,
                    height: 15.h,
                    image: NetworkImage(
                        'data:image/jpeg;base64,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'),
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            Text('5')
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Text('Helton hotel'),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}