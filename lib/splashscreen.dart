import 'package:flutter/material.dart';
<<<<<<< HEAD
=======

>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
// import 'package:test2/util/dbhelper.dart';
// import 'form.dart';
// import 'fom.dart';
// import 'provider/Restapi.dart';
<<<<<<< HEAD
import 'util/dbhelper.dart';

=======
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
<<<<<<< HEAD
  // void toggle() {
  //   setState(() {
  //     Provider.of<Restapi>(context).setboolean(true);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final logo = Image.asset(
    //   "gambar/dorun-orange-2.png",
    //   height: 100,
    //   width: 300,
    // );

=======
  @override
  Widget build(BuildContext context) {
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
              // key: formKey,
              child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
<<<<<<< HEAD
              Text("ddddß"),
              // logo,
              SizedBox(height: 24.0),
              // nama,
              SizedBox(height: 8.0),
              // password,
              SizedBox(height: 24.0),
              // loginButton,
              SizedBox(height: 8.0),
              // belum,
=======
              Text("logo"),
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
            ],
          )),
        ));
  }
}
