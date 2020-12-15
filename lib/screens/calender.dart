import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
    DateTime selectedDate = DateTime.now();
     _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  // ignore: unused_field
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Pick a date'),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050),
                  cancelText: "colse",
                  confirmText: "Select",
                  fieldLabelText: "Enter Date",
                  fieldHintText: "Month/Date/Year",
                  builder: (BuildContext context, Widget child) {
                    return Theme(
                      data: ThemeData.dark().copyWith(
                        colorScheme: ColorScheme.dark(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          surface: Colors.white,
                          onSurface: Colors.black,
                        ),
                        dialogBackgroundColor: Colors.white,
                      ),
                      child: child,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  
}
//  showDatePicker(
//                         context: context,
//                         initialDate:
//                             _dateTime == null ? DateTime.now() : _dateTime,
//                         firstDate: DateTime(2001),
//                         lastDate: DateTime(2021))
//                     .then((date) {
//                   setState(() {
//                     _dateTime = date;
//                   });
//                 });
