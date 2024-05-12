// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:puc/firebase_options.dart';



class DateTimeExample extends StatefulWidget {
  const DateTimeExample({super.key});

  @override
  State<DateTimeExample> createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  DateTime _dateTime = DateTime.now();
  DateTimeRange _dateTimeRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(const Duration(days: 7)),
  );
  final DateFormat _formatter = DateFormat('yyyy-MM-dd');

  void _selectDate() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) => setState(() {
          if (value != null) {
            _dateTime = value;
          }
        }));
  }

  void _selectDateRange() {
    showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) => setState(() {
          if (value != null) {
            _dateTimeRange = value;
          }
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateTime Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selected date: ${_formatter.format(_dateTime)}'),
            ElevatedButton(
              onPressed: _selectDate,
              child: const Text('Select date'),
            ),

           
          ],
        ),
      ),
    );
  }
}
