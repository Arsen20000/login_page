
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontPage extends StatefulWidget {
  const FontPage({Key? key}) : super(key: key);

  @override
  State<FontPage> createState() => _FontPageState();
}

class _FontPageState extends State<FontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FONTS',
        style: GoogleFonts.acme(
          backgroundColor: Colors.lime,),
        ),
      ),
      body:
Text(
  'This is Google Fonts',
  style: GoogleFonts.lobster(
   textStyle:const TextStyle(
    fontSize: 20,
   )
  // )
  // backgroundColor:Colors.amber,
  ),
),
    );
  }
}