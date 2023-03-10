// import 'package:circular_chart_flutter/circular_chart_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_utils/get_utils.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// import '../drawer/custom_drawer.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _HomeScreen();
//
// }
//
// class _HomeScreen extends State<HomeScreen> {
//   // Define an index to track the current color
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           elevation: 0,
//           iconTheme: IconThemeData(color: Colors.white),
//           title: const Text("Dashboard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//
//         ),
//         drawer: const CustomDrawer(),
//
//         body:ListView(
//
//           children: [
//             const SizedBox(height: 15),
//             Row(
//               children: const [
//                 SizedBox(width: 10),
//                 Text(
//                   'Employee Dashboard',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff38414a),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//
//             Container(
//               color: Colors.white,
//               margin: EdgeInsets.all(15),
//               padding: EdgeInsets.only(left: 10, bottom: 20),
//               child: Column(
//                 children: [
//                   SizedBox(height: 15),
//                   Row(
//                     children: [
//                       Container(
//                         child: Text('Tasks',style: TextStyle(fontWeight: FontWeight.bold),),
//                         padding: EdgeInsets.only(left: 28),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 15),
//                   //circchart(),
//                   CircularPercentIndicator(
//                     radius: 100.0,
//                     lineWidth: 20.0,
//                     animation: true,
//                     percent: 0.7,
//                     center: new Text(
//                       "Completed Tasks ",
//                       style: new TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                           color: Colors.green),
//                     ),
//                     circularStrokeCap: CircularStrokeCap.square,
//                     progressColor: Color(0xFFFF7849),
//                   ),
//                   SizedBox(height: 15),
//                   Card(
//                     child: ListTile(
//                         leading: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.access_alarm,
//                               color: Color(0xFFFF7849),
//                             ),
//                             onPressed: () {},
//                           ),
//                         ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
//                         title: Text(
//                           'Pending Tasks',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         subtitle: Text(
//                           '55',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         trailing: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFF8B63), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.arrow_forward_rounded,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                           ),
//                         )),
//                   ),
//                   SizedBox(height: 15),
//                   Card(
//                     child: ListTile(
//                         leading: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.task_alt_rounded,
//                               color: Color(0xFFFFC107),
//                             ),
//                             onPressed: () {},
//                           ),
//                         ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
//                         title: Text(
//                           'Completed Tasks',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         subtitle: Text(
//                           '55',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         trailing: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFFC107), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.arrow_forward_rounded,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                           ),
//                         )),
//                   ),
//                   SizedBox(height: 15),
//                   Card(
//                     child: ListTile(
//                         leading: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.task_rounded,
//                               color: Color(0xFFD63384),
//                             ),
//                             onPressed: () {},
//                           ),
//                         ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
//                         title: Text(
//                           'Total Target',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         subtitle: Text(
//                           '55',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         trailing: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFD63384), //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.arrow_forward_rounded,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                           ),
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               margin: EdgeInsets.all(15),
//               child: Column(
//                 children: [
//                   Card(
//                     child: ListTile(
//                       leading: CircleAvatar(
//                         radius: 30,
//                         backgroundColor: Colors.white, //<-- SEE HERE
//                         child: IconButton(
//                           icon: Icon(
//                             Icons.person_add_alt_1_sharp,
//                             color: Color(0xFF8DAECC),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
//                       title: Text(
//                         'Attendance',
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 38,top: 10),
//                     child: Row(
//                       children: [
//                         Text('10:40 AM Jan 2 2021',style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500
//                         ),),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(bottom: 25),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       //crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 10, top: 75),
//                           child: SizedBox(
//                             width: 200,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                 hintText: "Add a note",
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                             margin: EdgeInsets.only(top: 72, left: 10),
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               child: Text('Check In',style: TextStyle(
//                                   fontSize: 16
//                               ),),
//                               style: ElevatedButton.styleFrom(
//                                   padding: EdgeInsets.only(
//                                       left: 10,
//                                       right: 10,
//                                       top: 25,
//                                       bottom: 25)),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               margin: EdgeInsets.all(15),
//               padding: EdgeInsets.only(bottom: 20),
//               child: Column(
//                 children: [
//                   Container(
//                     child: Card(
//                       child: ListTile(
//                         leading: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Colors.white, //<-- SEE HERE
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.person_remove,
//                               color: Color(0xFF8DAECC),
//                             ),
//                             onPressed: () {},
//                           ),
//                         ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
//                         title: Text(
//                           'Your Leave',
//                           style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 10,top:30),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       //crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('TOTAL LEAVES',style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 14
//                         ),),
//                         Text('REMAINING LEAVES',style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         ),),
//
//                       ],
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 8,top:20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       //crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('20  ',style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 28,
//                             color: Color(0xFFFF8B63)
//                         ),),
//                         Text('44  ',style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 28,
//                             color: Color(0xFFFF8B63)
//                         ),),
//                       ],
//                     ),
//                   ),
//                   Container(
//                       margin: EdgeInsets.only(top: 20, left: 10),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Apply Leave',style: TextStyle(
//                             fontSize: 14
//                         ),),
//                         style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.only(
//                                 left: 15,
//                                 right: 15,
//                                 top: 20,
//                                 bottom: 20)),
//                       )),
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
//
//
// }


//commented


import 'package:flutter/material.dart';

import 'package:hrms/src/features/attendance/attendance.dart';
import 'package:hrms/src/features/home_screen/widget/leave_form_widget.dart';

import '../../../myprofile/page/profile_page.dart';
import '../drawer/bottom_user_info.dart';

import '../drawer/custom_list_tile.dart';
import '../drawer/header.dart';
import 'widget/home_screen_widget.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
  static bool screen1=false;
  static bool screen2=false;
  static bool screen3=false;
  static bool screen4=false;
  static Widget content=Container();
  static String titleBar="";
  static Widget buildContent2() {




    if(HomeScreen.screen1==true){
      HomeScreen.titleBar="DashBoard";
      HomeScreen.content=const HomeScreenWidget();
    }
    else if(HomeScreen.screen2==true){
      HomeScreen.titleBar="Attendance";
      HomeScreen.content=const Attendance();
    }
    else if(HomeScreen.screen3==true){
      HomeScreen.titleBar="Leave";
      HomeScreen.content=LeaveFormWidget();
    }
    else if(HomeScreen.screen4==true){
      HomeScreen.titleBar="My Profile";
      HomeScreen.content=ProfilePage();

    }
    else{
      HomeScreen.titleBar="DashBoard";
      HomeScreen.content=HomeScreenWidget();
    }

    return HomeScreen.content;
  }

}



class _HomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeScreen.buildContent2();
  }
  bool _isCollapsed = false;
  List<Color> colorList = const [


    Color(0xff504F8C),
    Color(0xff504F8C),
    Color(0xff46457B),
    Color(0xff46457B),
    Color(0xff3C3C6A),
    Color(0xff3C3C6A),
    Color(0xff323258),
    Color(0xff323258),
    Color(0xff323258),
    Color(0xff282847),
    Color(0xff282847),
    Color(0xff1F1E36),
    Color(0xff1F1E36),
    Color(0xff151524),
    Color(0xff151524),
    Color(0xff0B0B13),
    Color(0xff0B0B13),


  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color bottomColor = Color(0xff0B0B13);
  Color topColor = Color(0xff6d6cc0);
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  // Define an index to track the current color
  @override
  Widget build(BuildContext context) {
      HomeScreen.content=HomeScreenWidget();
    return Scaffold(


        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title:  AppBarWidgetTitle(),

        ),
        drawer: SafeArea(
          child: AnimatedContainer(
            curve: Curves.easeInOutCubic,
            duration: const Duration(milliseconds: 500),
            width: _isCollapsed ? 300 : 70,
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            onEnd: () {
              setState(() {
                index = index + 1;
                // animate the color
                bottomColor = colorList[index % colorList.length];
                topColor = colorList[(index + 1) % colorList.length];

                //// animate the alignment
                // begin = alignmentList[index % alignmentList.length];
                // end = alignmentList[(index + 2) % alignmentList.length];
              });
            },
            decoration:  BoxDecoration(

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),

                gradient: LinearGradient(
                    begin: begin, end: end, colors: [bottomColor, topColor])

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomDrawerHeader(isColapsed: _isCollapsed),
                  const Divider(
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap:(){ UpdateWidget(true,false,false,false);},
                    child: IgnorePointer(
                      child: CustomListTile(
                        isCollapsed: _isCollapsed,
                        icon: Icons.home_outlined,
                        title: 'Home',
                        infoCount: 0,
                      ),
                    ),
                  ),
                  InkWell(

                      onTap: (){

                        UpdateWidget(false,true,false,false);
                      },
                      child:
                      IgnorePointer(
                        child: CustomListTile(
                          isCollapsed: _isCollapsed,
                          icon: Icons.check_circle_outline_outlined,
                          title: 'Attendance',
                          infoCount: 0,
                        ),
                      )),
                  InkWell(
                      onTap:(){ UpdateWidget(false,false,true,false);},
                      child:
                      IgnorePointer(
                        child: CustomListTile(
                          isCollapsed: _isCollapsed,
                          icon: Icons.time_to_leave_outlined,
                          title: 'Leave',
                          infoCount: 0,

                        ),
                      )),
                  InkWell(
                      onTap: (){
                        UpdateWidget(false,false,false,true);
                      },
                      child:
                      IgnorePointer(
                        child: CustomListTile(
                          isCollapsed: _isCollapsed,
                          icon: Icons.account_circle_outlined,
                          title: 'My Profile',
                          infoCount: 0,
                        ),
                      )),


                  const Divider(color: Colors.grey),
                  const Spacer(),
                  CustomListTile(
                    isCollapsed: _isCollapsed,
                    icon: Icons.notifications,
                    title: 'Notifications',
                    infoCount: 2,
                  ),
                  CustomListTile(
                    isCollapsed: _isCollapsed,
                    icon: Icons.settings,
                    title: 'Settings',
                    infoCount: 0,
                  ),
                  const SizedBox(height: 10),
                  BottomUserInfo(isCollapsed: _isCollapsed),
                  Align(
                    alignment: _isCollapsed
                        ? Alignment.bottomRight
                        : Alignment.bottomCenter,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      icon: Icon(
                        _isCollapsed
                            ? Icons.arrow_back_ios
                            : Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                      onPressed: () {
                        setState(() {
                          _isCollapsed = !_isCollapsed;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        body: HomeScreen.buildContent2());
  }

void UpdateWidget(bool s1,bool s2,bool s3,bool s4){
    setState(() {
      HomeScreen.screen1=s1;
      HomeScreen.screen2=s2;
      HomeScreen.screen3=s3;
      HomeScreen.screen4=s4;

    });
    Navigator.pop(context);
}


}

class AppBarWidgetTitle extends StatelessWidget {
  const AppBarWidgetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(HomeScreen.titleBar,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),);
  }
}


