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
  final columns = [
    "#",
    "date",
    "punch in",
    "punch out",
    "production",
    "break",
    "overtime"
  ];


  // Define an index to track the current color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
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
        body: SingleChildScrollView(
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
                        style: TextStyle(fontWeight: FontWeight.bold),
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
            ],
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
                colorScheme: ColorScheme.light(
                  primary: Color(0xffff7849), // <-- SEE HERE
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
