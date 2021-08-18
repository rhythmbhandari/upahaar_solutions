import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class DatePick extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DatePick();
  }
}

class _DatePick extends State<DatePick> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: TextField(
                  controller: dateinput,
                    onTap: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(1960, 3, 5),
                          maxTime: DateTime(2001, 6, 7), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                      setState(() => this.dateinput = dateinput);
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
