import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../drawer/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  // Define an index to track the current color
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text("Dashboard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

        ),
        drawer: const CustomDrawer(),

        body: ListView(

          children: [
            const SizedBox(height: 15),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  'Employee Dashboard',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff38414a),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(
              color: Colors.white,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(left: 10, bottom: 20),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        child: Text('Tasks',style: TextStyle(fontWeight: FontWeight.bold),),
                        padding: EdgeInsets.only(left: 28),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  //circchart(),
                  CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 20.0,
                    animation: true,
                    percent: 0.7,
                    center: new Text(
                      "Completed Tasks ",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.green),
                    ),
                    circularStrokeCap: CircularStrokeCap.square,
                    progressColor: Color(0xFFFF7849),
                  ),
                  SizedBox(height: 15),
                  Card(
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.access_alarm,
                              color: Color(0xFFFF7849),
                            ),
                            onPressed: () {},
                          ),
                        ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
                        title: Text(
                          'Pending Tasks',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          '55',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFFF8B63), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )),
                  ),
                  SizedBox(height: 15),
                  Card(
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.task_alt_rounded,
                              color: Color(0xFFFFC107),
                            ),
                            onPressed: () {},
                          ),
                        ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
                        title: Text(
                          'Completed Tasks',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          '55',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFFFC107), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )),
                  ),
                  SizedBox(height: 15),
                  Card(
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFFCEBE5), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.task_rounded,
                              color: Color(0xFFD63384),
                            ),
                            onPressed: () {},
                          ),
                        ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
                        title: Text(
                          'Total Target',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          '55',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFD63384), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white, //<-- SEE HERE
                        child: IconButton(
                          icon: Icon(
                            Icons.person_add_alt_1_sharp,
                            color: Color(0xFF8DAECC),
                          ),
                          onPressed: () {},
                        ),
                      ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
                      title: Text(
                        'Attendance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38,top: 10),
                    child: Row(
                      children: [
                        Text('10:40 AM Jan 2 2021',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 75),
                          child: SizedBox(
                            width: 200,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Add a note",
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 72, left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Check In',style: TextStyle(
                                fontSize: 16
                              ),),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      top: 25,
                                      bottom: 25)),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white, //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.person_remove,
                              color: Color(0xFF8DAECC),
                            ),
                            onPressed: () {},
                          ),
                        ), //Icon(Icons.pending_actions,size:25,color: Color(0xFFFF7849)),
                        title: Text(
                          'Your Leave',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,top:30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('TOTAL LEAVES',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                        ),),
                        Text('REMAINING LEAVES',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,top:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('20  ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color(0xFFFF8B63)
                        ),),
                        Text('44  ',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color(0xFFFF8B63)
                        ),),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Apply Leave',style: TextStyle(
                          fontSize: 14
                        ),),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 15,
                                right: 15,
                                top: 20,
                                bottom: 20)),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}

/* Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(context),
      //drawer: NavBar(),
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: ListView(
          children:[ Center(
      child: Container(
      color: Colors.white,
          margin:EdgeInsets.all(15),
          child: Column(
              children:[
                SizedBox(height: 24,),
                EmpTask(),
                const SizedBox(height: 24),
                //
                const SizedBox(height: 24),

                const SizedBox(height: 14),
                //NumbersWidget(),
                const SizedBox(height: 18),

                const SizedBox(height: 50),
                // const SizedBox(height: 18),
                //NavBar(),
              ]
          )
      ),

    ),
    ]),
    );

  }
  Widget EmpTask() {
    return Scaffold(
        body: Center(
            child: ListView(
              children :<Widget> [
                new CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "70.0%",
                    style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Text(
                    "Sales this week",
                    style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                ),
              ],
            )
        )
    );

  }


}*/
