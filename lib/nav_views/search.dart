import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
            ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          ),
      body: Center(child: Text('Search'),),
    );
  }
}