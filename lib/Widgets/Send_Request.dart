import 'package:flutter/material.dart';
class SendRequest  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Your Request has been sent",style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
