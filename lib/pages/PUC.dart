// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    );
  }
}
