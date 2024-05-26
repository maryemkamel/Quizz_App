import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:firebase_signin/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_signin/screens/quizz_screen.dart';

import '../home.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,
              fontFamily: 'Alone in the Dark',color: Colors.amber,),
        ),
       // backgroundColor: Color(0xFFFF80AB),
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: Container(

        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        //alignment: Alignment.center,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Center(
          child: Text(
            'QuizzApp',
            style: TextStyle(fontSize: 90,fontFamily: 'Signatra',color: Colors.white,),
          ),

        ),
          SizedBox(height: 35,),
          Center (

            child: Image.asset('assets/images/img.png',fit:BoxFit.contain,width: 300,height: 300,alignment: Alignment.centerLeft,),
          ),
          SizedBox(height: 35,),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 300,
                  height: 60,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                    onPressed: (){
                      Navigator . push (
                       // context , MaterialPageRoute ( builder : ( context ) => QuizzScreen ()), );},
    context , MaterialPageRoute ( builder : ( context ) => homepage ()), );},
                    color: Colors.purpleAccent,
                    shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all((Radius.circular(30))),
                    ),

                    child:  Text("Lets Start Quiz!!",
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                        fontFamily: 'GothamBold.ttf')
                      ),
                    )
                  ),

              ],
            ),
          ),
          //SizedBox(height: 170,),
      ],
      ),
     ),
    );
  }
}
class btnStart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center (
        child: Column(

    ),
    ),
    );
  }
}
