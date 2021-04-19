import 'package:flutter/material.dart';
import 'package:planets/screens/landscape_body.dart';
import 'package:planets/screens/portrait_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "planets",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int id = 1;
  String message =
      "Jupiter is the biggest one.\nIt is very windy there. Pretty cool.";
  String link =
      "https://assets.stickpng.com/images/580b585b2edbce24c47b270d.png";

  void changeMessage(int newId) {
    id = newId;
    if (id == 1) {
      message =
          "Jupiter is the biggest one.\nIt is very windy there.\nPretty cool.";
      link = "https://assets.stickpng.com/images/580b585b2edbce24c47b270d.png";
    } else if (id == 2) {
      message = "Saturn is pretty big.\nit has a cool ring around it.";
      link =
          "https://upload.wikimedia.org/wikipedia/commons/e/e1/Jupiter_%28transparent%29.png";
    } else if (id == 3) {
      message =
          "Mercury is very hot.temperature\ncan reach 430 degrees.\nAmazing";
      link = "https://assets.stickpng.com/images/580b585b2edbce24c47b2709.png";
    }

    setState(() {});
  }




  @override
  Widget build(BuildContext context) {



    final appBar = AppBar(
      title: Center(
          child: FittedBox(child: Text("Three Planets", style: TextStyle(fontSize: 30)))),
    );


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final screenOrientation = MediaQuery.of(context).orientation;

    return Container(
      child: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: screenHeight - appBarHeight - statusBarHeight,
              width: screenWidth,
              child: LayoutBuilder(
                builder: (context, constraints){
                  if(screenOrientation == Orientation.portrait){
                    return Portrait();
                  }else{
                    return Landscape();
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}


