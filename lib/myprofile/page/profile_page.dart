import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../model/user.dart';
import '../utils/user_preferences.dart';
import '../widget/appbar_widget.dart';
import '../widget/button_widget.dart';
import '../widget/profile_widget.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
  //  final size = MediaQuery.of(context).size;

    return  ListView(
        children:[ Center(
          child: Container(
                color: Colors.white,
                margin:EdgeInsets.all(15),

            child: Column(
              children:[
                 SizedBox(height: 24),
                ProfileWidget(
                  imagePath: user.imagePath,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                buildName(user),
                const SizedBox(height: 24),
                Center(child: buildUpgradeButton()),
                const SizedBox(height: 14),
                //NumbersWidget(),
                const SizedBox(height: 18),
                buildAbout(user),

               const SizedBox(height: 50),
               // const SizedBox(height: 18),
                 //NavBar(),
            ]
            )
          ),

        ),
           Container(
            decoration: BoxDecoration(
              color: Colors.white,

              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )

              ],
              border: Border(
                  left: BorderSide(
                    color: Color(0xFF6d6cc0),
                    width: 2,
                  )
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  //rippleColor: Color(0xFFFF7849),
                  //hoverColor: Colors.grey[100]!,
                  hoverColor: Color(0xFF6d6cc0),

                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',


                    ),
                    GButton(
                      icon: LineIcons.projectDiagram,
                      text: 'Projects',
                    ),
                    GButton(
                      icon: LineIcons.piggyBank,
                      text: 'Bank & Satutory',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
  ],


    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 8),
          Text(
            user.team,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            user.post,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          //const SizedBox(height: 4),
          Text('Employee ID-${user.empid}',
            style: TextStyle(color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text('Joining Date-${user.date}',
            style: TextStyle(color: Colors.grey),
          ),
          //const SizedBoxheight: 10)
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
       // text: 'Upgrade To PRO',
        onClicked: () {},
      );



  Widget buildAbout(User user) => Container(

    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashColor: Colors.grey,),
        const SizedBox(height: 20),
        /*Text(
          'Phone No',
          style: TextStyle(fontSize: 10),
        ),



        const SizedBox(height: 8),*/
       /* Text(
         // user.about,
         // style: TextStyle(fontSize: 16, height: 1.4),
        ),*/

            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Text("Phone",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey,

                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text("9999999999",style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6d6cc0),)),
                  ),

                ],
              ),
            ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                child: Text("Email",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,

                )),
              ),
              Container(


                child: Text("sample@gmail.com",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6d6cc0),)),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                child: Text("Birthday",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,

                )),
              ),
              Container(

                child: Text("24th July",style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey),
              ),
              )
            ],
          ),
        ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          child: Text("Address",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey,


                          )),
                        ),
                        Container(

                          child: Text("VG Tech,\nAkanshha Apartment,\nBaner-411061",style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),

        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 0),
                child: Text("Gender",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,

                )),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                child: Text("Male",style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey),
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 0),
                child: Text("Reports To",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,

                )),
              ),
              Container(
                margin: EdgeInsets.only(left: 18),
                child:Row(
                  children: [
                    Icon(Icons.person,color:Colors.blueAccent,size: 20,),
                    Text("Rahul",style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),

  );

}
