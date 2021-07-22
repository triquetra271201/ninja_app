import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjalevel++;
            });
          },
      child: Icon(Icons.add,),
      backgroundColor: Colors.red,),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/bruh.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.red[900],
            ),
            Text('NAME:',
            style: TextStyle(
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 10.0,),
            Text('Chun-Li',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.lightGreenAccent[100],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 30.0,),
            Text('NINJA CURRENT LEVEL:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 10.0,),
            Text('$ninjalevel',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.lightGreenAccent[100],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.mail,
                ),
                SizedBox(width: 20.0,),
                Text('rkl.com',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.lightGreenAccent[100],
                  fontSize: 20.0,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}






