import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class DatePick extends StatelessWidget {
  final TextEditingController dateController;
  
    const DatePick({
    key,
    @required this.dateController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: TextField(
                  controller: dateController,
                    onTap: () {
                      
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(1960, 3, 5),
                          maxTime: DateTime(2001, 6, 7), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        String formattedDate = DateFormat('yyyy-MM-dd').format(date);
                        dateController.text = formattedDate;
                        //dateController.setDate(dateController.text);
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
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
}
