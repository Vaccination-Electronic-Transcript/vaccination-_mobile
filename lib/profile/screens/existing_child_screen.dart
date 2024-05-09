import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ExistingChildScreen extends StatelessWidget {
  const ExistingChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('42ADE2'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ),
      backgroundColor: HexColor('42ADE2'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 35),
            child: Row(
              children: [
                Image.asset('assets/images/login.png',
                  height: 85,
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
                  style: TextStyle(
                      fontSize: 40,
                      color: HexColor('035766')
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){},
                  icon:SvgPicture.asset(
                    'assets/images/child.svg',
                    height: 120,

                  )
              ),
              Text('Child 1',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){},
                  icon:SvgPicture.asset(
                    'assets/images/child.svg',
                    height: 120,

                  )
              ),
              Text('Child 1',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){},
                  icon:SvgPicture.asset(
                    'assets/images/child.svg',
                    height: 120,

                  )
              ),
              Text('Child 1',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),



        ],
      ),
    );
  }
}
