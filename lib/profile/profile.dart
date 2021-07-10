import 'package:bottom_navy_bar_with_nav_bar/drawer/drawer.dart';
import 'package:bottom_navy_bar_with_nav_bar/utility/font_style.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _textStyle = titleTextStyle();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.grey[200],
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.teal,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profile',
                style: _textStyle,
              ),
            ],
          ),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[200],
          ),
          child: getDrawer(),
        ),
      ),
    );
  }
}
