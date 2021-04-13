import 'package:flutter/material.dart';
import 'package:hiepnx_timer/components/main_button.dart';
import 'package:hiepnx_timer/screens/home_screen.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("About"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("About"),
            MainButton(
              child: Text("Goto home"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}