import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  get message {
    int hour = DateTime.now().hour;
    String timeOfDay =
        hour < 12 ? "morning" : hour < 18 ? "afternoon" : "evening";
    return "Good $timeOfDay,\nFlutter!";
  }

  @override
  build(BuildContext _) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Hello Flutter"),
      ),
      body: Material(
        color: Colors.white,
        child: Center(
          child: Text(
            message,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
