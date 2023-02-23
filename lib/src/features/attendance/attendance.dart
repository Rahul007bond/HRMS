import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:http/http.dart' as http;
import '../drawer/custom_drawer.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<StatefulWidget> createState() => _Attendance();
}

class _Attendance extends State<Attendance> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  DateTime? _selectedDate;

  // Define an index to track the current color
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       // backgroundColor: Color(0xf4ffffff),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text(
            "Attendance",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          'Statistics',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          AttendanceProgress(
                            title: "Today",
                            time: "3.45 / 8 hrs",
                            percent: 0.9,
                            elementcolor: Colors.green,
                            shadowcolor: Colors.greenAccent.withOpacity(0.5),
                          ),
                          SizedBox(height: 15),
                          AttendanceProgress(
                            time: "3.45 / 8 hrs",
                            percent: 0.75,
                            title: "This Month",
                            elementcolor: Colors.blue,
                            shadowcolor: Colors.blueAccent.withOpacity(0.5),
                          ),
                          SizedBox(height: 15),
                          AttendanceProgress(
                            time: "3.45 / 8 hrs",
                            percent: 0.85,
                            title: "Remaining",
                            elementcolor: Colors.red,
                            shadowcolor: Colors.redAccent.withOpacity(0.5),
                          ),
                          SizedBox(height: 15),
                          AttendanceProgress(
                            time: "4",
                            percent: 0.85,
                            title: "Overtime",
                            elementcolor: Colors.purple,
                            shadowcolor: Colors.purpleAccent.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                              labelText: 'Select date',
                              labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a date';
                            }
                            return null;
                          },
                          onTap: () => _selectDate(context),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () => _submit(),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HistoryAttendanceWidget(containerbg: Colors.greenAccent.withOpacity(0.1) ,date: "Today",a_label1: "Punch In",a_label2: "Punch Out",a_label3: "Production",a_label4: "break",a_label5: "Overtime",a_value1: "10AM",a_value2: "9PM",a_value3: "8 hrs",a_value4: "2 hrs",a_value5: "0",color2: Colors.red,color1:Colors.green,color3: Colors.blue,color4: Colors.purple,color5: Colors.amber ,colorDate: Colors.green,),
                HistoryAttendanceWidget(containerbg: Colors.redAccent.withOpacity(0.1) ,date: "Yesterday",a_label1: "Punch In",a_label2: "Punch Out",a_label3: "Production",a_label4: "break",a_label5: "Overtime",a_value1: "10AM",a_value2: "9PM",a_value3: "8 hrs",a_value4: "2 hrs",a_value5: "0",color2: Colors.red,color1:Colors.green,color3: Colors.blue,color4: Colors.purple,color5: Colors.amber ,colorDate: Colors.red),
                HistoryAttendanceWidget(containerbg: Colors.redAccent.withOpacity(0.1) ,date: "10 feb 2023",a_label1: "Punch In",a_label2: "Punch Out",a_label3: "Production",a_label4: "break",a_label5: "Overtime",a_value1: "10AM",a_value2: "9PM",a_value3: "8 hrs",a_value4: "2 hrs",a_value5: "0",color2: Colors.red,color1:Colors.green,color3: Colors.blue,color4: Colors.purple,color5: Colors.amber ,colorDate: Colors.red),
                HistoryAttendanceWidget(containerbg: Colors.redAccent.withOpacity(0.1) ,date: "9 feb 2023",a_label1: "Punch In",a_label2: "Punch Out",a_label3: "Production",a_label4: "break",a_label5: "Overtime",a_value1: "10AM",a_value2: "9PM",a_value3: "8 hrs",a_value4: "2 hrs",a_value5: "0",color2: Colors.red,color1:Colors.green,color3: Colors.blue,color4: Colors.purple,color5: Colors.amber ,colorDate: Colors.red),
                HistoryAttendanceWidget(containerbg: Colors.redAccent.withOpacity(0.1) ,date: "8 feb 2023",a_label1: "Punch In",a_label2: "Punch Out",a_label3: "Production",a_label4: "break",a_label5: "Overtime",a_value1: "10AM",a_value2: "9PM",a_value3: "8 hrs",a_value4: "2 hrs",a_value5: "0",color2: Colors.red,color1:Colors.green,color3: Colors.blue,color4: Colors.purple,color5: Colors.amber ,colorDate: Colors.red),
              ],
            ),
          ),
        ));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Color(0xff6D6CC0), // <-- SEE HERE
                  onPrimary: Colors.white, // <-- SEE HERE
                  onSurface: Colors.black, // <-- SEE HERE
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // button text color
                  ),
                ),
              ),
              child: child!);
        });
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = picked.toString().split(' ')[0];
      });
    }
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      // Send data to server
      var url = Uri.parse('https://example.com/submit');
      var response = await http.post(url, body: {'date': _controller.text});
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }
}

class HistoryAttendanceWidget extends StatelessWidget {
  const HistoryAttendanceWidget({
    required this.date,
    required this.a_label1,
    required this.a_label2,
    required this.a_label3,
    required this.a_label4,
    required this.a_label5,
    required this.a_value1,
    required this.a_value2,
    required this.a_value3,
    required this.a_value4,
    required this.a_value5,
    required this.colorDate,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.color5,
    required this.containerbg,
    super.key,
  });
  final String date;
  final String a_label1;
  final String a_label2;
  final String a_label3;
  final String a_label4;
  final String a_label5;
  final String a_value1;
  final String a_value2;
  final String a_value3;
  final String a_value4;
  final String a_value5;
  final Color colorDate;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Color containerbg;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: containerbg,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            date,
            style:
                TextStyle(fontSize: 19, fontWeight: FontWeight.bold,color: colorDate),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RowTextWidget(
                a_label: a_label1,
                a_value: a_value1,
                valueColor: color1,
              ),RowTextWidget(
                a_label: a_label2,
                a_value: a_value2,
                valueColor: color2,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RowTextWidget(
                a_label: a_label3,
                a_value: a_value3,
                valueColor: color3,
              ), RowTextWidget(
                a_label: a_label4,
                a_value: a_value4,
                valueColor: color4,
              ),
            ],
          ),
          SizedBox(height: 10,),
          RowTextWidget(
            a_label: a_label5,
            a_value: a_value5,
            valueColor: color5,
          ),

        ],
      ),
    );
  }
}

class RowTextWidget extends StatelessWidget {
   RowTextWidget({
    required this.a_label,
    required this.a_value,
    required  this.valueColor,

    super.key,
  });
  final String a_label;
  final String a_value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      //padding: EdgeInsets.only(left: (size.width * 0.12),right: (size.width * 0.12)),
      child: Row(



        children: [
          Text(
            a_label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
          ),
           Text(" :  ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,) ,
          Text(a_value,
              style: TextStyle(
                fontSize: 15,color: valueColor,fontWeight: FontWeight.bold
              ))
        ],
      ),
    );
  }
}

class AttendanceProgress extends StatelessWidget {
  const AttendanceProgress({
    required this.elementcolor,
    required this.percent,
    required this.shadowcolor,
    required this.time,
    required this.title,
    super.key,
  });
  final Color elementcolor;
  final Color shadowcolor;
  final String title;
  final String time;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: shadowcolor,
              offset: const Offset(
                2.5,
                2.5,
              ),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              time,
              style: TextStyle(fontSize: 18, color: elementcolor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.5),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 73,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: percent,
              center: Text(
                "${100 * percent}%",
                style: TextStyle(color: Colors.white),
              ),
              barRadius: const Radius.circular(12),
              progressColor: elementcolor,
            ),
          ),
        ]));
  }
}
