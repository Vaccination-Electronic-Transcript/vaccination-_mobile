import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/profile/screens/mother_info_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class FatherInfoScreen extends StatefulWidget {
  const FatherInfoScreen({super.key});

  @override
  State<FatherInfoScreen> createState() => _FatherInfoScreenState();
}

class _FatherInfoScreenState extends State<FatherInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
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
            child: Text('Father information',
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
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
            child: Text('SSN',
                style: theme.bodyLarge

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
            child: Text('Phone',
                style: theme.bodyLarge

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
            child: Text('Address',
                style: theme.bodyLarge

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
            child: Text('Qualification',
                style: theme.bodyLarge

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
                            builder: (BuildContext context) =>MotherInfoScreen()


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
    );
  }
}
