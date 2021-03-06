import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class DateDark extends StatefulWidget {
  static const routeName = '/DateDark';
  @override
  _DateDarkState createState() => _DateDarkState();
}

class _DateDarkState extends State<DateDark> {

  TextEditingController _pickDateController;
  String _date='01/01/1999';



  @override
  void initState() {
    super.initState();
    _pickDateController=TextEditingController(text: _date);
  }


  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                elevation: 5,
                color: Colors.red,
                child: new Text(
                  'Pick Data',
                  style:
                  TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime(1995, 1, 1),
                    firstDate: DateTime(1995, 1, 1),
                    lastDate: DateTime.now(),
                    initialDatePickerMode: DatePickerMode.year,
                    builder: (BuildContext context, Widget child) {
                      return Theme(
                        data: ThemeData(
                          primaryColor: Colors.black,
                          accentColor: Colors.black54,
                          buttonBarTheme: ButtonBarThemeData(
                            buttonTextTheme: ButtonTextTheme.accent,
                          ),
                        ),
                        child: child,
                      );
                    },
                  );
                  if (date != null) {
                    var formatter = new DateFormat('MM/dd/yyyy');
                    _pickDateController.text = formatter.format(date);

                  }
                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.red),
                cursorColor: Colors.redAccent ,
                controller: _pickDateController,
                readOnly: true,
              ),
            ),
          ],
        )
    );
  }
}
