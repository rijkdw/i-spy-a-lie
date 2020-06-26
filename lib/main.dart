import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ispy/debug/debugdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // add this for landscape coding
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget _buildButton({text}) {
    print("made button");
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
      child: Text(text, style: GoogleFonts.creteRound(fontSize: 50, fontWeight: FontWeight.w100, letterSpacing: 5)),
      color: Colors.lightGreen,
      onPressed: () {
        if (text == "JOIN") {
          print("join lobby");
        } else {
          print("host lobby");
        }
      },
    );
  }

  Widget _logo = Text(
    "I SPY A LITTLE LIE!",
    style: GoogleFonts.lato(fontWeight: FontWeight.w300, fontSize: 50, letterSpacing: 6),
  );

  Widget _desc = Text(
    "Press host or join to start a game with 4 - 6 players!",
    style: GoogleFonts.lato(fontWeight: FontWeight.w300, fontSize: 25),
  );

  // display number of clues
  // will need page to be stateful
  Widget _clues = null;

  // Toggle sound
  // Change theme?
  // store
  Widget _drawer = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      drawer: _drawer,
      endDrawer: DebugDrawer(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Column(
            children: [
//            SizedBox(height: 40),
              _logo,
              SizedBox(height: 60),
              _desc,
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildButton(text: "HOST"),
                  _buildButton(text: "JOIN"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
