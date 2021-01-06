import 'package:flutter/material.dart';



void main() {
  runApp(
    page1(),
  );
}
class page1 extends StatefulWidget {
  @override
  _page1 createState() => _page1();
}

class _page1 extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/jul.jpg'),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                FlatButton(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('image/gon.jpg'),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return seconde_page();
                        }),
                      );
                    }),
                Text(
                  'Friha walid',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Text(
                    "Eleve ingénieur ITS",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 15.0,
                      color: Colors.black,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade50,
                  ),
                ),
                Card(
                  color: Colors.grey.shade400,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      "wfriha.94140@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Pacifico'),
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade400,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      "+33 (0) 6 58 74 54 12",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Pacifico'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class seconde_page extends StatefulWidget {
  @override
  _seconde_page createState() => _seconde_page();
}

class _seconde_page extends State<seconde_page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text('peut être seconde page '),
    );
  }
}