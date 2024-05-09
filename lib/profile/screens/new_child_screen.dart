

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/logic/new%20child%20logic/new_child_cubit.dart';
import 'package:graduation_project/profile/screens/father_info_screen.dart';
import 'package:graduation_project/profile/widgets/build_drop_down.dart';
import 'package:hexcolor/hexcolor.dart';



class NewChildScreen extends StatefulWidget {
  const NewChildScreen({super.key});

  @override
  State<NewChildScreen> createState() => _NewChildScreenState();
}

class _NewChildScreenState extends State<NewChildScreen> {
  void initState(){
    super.initState();
    _selectedBloodType = 'Type';
  }
  String? _selectedBloodType;



  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context).textTheme;

    final NewChildCubit Cubit = BlocProvider.of<NewChildCubit>(context);




    return BlocBuilder<NewChildCubit, NewChildState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 35),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Injection.svg',
                        height: 86,
                        width: 82,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 60,
                        width: 1,

                        color: HexColor('035766'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('vaccination',
                        style:theme.bodyLarge
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 15),
                  child: Text('Child information',
                    style: theme.bodySmall
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text('Name',
                    style: theme.bodyLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15),
                  child: Container(

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10)
                    ),

                    height: 49,
                    child: TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Text('SSN',
                    style: theme.bodyLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15),
                  child: Container(

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10)
                    ),

                    height: 49,
                    child: TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Text('Gender',
                    style: theme.bodyLarge

                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: Text('Male',
                        style: theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        )
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: Text('Female',
                        style: theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded),
                          onPressed: () {

                          },
                        )
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Text('DOB',
                    style: theme.bodyLarge

                  ),
                ),
                BuildDropDown(),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Text('Blood Type',
                    style: theme.bodyLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 2,
                      color: HexColor('80AFB8')
                    ),
                    style: theme.bodyLarge,
                    value: _selectedBloodType,
                    // Default value
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedBloodType = newValue;
                        });
                      }
                    },

                    items: Cubit.buildBloodTypeDropdownItems(),
                    // Dropdown items


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text('Height',
                    style: theme.bodyLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15),
                  child: Container(

                    decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(10)
                    ),

                    height: 49,
                    child: TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text('Weight',
                    style: theme.bodyLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15),
                  child: Container(

                    decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(10)
                    ),

                    height: 49,
                    child: TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Text('Place of birth',
                    style: theme.bodyLarge
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15),
                  child: Container(

                    decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(10)
                    ),

                    height: 49,
                    child: TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Text('Type of birth',
                    style: theme.bodyLarge

                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: Text('Normal',
                        style:theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        )
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: Text('Caesarean',
                        style: theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded),
                          onPressed: () {

                          },
                        )
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Text('Child Status',
                    style: theme.bodyLarge

                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Text('Normal',
                        style: theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {},
                        )
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Text('Not Normal',
                        style: theme.bodyLarge

                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: IconButton(
                          icon: Icon(Icons.check_circle_rounded),
                          onPressed: () {

                          },
                        )
                    ),


                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 30),
                      child: Container(
                        width: 158,
                        height: 46,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: HexColor('#035766')
                        ),
                        child: MaterialButton(onPressed: () {
                          Navigator.pop(context);
                        },
                          child: Text('Back',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 30),
                      child: Container(
                        width: 158,
                        height: 46,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: HexColor('#035766')
                        ),
                        child: MaterialButton(onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>FatherInfoScreen()


                              )
                          );
                        },
                          child: Text('Next',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),


              ],
            ),
          ),
        );
      },
    );
  }
}




