import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("About me XD"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0, // Adjust the height as needed
              ),
              Text("Hello I'm soslso"),
              Text("i study in SU"),
              Text("student ID : 6424020002"),
              Text("in major of computer engineering "),
              Text("now is my third year"),
              SizedBox(
                height: 20.0, // Adjust the height as needed
              ),
              // Add your image here using the Image widget
              Image.asset(
                'assets/ds.jpg', // Replace with your image path
                width: 200.0, // Adjust the width as needed
                height: 200.0, // Adjust the height as needed
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ],
          ),
        ),
      ),
    );
  }
}
