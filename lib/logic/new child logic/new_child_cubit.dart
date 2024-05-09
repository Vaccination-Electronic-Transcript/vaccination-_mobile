import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'new_child_state.dart';

class NewChildCubit extends Cubit<NewChildState> {
  NewChildCubit() : super(ProfileInitial());
  String? _selectedDay;
  String? _selectedMonth;
  String? _selectedYear;
  String? _selectedBloodType;



  List<DropdownMenuItem<String>> buildDayDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(
      DropdownMenuItem<String>(
        value: 'Day',
        child: Text(
          'Day',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

    for (int i = 1; i <= daysInMonth; i++) {
      items.add(
        DropdownMenuItem<String>(
          value: i.toString(),
          child: Text(
            i.toString(),
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    }
    emit(BuildDayDropdownItems());

    return items;
  }
  List<DropdownMenuItem<String>> buildMonthDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(
      DropdownMenuItem<String>(
        value: 'Month',
        child: Text(
          'Month',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );

    for (int i = 1; i <= 12; i++) {
      DateTime month = DateTime(DateTime.now().year, i);
      String monthName = DateFormat('MMMM').format(month);
      items.add(
        DropdownMenuItem<String>(
          value: monthName,
          child: Text(
            monthName,
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    }
    emit(BuildMonthDropdownItems());

    return items;
  }
  List<DropdownMenuItem<String>> buildYearDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(
      DropdownMenuItem<String>(
        value: 'Year',
        child: Text(
          'Year',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );


    for (int year = 2000; year <= 2030; year++) {
      items.add(
        DropdownMenuItem<String>(
          value: year.toString(),
          child: Text(
            year.toString(),
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    }
    emit(BuildYearDropdownItems());


    return items;
  }
  List<DropdownMenuItem<String>> buildBloodTypeDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(
      DropdownMenuItem<String>(
        value: 'Type',
        child: Text(
          'Type',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );

    // Add common blood types to the dropdown list
    List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
    for (String type in bloodTypes) {
      items.add(
        DropdownMenuItem<String>(
          value: type,
          child: Text(
            type,
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    }
    emit(BuildBloodTypeDropdownItems());

    return items;
  }

}
