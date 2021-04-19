import 'package:flutter/material.dart';

class Landscape extends StatefulWidget {


  @override
  _LandscapeState createState() => _LandscapeState();
}

class _LandscapeState extends State<Landscape> {
  int id = 1;
  String message =
      "Jupiter is the biggest one.\nIt is very windy there. Pretty cool.";
  String link =
      "https://upload.wikimedia.org/wikipedia/commons/e/e1/Jupiter_%28transparent%29.png";

  void changeMessage(int newId) {
    id = newId;
    if (id == 1) {
      message =
      "Jupiter is the biggest one.\nIt is very windy there. Pretty cool.";
      link = "https://upload.wikimedia.org/wikipedia/commons/e/e1/Jupiter_%28transparent%29.png";
    } else if (id == 2) {
      message = "Saturn is pretty big.\nit has a cool ring around it.";
      link =
      "https://assets.stickpng.com/images/580b585b2edbce24c47b270d.png";
    } else if (id == 3) {
      message =
      "Mercury is very hot.temperature\ncan reach 430 degrees. Amazing";
      link = "https://assets.stickpng.com/images/580b585b2edbce24c47b2709.png";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: screenWidth*0.5,
            child: Column(

              children: [
                SizedBox(
                  height: screenHeight*0.05,
                ),
                Image.network(
                  link,

                  //width: screenWidth * 0.5,
                  height: screenHeight * 0.5,
                ),
                Container(

                  padding: EdgeInsets.all(screenWidth*0.01),
                  margin: EdgeInsets.only(top: screenHeight*0.03),
                  //width: screenWidth*0.5,
                  height: screenHeight*0.15,
                  color: Colors.blue,
                  child: FittedBox(
                    child: Text(
                      message,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: screenWidth*0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 30, width: screenWidth*0.25),
                  child: ElevatedButton(

                    onPressed: () {
                      changeMessage(1);
                    },
                    child: FittedBox(
                      child: Text(
                        "Jupiter",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 30, width: screenWidth*0.25),
                  child: ElevatedButton(
                    onPressed: () {
                      changeMessage(2);
                    },
                    child: FittedBox(
                      child: Text(
                        "Saturn",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 30, width: screenWidth*0.25),
                  child: ElevatedButton(
                    onPressed: () {
                      changeMessage(3);
                    },
                    child: FittedBox(
                      child: Text(
                        "Mercury",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
