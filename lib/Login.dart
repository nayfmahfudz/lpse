import 'package:flutter/material.dart';
// import 'package:test2/util/dbhelper.dart';
// import 'form.dart';
// import 'fom.dart';
// import 'provider/Restapi.dart';
import 'component/fom.dart';
import 'component/sizeConfig.dart';
<<<<<<< HEAD
import 'util/dbhelper.dart';
=======
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  var namaController = new TextEditingController();
  var passwordController = new TextEditingController();
  var hide = true;
  @override
  Widget build(BuildContext context) {
    print(MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .size
        .shortestSide);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
<<<<<<< HEAD
            Flexible(flex: getDeviceType() ?? 1, child: Container()),
=======
            Flexible(flex: 1, child: Container()),
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
            Expanded(
              flex: getDeviceTypeContent() ?? 3,
              child: Center(
                child: Form(
                    key: formKey,
                    child: ListView(
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 30),
                      children: <Widget>[
                        // logo,
                        SizedBox(height: 24.0),
<<<<<<< HEAD
                        nama(namaController),
                        SizedBox(height: 8.0),
                        password(passwordController, hide),
                        SizedBox(height: 24.0),
                        loginButton(formKey),
=======
                        nama(namaController, (String value) {
                          setState(() => namaController.text = value);
                        }),
                        SizedBox(height: 8.0),
                        password(passwordController, hide, (String value) {
                          setState(() => passwordController.text = value);
                        }),
                        SizedBox(height: 24.0),
                        loginButton(namaController.text,
                            passwordController.text, formKey),
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
                        SizedBox(height: 8.0),
                        text("Belum punya akun?", () {}),
                      ],
                    )),
              ),
            ),
<<<<<<< HEAD
            Flexible(flex: getDeviceType() ?? 1, child: Container()),
=======
            Flexible(flex: 1, child: Container()),
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
          ],
        ));
  }
}
