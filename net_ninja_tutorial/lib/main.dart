// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int NinjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber[900],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            NinjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/jojo.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.amberAccent[100],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'BHUMIKA BARUWAL',
              style: TextStyle(
                color: Colors.amberAccent[50],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$NinjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[50],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amber[50],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'bhumika0380@xavier.edu.np',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
