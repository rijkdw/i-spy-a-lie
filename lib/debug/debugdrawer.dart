import 'package:flutter/material.dart';
import 'package:ispy/screens/authentication/login.dart';

class DebugDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Debug drawer for screen navigation'),
          ),
          ListTile(
            title: Text('Login screen'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen()
              ),
            ),
          )
        ],
      ),
    );
  }
}
