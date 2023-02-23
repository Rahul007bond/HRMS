import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hrms/src/features/home_screen/leaveform.dart';

//import 'package:date_time_picker/date_time_picker.dart';
class LeaveScreen extends StatelessWidget
{
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: BackButton(),

        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Leaves',style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 2),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('12',style:
                  TextStyle(
                    color: Color(0xFF6d6cc0),
                    fontSize: 20,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Text('Annual Leave',style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4F648E)
                  ),),
                ),

              ],
            ),
          ),

          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('3',style:
                  TextStyle(
                    color: Color(0xFF6d6cc0),
                    fontSize: 20,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Text('Medical Leave',style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4F648E)
                  ),),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15,right: 15,top: 2),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('4',style:
                  TextStyle(
                    color: Color(0xFF6d6cc0),
                    fontSize: 20,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Text('Other Leave',style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4F648E)
                  ),),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15,right: 15,top: 2),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('5',style:
                  TextStyle(
                    color: Color(0xFF6d6cc0),
                    fontSize: 20,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Text('Remaining Leave',style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4F648E)
                  ),),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            child: ElevatedButton(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF6d6cc0)), // <-- Button color
                ),
              onPressed: () =>Get.to(()=>const LeaveForm()),
          ),
          )
        ],
      ),
    );
  }
}

