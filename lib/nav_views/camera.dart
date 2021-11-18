import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Camera',
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
            ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          ),
      body: Center(child: Text('Camera'),),
    );
  }
}