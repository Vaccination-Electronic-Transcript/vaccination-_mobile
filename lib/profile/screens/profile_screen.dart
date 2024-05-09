import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/auth/screens/login_screen.dart';
import 'package:graduation_project/profile/screens/existing_child_screen.dart';
import 'package:graduation_project/profile/screens/new_child_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context).textTheme;
    return  Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 35),
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
                  style: theme.bodyLarge
                ),
              ],
            ),
          ),
          SizedBox(
            height: 119,
          ),
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>ExistingChildScreen()


                )
            );
          },
              icon:SvgPicture.asset(
                  'assets/images/Child.svg',

              )
          ),
          Text('Child',
            style:theme.bodySmall
          ),

          SizedBox(
            height: 30,
          ),
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>NewChildScreen()


                )
            );
          },
              icon:SvgPicture.asset(
                'assets/images/new child.svg',

              )
          ),
          Text('New Child',
            style: theme.bodySmall
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            width: 364,
            height: 46,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: HexColor('#035766')
            ),
            child: MaterialButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>LoginScreen()


                  )
              );
            },
              child: Text('Log Out',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
