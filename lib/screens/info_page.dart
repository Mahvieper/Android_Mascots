import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android Mascots"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "Donut",
              child: Image.asset("asset/Donut.png",
              fit: BoxFit.fitHeight,),
            ),
            SizedBox(height: 10,),
            Text("Donut"),
            Hero(
              tag: "Eclair",
              child: Image.asset("asset/Eclair.png",
                fit: BoxFit.fitHeight,),
            ),
            SizedBox(height: 10,),
            Text("Eclair"),
            Hero(
              tag: "Froyo",
              child: Image.asset("asset/Froyo.png",
                fit: BoxFit.fitHeight,),
            ),
            SizedBox(height: 10,),
            Text("Froyo"),
          ],
        ),
      ),
    );
  }
}
