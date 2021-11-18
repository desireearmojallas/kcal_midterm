import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User extends StatefulWidget {
  const User({ Key? key }) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User',
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
            ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          ),
      body: Center(child: Text('User'),),
    );
  }
}