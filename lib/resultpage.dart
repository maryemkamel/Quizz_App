import 'package:flutter/material.dart';
import 'package:firebase_signin/home.dart';

class resultpage extends StatefulWidget {
  late int? marks;
  resultpage({Key ? key,required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {

  late List<String>? images = [
    "images/winner.png",
    "images/good.png",
    "images/bad.png",
  ];

   late String? message ;
   late String? image;

  @override
  void initState(){

    if(marks! < 20){
      image = images![2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    }else if(marks! < 35){
      image = images![1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    }else{
      image = images![0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }
    super.initState();
  }

   late int? marks ;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),

           flexibleSpace: Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Colors.pink,Colors.purple, Colors.deepPurpleAccent]),
    ),
    ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image!,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                      child: Text(
                        message!,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Quando",
                        ),
                      ),
                    )
                    ),
                  ],
                ),
              ),
            ),            
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(

                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    side: BorderSide(width: 3.0, color: Colors.indigo),
                    primary: Colors.indigoAccent,
                  ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}