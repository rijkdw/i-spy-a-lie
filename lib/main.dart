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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      drawer: DebugDrawer(),
      body: homeScreen()
    );
  }
}

Widget _button({text}) {
  print("made button");
  return RaisedButton(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
    child: Text(
      text,
      style: GoogleFonts.creteRound(fontSize: 50, fontWeight: FontWeight.w100, letterSpacing: 5)
    ),
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

Widget _drawer() {
  //find how to still :(
  
  // Toggle sound
  // Change theme?
  // store
  return null;
}

Widget _clues() {
  // display amount of clues
  // will need screen to be statefull
  return null;
}

Widget _buttons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        child: _button(text: "HOST"),
      ),
      SizedBox(width: 60),
      Container(
        child: _button(text: "JOIN"),
      ),
    ],
  );
}

Widget _logo() {
  return Text(
    "I SPY A LITTLE LIE!",
    style: GoogleFonts.lato(
      fontWeight: FontWeight.w300,
      fontSize: 50,
      letterSpacing: 6
    ),
  );
}

Widget _desc() {
  return Text(
    "Press host or join to start a game with 4 - 6 players!",
    style: GoogleFonts.lato(
      fontWeight: FontWeight.w300,
      fontSize: 25,
    ),
  );
}

Widget homeScreen() {
  return Column(
    children: [
      SizedBox(height: 40),
      Container(
        child: _logo(),
      ),
      SizedBox(height: 80),
      Container(
        child: _desc(),
      ),
      SizedBox(height: 40),
      Container(child: _buttons()),
    ],
  );
}

