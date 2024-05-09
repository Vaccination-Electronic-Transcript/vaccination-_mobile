import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _selectedValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: _selectedValue , // Default value
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedValue = newValue;
              });
            }
          },

          items: <String>['One', 'Two', 'Three', 'Four'] // Dropdown items
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),

        ),


      ),

    );

  }
}
