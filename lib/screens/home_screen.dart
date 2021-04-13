import 'package:flutter/material.dart';
import 'package:hiepnx_timer/components/main_button.dart';
import 'package:hiepnx_timer/screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      drawer: _makeDrawer(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            MainButton(
              child: Text("Goto about"),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _makeDrawer() {
    return Container(
      width: 200,
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("MENU", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(width: double.infinity, color: Colors.white, height: 1,),
          ListTile(
            title: Text("Item 1"),
            leading: Icon(Icons.access_alarm),
          ),
          ListTile(
            title: Text("Item 2"),
            leading: Icon(Icons.add_alert_rounded),
          ),
          ListTile(
            title: Text("Item 3"),
            leading: Icon(Icons.adb_rounded),
          )
        ],
      ),
    );
  }
}