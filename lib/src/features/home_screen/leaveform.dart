
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// class LeaveForm extends StatefulWidget{
//   const LeaveForm({super.key});
//   final _formKey = GlobalKey<FormState>();
//    Future<dynamic> buildShowModalBottomSheet(BuildContext context)
//   {
//     String dropdownvalue = 'Item 1';
//
// // List of items in our dropdown menu
//     var items = [
//       'Item 1',
//       'Item 2',
//       'Item 3',
//       'Item 4',
//       'Item 5',
//     ];
//     /*return showModalBottomSheet(context: context,
//       builder:(context) => Center(
//         child: Column(
//           children: [
//
//           ],
//         ),
//       ),);*/
//     return showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           color: Color(0xFF737373),
//           height: 180,
//           child: Container(
//             child: _buildBottomNavigationMenu(context),
//             decoration: BoxDecoration(
//               color: Theme.of(context).canvasColor,
//               borderRadius: BorderRadius.only(
//                 topLeft: const Radius.circular(10),
//                 topRight: const Radius.circular(10),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//   @override
//   Widget _buildBottomNavigationMenu(BuildContext context) {
//     String dropdownvalue = 'Item 1';
//
// // List of items in our dropdown menu
//     var items = [
//       'Item 1',
//       'Item 2',
//       'Item 3',
//       'Item 4',
//       'Item 5',
//     ];
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           TextFormField(
//             decoration:
//             InputDecoration(labelText: 'Enter your username'),
//           ),
//           TextFormField(
//             decoration:
//             InputDecoration(labelText: 'Enter your password'),
//             obscureText: true,
//           ),
//           DropdownButton(
//
//             // Initial Value
//             value: dropdownvalue,
//
//             // Down Arrow Icon
//             icon: const Icon(Icons.keyboard_arrow_down),
//
//             // Array list of items
//             items: items.map((String items) {
//               return DropdownMenuItem(
//                 value: items,
//                 child: Text(items),
//               );
//             }).toList(),
//             // After selecting the desired option,it will
//             // change button value to selected value
//             onChanged: (String? newValue) {
//               setState(() {
//                 dropdownvalue = newValue!;
//               });
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               // Validate returns true if the form is valid, otherwise false.
//
//             },
//             child:
//             Text('Submit'),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }

class LeaveForm extends StatefulWidget{
  const LeaveForm({super.key});

  @override
  State<StatefulWidget> createState()=> _LeaveForm();

}

class _LeaveForm extends State<LeaveForm> {
  final formKey = GlobalKey<FormState>(); //key for form
  String dropdownvalue = 'Select Leave Type';
  final _controller = TextEditingController();


// List of items in our dropdown menu
  var items = [
    'Select Leave Type',
    'Casual Leave 12 Days',
    'Medical Leave',
    'Loss of Pay',
  ];
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
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
      ), 
        backgroundColor: Colors.grey.withOpacity(0.1),
      body:Container(
        margin: EdgeInsets.all(15),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Apply For Leave',style:
                        TextStyle(
                          fontSize: 18,
                        ),),
                    ],
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top:10,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Leave Type',style:
                      TextStyle(
                        fontSize: 16,
                      ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top:15),
                child: Row(
                  children: [
                    Container(

                      child: DropdownButton<String>(
                        elevation: 20,
                        // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
                        //isExpanded: true,
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      margin: EdgeInsets.only(left: 15),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.white,
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top:5),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Row(
                            children: [
                              Text("From ",style:
                              TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          )),

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
                        onTap: () => _selectDateFrom(context),
                      ),
                      Container(
                          margin: EdgeInsets.only(top:5),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Row(
                            children: [
                              Text("To ",style:
                              TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          )),
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
                        onTap: () => _selectDateTo(context),
                      ),
                      Container(
                          margin: EdgeInsets.only(top:5),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Row(
                            children: [
                              Text("Number Of Days",style:
                              TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          )),
                      TextFormField(
                        validator: (value){
                          if(value==null)
                            {
                              return "Please Enter Number Of Days";
                            }
                          else
                            {
                              return null;
                            }
                        },
                      ),
                      Container(
                          margin: EdgeInsets.only(top:5),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Row(
                            children: [
                              Text("Remaining Leaves",style:
                              TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          )),
                      TextFormField(
                        validator: (value){
                          if(value==null)
                          {
                            return "Please Enter Number Of Days";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                      Container(
                          margin: EdgeInsets.only(top:5),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Row(
                            children: [
                              Text("Leave Reason",style:
                              TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          )),
                      TextFormField(
                        maxLines: 3,
                        validator: (value){
                          if(value==null)
                          {
                            return "Please Enter Leave Reason";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left:5,top:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () => _submit(),
                              child: Text(
                                'Submit',

                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF7849)), // <-- Button color
                              ),
                            ),
                          ],
                        ),
                      )


                    ],

                  ),
                ),
              ),

            ],
          ),
        ),

      )

    );
  }
  Future<void> _selectDateFrom(BuildContext context) async {
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
  Future<void> _selectDateTo(BuildContext context) async {
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

    if (formKey.currentState!.validate()) {
      // Send data to server
      var url = Uri.parse('https://example.com/submit');
      var response = await http.post(url, body: {'date': _controller.text});
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

}
