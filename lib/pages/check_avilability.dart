import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';

import '../misc/AppColor.dart';

class CheckAvilability extends StatefulWidget {
  const CheckAvilability({Key? key}) : super(key: key);

  @override
  State<CheckAvilability> createState() => _CheckAvilabilityState();
}

class _CheckAvilabilityState extends State<CheckAvilability> {
  var _selectedDate = 'select from avilable days';
  bool _isEnabled = false;

  reserve() {}

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // if (args.value is PickerDateRange) {
    //   final DateTime rangeStartDate = args.value.startDate;
    //   final DateTime rangeEndDate = args.value.endDate;
    //   _selectedDate = '${rangeStartDate.toString().substring(0,rangeStartDate.toString().indexOf(" "))}  ${rangeEndDate.toString().substring(0,rangeEndDate.toString().indexOf(" "))}';
    //
    // } else if (args.value is DateTime) {
    //   _selectedDate = args.value;
    // } else if (args.value is List<DateTime>) {
    //   final List<DateTime> selectedDate = args.value;
    // } else {
    //   final List<PickerDateRange> selectedRanges = args.value;
    // }
    setState(() {
      _isEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Check Avilability',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _selectedDate,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                // TableCalendar(
                //   firstDay: DateTime.now(),
                //   lastDay: DateTime.now().add(Duration(days: 750)),
                //   focusedDay: _focusedDay,
                //   calendarFormat: CalendarFormat.month,
                //   selectedDayPredicate: (day) {
                //     return isSameDay(_selectedDay, day);
                //   },
                //   onDaySelected: (selectedDay, focusedDay) {
                //     setState(() {
                //       _selectedDay = selectedDay;
                //       _focusedDay = focusedDay;
                //       _isEnabled = true;
                //     });
                //   },
                // ),
                SfDateRangePicker(
                  minDate: DateTime.now(),
                  view: DateRangePickerView.month,
                  selectionColor: AppColors.mainColor,
                  todayHighlightColor: AppColors.mainColor,
                  startRangeSelectionColor: AppColors.mainColor,
                  endRangeSelectionColor: AppColors.mainColor,
                  rangeSelectionColor: AppColors.mainColor50,
                  monthViewSettings: DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 1,
                    blackoutDates: <DateTime>[
                      // TODO: add dates that is disabled
                      DateTime.now().add(Duration(days: 4))
                    ],
                  ),
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.multiple,
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 7.h,
                      width: 50.w,
                      child: ElevatedButton(
                        onPressed: _isEnabled ? () => reserve() : null,
                        child: Text(
                          'Reserve',
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
                              color: Colors.grey, fontWeight: FontWeight.bold),
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
              ],
            ),
            PositionedDirectional(
                top: 0,
                end: 0,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
            Visibility(
              visible: _isEnabled,
              child: PositionedDirectional(
                  top: 5,
                  end: 30,
                  child: TextButton(onPressed: () {  },
                  child: Text('Remove Dates',style: TextStyle(color: AppColors.mainColor,),),)
                  ),
            ),
          ],
        ));
  }
}
