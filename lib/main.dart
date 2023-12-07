import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert; // Import for jsonDecode

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double exchangeRate = 0.0; // Use double for exchange rate

  @override
  void initState() {
    super.initState();
    getExchangeRate(); // Call the function to get exchange rate on initialization
  }

  Future<void> getExchangeRate() async {
    var url = Uri.parse('https://api.exchangeratesapi.io/latest');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var exchangeRateValue = jsonResponse['rates']['IDR'];
      setState(() {
        exchangeRate = exchangeRateValue.toDouble(); // Convert to double
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Finances Account"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Exchange Rate: $exchangeRate', // Display the fetched exchange rate
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
