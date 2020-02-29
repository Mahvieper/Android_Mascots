import 'package:flutter/material.dart';

import 'info_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _createDrawerItems(String name,String assetImage) {
    return ListTile(
      title: Text(name),
      trailing: Image.asset(assetImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android Mascots"),
        centerTitle: true,
      ),
      drawer: Tooltip(
        message: "Open Navigation Menu",
        child: Drawer(
          child: ListView(
            children: <Widget>[
              _createDrawerItems("Android Donut","asset/Donut.png"),
              _createDrawerItems("Android Eclair","asset/Eclair.png"),
              _createDrawerItems("Android Froyo","asset/Froyo.png"),
              _createDrawerItems("Android GingerBread","asset/Gingerbread.png"),

            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(

              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => InfoPage()));
                  },
                  child: Hero(
                      tag: "Donut",
                      child: Image.asset("asset/Donut.png")),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => InfoPage()));
                  },
                  child: Hero(
                      tag: "Ecliar",
                      child: Image.asset("asset/Eclair.png")),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => InfoPage()));
                  },
                  child: Hero(
                      tag: "Froyo",
                      child: Image.asset("asset/Froyo.png")),
                ),


              ],
            ),
          ),
        ) ,
      ),
    );
    
  }
}
