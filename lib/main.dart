import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() => runApp(new MaterialApp(home: MyApp(),
debugShowCheckedModeBanner: false,
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
