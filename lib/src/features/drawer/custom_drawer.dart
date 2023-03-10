
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hrms/myprofile/page/profile_page.dart';
import 'package:hrms/src/features/attendance/attendance.dart';
import 'package:hrms/src/features/home_screen/leave.dart';

import '../home_screen/home_screen.dart';
import 'bottom_user_info.dart';
import 'custom_list_tile.dart';
import 'header.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isCollapsed = false;
  List<Color> colorList = [


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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                onTap: (){
                  Get.to(()=>HomeScreen());
                },
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

              Get.to(()=>const Attendance());
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
            onTap: (){
              Get.to(()=>LeaveScreen());
              },
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
              Get.to(()=>ProfilePage());
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
    );
  }
}
