import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/logic/new%20child%20logic/new_child_cubit.dart';
import 'package:hexcolor/hexcolor.dart';

class BuildDropDown extends StatefulWidget {
  const BuildDropDown({super.key});

  @override
  State<BuildDropDown> createState() => _BuildDropDownState();
}

class _BuildDropDownState extends State<BuildDropDown> {
  void initState() {
    super.initState();
    // Initialize _selectedDay to the first day of the current month
    DateTime now = DateTime.now();
    _selectedDay = 'Day';
    _selectedMonth = 'Month';
    _selectedYear = 'Year';

  }
  String? _selectedDay;
  String? _selectedMonth;
  String? _selectedYear;
  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context).textTheme;
    final NewChildCubit Cubit = BlocProvider.of<NewChildCubit>(context);


    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: DropdownButton<String>(
            underline: Container(
                height: 2,
                color: HexColor('80AFB8')
            ),
            style: theme.bodyLarge,
            value: _selectedDay,
            // Default value
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedDay = newValue;
                });
              }
            },

            items: Cubit.buildDayDropdownItems(),
            // Dropdown items


          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: DropdownButton<String>(
            underline: Container(
                height: 2,
                color: HexColor('80AFB8')
            ),
            style:theme.bodyLarge,
            value: _selectedMonth,
            // Default value
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedMonth = newValue;
                });
              }
            },

            items: Cubit.buildMonthDropdownItems(),
            // Dropdown items


          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 15),
          child: DropdownButton<String>(
            underline: Container(
                height: 2,
                color: HexColor('80AFB8')
            ),
            style: theme.bodyLarge,
            value: _selectedYear,
            // Default value
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedYear = newValue;
                });
              }
            },

            items: Cubit.buildYearDropdownItems(),
            // Dropdown items


          ),
        ),


      ],
    );

  }
}
