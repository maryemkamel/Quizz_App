import 'package:firebase_signin/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_signin/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/maroc.png",
    "images/swift.png",
    "images/java.png",
    //"images/cpp.png",
    //"images/linux.png",
  ];

  List<String> des = [
    "Knowledge of a broad range of facts about various subjects.\nDo you think you have enough culture about Morocco.. \nJust test yourself !!",
    "Swift is one of the most Popular programming language supporting the Mobile.\nIt has a wide range of packages making it Very Powerful !",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",

    //"C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
   // "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  ];

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file 
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          //color: Colors.indigoAccent,
          elevation: 0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  hexStringToColor("CB2B93"),
                  hexStringToColor("9546C4"),
                  hexStringToColor("5E61F4")
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuizApp",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ), flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.pink,Colors.purple, Colors.deepPurpleAccent]),
        ),
      ),

      ),

      body: ListView(
        children: <Widget>[
          customcard("GeneralKnowledge", images[0], des[0]),
          customcard("Swift", images[1], des[1]),
          customcard("Java", images[2], des[2]),
          //customcard("C++", images[3], des[3]),
         // customcard("Linux", images[4], des[4]),
        ],

      ),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(


        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),


    );
  }
