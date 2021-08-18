import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:upahaar_solutions/common/utils.dart';

class DatePicker extends StatefulWidget {
  DatePicker({key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime dateTime;
  final TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: TextField(
            controller: dobController,
            onTap: (){Utils.showSheet(context, child: buildDatePicker(),
                    onClicked: () {
                  final value = DateFormat('yyyy/MM/dd').format(dateTime);
                  Utils.showSnackBar(context, 'Selected "$value"');

                  Navigator.pop(context);
                });},
                readOnly: true,
            decoration: InputDecoration(
              labelText: 'Date of Birth',
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
              ),
            )));
  }

  Widget buildDatePicker() => SizedBox(
        height: 180,
        child: CupertinoDatePicker(
          minimumYear: 1960,
          maximumYear: 2001,
          initialDateTime: dateTime,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (dateTime) =>
              setState(() => this.dateTime = dateTime),
        ),
      );
}
