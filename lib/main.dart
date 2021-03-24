import 'package:flutter/material.dart';

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
  int ff=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(


          title: Center(child: Text("Three Planets" , style: TextStyle(fontSize: 30))),),
          body: SingleChildScrollView(
            child: Center(

              child: Container(
                height: 600,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [



                    if(ff==1)...[
                      Container(margin: EdgeInsets.all(15), padding: EdgeInsets.all(15),
                          color: Colors.blue,child: Text("Saturn is pretty big.\nit has a cool ring around it.", style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,))
                    ]else if(ff==2)...[
                      Container(margin: EdgeInsets.all(15), padding: EdgeInsets.all(15),
                          color: Colors.blue,child: Text("Jupiter is the biggest one.\nIt is very windy there. Pretty cool.", style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,))
                    ]else...[
                      Container(margin: EdgeInsets.all(15), padding: EdgeInsets.all(15),
                          color: Colors.blue,child: Text("Mercury is very hot.\ntemperature can reach 430 degrees.\nAmazing", style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,))
                    ],


                  if(ff==1)...[
                    Image.network("https://assets.stickpng.com/images/580b585b2edbce24c47b270d.png", height: 300,)
                  ]else if(ff==2)...[
                    Image.network("https://upload.wikimedia.org/wikipedia/commons/e/e1/Jupiter_%28transparent%29.png", width: 300,)
                  ]else...[
                    Image.network("https://assets.stickpng.com/images/580b585b2edbce24c47b2709.png", width: 300,)
                  ],


                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        ElevatedButton(onPressed: () {setState(() {ff=1;});}, child: Text("Jupiter", style: TextStyle(fontSize: 20),)),
                        ElevatedButton(onPressed: () {setState(() {ff=2;});}, child: Text("Saturn", style: TextStyle(fontSize: 20),)),
                        ElevatedButton(onPressed: () {setState(() {ff=3;});}, child: Text("Mercury", style: TextStyle(fontSize: 20),)),

                      ],
                    ),
                  )
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
