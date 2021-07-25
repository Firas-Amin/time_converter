import 'package:flutter/material.dart';

void main() {
  runApp(TimeZoneConverter());
}

class TimeZoneConverter extends StatelessWidget {
  const TimeZoneConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Zone"),
      ),
    );
  }
}







