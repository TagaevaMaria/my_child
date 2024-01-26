import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WidgetDoctor extends StatefulWidget {
  const WidgetDoctor({Key? key}) : super(key: key);

  @override
  _WidgetDoctorState createState() => _WidgetDoctorState();
}

class _WidgetDoctorState extends State<WidgetDoctor> {
  DateTime dateTime = DateTime(2000, 01, 01);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/fon.jpg'),
          ),
        ),
        child: Center(
          child: CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => SizedBox(
                      height: 250,
                      width: 250,
                      child: CupertinoDatePicker(
                        initialDateTime: dateTime,
                        onDateTimeChanged: (DateTime newTime) {
                          setState(() => dateTime = newTime);
                        },
                      )));
            },
            child: const Text('Добавить прием врача +'),
          ),
        ),
      ),
    );
  }
}
