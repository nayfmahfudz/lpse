<<<<<<< HEAD
=======
import 'package:dio/dio.dart';
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keungan/homepage.dart';
import '../main.dart';
import '../setting.dart';

<<<<<<< HEAD
_navigateToNextScreen(BuildContext context, Widget newScreen) {
=======
navigateToNextScreen(BuildContext context, Widget newScreen) {
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => newScreen));
}

tinggiAs(context) {
  var pixRatio = MediaQuery.of(context).devicePixelRatio;
  var heightRatio = MediaQuery.of(context).size.height * pixRatio;
  var widthRatio = MediaQuery.of(context).size.width * pixRatio;
  return heightRatio / widthRatio;
}

lebar(context) {
  var pixRatio = MediaQuery.of(context).devicePixelRatio;
  var heightRatio = MediaQuery.of(context).size.height * pixRatio;
  var widthRatio = MediaQuery.of(context).size.width * pixRatio;
  return widthRatio / heightRatio;
}

<<<<<<< HEAD
nama(TextEditingController controller) {
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Container(
              child: TextFormField(
=======
nama(TextEditingController controller, Function(String) setstate) {
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Container(
              child: TextFormField(
            onChanged: setstate,
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
            controller: controller,
            validator: (value) {
              if (value != null && value.length < 3)
                return 'Nama Harus diisi minimal 3 kata';
              else
                return null;
            },
            autofocus: false,
            decoration: InputDecoration(
<<<<<<< HEAD
=======
              border: OutlineInputBorder(),
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
              suffixIcon:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.account_box)),
              hintText: 'Username',
              contentPadding: EdgeInsets.all(20),
            ),
          )));
}

<<<<<<< HEAD
password(TextEditingController controller, bool hide) {
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Container(
            child: TextFormField(
=======
password(TextEditingController controller, bool hide, Function(String) fungvt) {
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Container(
            child: TextFormField(
                onChanged: fungvt,
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
                validator: (value) {
                  if (value != null && value.length < 5)
                    return 'Password harus diisi Minimal 5 ';
                  else
                    return null;
                },
                autofocus: false,
                controller: controller,
                obscureText: hide ? true : false,
                decoration: InputDecoration(
                  hintText: ' Password',
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      icon: Icon(
                        hide ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          hide = !hide;
                        });
                      }),
                )),
          ));
}

class ReturnValueToParent extends StatelessWidget {
<<<<<<< HEAD
  Function myNumber;
=======
  Function() myNumber;
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
  String selected;
  String aktif;
  String tidakAktif;
  String judul;
  ReturnValueToParent(
      this.myNumber, this.selected, this.aktif, this.tidakAktif, this.judul);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.height * 0.055,
      child: GestureDetector(
<<<<<<< HEAD
          onTap: () {
            selected = judul;
          },
=======
          onTap: myNumber,
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
          child: selected == judul
              ? Column(
                  children: [
                    Image.asset(aktif, fit: BoxFit.contain),
                    Text(judul,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: biru,
                          fontWeight: FontWeight.w400,
                          textStyle: Theme.of(context).textTheme.subtitle1,
                        )),
                  ],
                )
              : Column(
                  children: [
                    Image.asset(tidakAktif, fit: BoxFit.contain),
                    Text(judul,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: biru,
                          fontWeight: FontWeight.w400,
                          textStyle: Theme.of(context).textTheme.subtitle1,
                        )),
                  ],
                )),
    ));
  }
}

menuUtama(BuildContext context, String selected, String aktif,
    String tidakAktif, String judul, Function fungsi) {
  return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Expanded(
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.height * 0.055,
            child: GestureDetector(
                onTap: () => fungsi,
                child: selected == judul
                    ? Column(
                        children: [
                          Image.asset(aktif, fit: BoxFit.contain),
                          Text(judul,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: biru,
                                fontWeight: FontWeight.w400,
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                              )),
                        ],
                      )
                    : Column(
                        children: [
                          Image.asset(tidakAktif, fit: BoxFit.contain),
                          Text(judul,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: biru,
                                fontWeight: FontWeight.w400,
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                              )),
                        ],
                      )),
          )));
}
<<<<<<< HEAD
// var alamat = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           controller: alamatinputcontroller,
//           validator: validalamat,
//           onSaved: (String value) {
//             _alamat = value;
//           },
//           autofocus: false,
//           decoration: InputDecoration(
//             suffixIcon: IconButton(
//               icon: Icon(Icons.home),
//             ),
//             hintText: 'Alamat ',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//           ),
//         )));
// var nomor = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           keyboardType: TextInputType.phone,
//           controller: nomorinputcontroller,
//           validator: validnomor,
//           autofocus: false,
//           decoration: InputDecoration(
//             hintText: ' Nomor Telepon',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//             suffixIcon: IconButton(icon: Icon(Icons.phone_android)),
//           ),
//         )));
// void gberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Gagal Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// void jberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Berhasil Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// void uberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Berhasil Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// int switchControl;

// String hasil;

// void berhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               Provider.of<Restapi>(context).getmsg(),
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[okButton],
//           ),
//         ));
// void keluar(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Mau Keluar?",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[
//               Row(
//                 children: <Widget>[
//                   keluaryaButton,
//                   SizedBox(
//                     width: 20,
//                   ),
//                   keluartidakButton
//                 ],
//               )
//             ],
//           ),
//         ));

// alarm(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               Provider.of<Restapi>(context).getmsgggl(),
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[okButton],
//           ),
//         ));
// var keluaryaButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 100.0,
//       height: 42.0,
//       onPressed: () {
//         dbHelper.deleteUser();
//         Navigator.pushNamed(context, "/Login");
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'Ya',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// var keluartidakButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 100.0,
//       height: 42.0,
//       onPressed: () {
//         Navigator.pop(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'Tidak',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// var okButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         Navigator.pop(context);
//         Navigator.pop(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'OK',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// // var gantiButton = Builder(
// //     builder: (BuildContext context) => Padding(
// //           padding: EdgeInsets.only(left: 30),
// //           child: Align(
// //             alignment: Alignment.bottomCenter,
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width,
// //               child: RaisedButton(
// //                 // padding: EdgeInsets.all(10),
// //                 onPressed: () {
// //                   if (formKey2.currentState.validate()) {
// //                     formKey2.currentState.save();
// //                     gantipass(context, passvrinputcontroller.text);
// //                   } else {
// //                     StatefulBuilder(builder: (context, setState) {
// //                       setState(() {
// //                         autoValidate = true;
// //                       });
// //                     });
// //                   }
// //                 },
// //                 child: const Text('Verifikasi', style: TextStyle(fontSize: 20)),
// //                 color: Color.fromRGBO(237, 155, 12, 1),
// //                 textColor: Colors.white,
// //                 // elevation: 5,
// //               ),
// //             ),
// //           ),
// //           // ),
// //         ));

// //    Material(
// //     borderRadius: BorderRadius.circular(60.0),
// //     shadowColor: Color.fromRGBO(237, 155, 12, 1),
// //     // elevation: 5.0,
// //     child: MaterialButton(
// //         minWidth: 200.0,
// //         height: 42.0,
// //         onPressed: () {

// //   if (formKey2.currentState.validate()) {
// //     formKey2.currentState.save();
// //     gantipass(context, _passver);
// //   } else {
// //     StatefulBuilder(builder: (context, setState) {
// //       setState(() {
// //         autoValidate = true;
// //       });
// //     });
// //   }},
// //  color: Color.fromRGBO(237, 155, 12, 1),
// //       child: Text('Verifikasi', style: TextStyle(color: Colors.white)),

// //         ),
// //   ),
// // );
// var joinButton = Builder(
//   builder: (BuildContext context) => Material(
//     borderRadius: BorderRadius.circular(60.0),
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         joinagenda(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Sign In', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// var signButton = Builder(
//   builder: (BuildContext context) => Material(
//     borderRadius: BorderRadius.circular(60.0),
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         if (formKey1.currentState.validate()) {
//           formKey1.currentState.save();
//           postSignUp(
//               context,
//               namainputcontroller.text,
//               emailinputcontroller.text,
//               passinputcontroller.text,
//               alamatinputcontroller.text,
//               nomorinputcontroller.text);
//         } else {
//           StatefulBuilder(builder: (context, setState) {
//             setState(() {
//               autoValidate = true;
//             });
//           });
//         }
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Sign Up', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// final email = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           validator: validemail,
//           onSaved: (String value) {
//             _email = value;
//           },
//           controller: emailinputcontroller,
//           keyboardType: TextInputType.emailAddress,
//           autofocus: false,
//           // initialValue: "Masukan Username atau Email",
//           decoration: InputDecoration(
//             suffixIcon: IconButton(icon: Icon(Icons.keyboard)),
//             hintText: 'Email',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//           ),
//         )));
// // final

// bool passwordVisible = true;

loginButton(formKey) {
  return Builder(
    builder: (BuildContext context) => Material(
      borderRadius: BorderRadius.circular(60.0),
      shadowColor: Color.fromRGBO(237, 155, 12, 1),
=======

Future login(user, pass) async {
  var dio = Dio();
  final response = await dio.post('http://192.168.10.6/api/auth', data: {
    "user": user,
    "pass": pass,
  });
  return true;
}

loginButton(user, pass, formKey) {
  return Builder(
    builder: (BuildContext context) => Material(
      borderRadius: BorderRadius.circular(60.0),
      shadowColor: biru,
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
      // elevation: 5.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
<<<<<<< HEAD
          print(formKey.currentState.validate());
          if (formKey.currentState.validate()) {
            print("ddd");
            _navigateToNextScreen(context, Menu());
          }
          print("ddd");
        },
        color: Color.fromRGBO(237, 155, 12, 1),
=======
          print(user);
          print(pass);
          if (formKey.currentState.validate()) {
            login(user, pass).then((value) {
              value["message"] == true
                  ? navigateToNextScreen(
                      context, Menu(value["imageurl"], value["nama"]))
                  : null;
            });
          }
        },
        color: biru,
>>>>>>> 420bb15 (Please enter the commit message for your changes. Lines starting)
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}

text(String text, Function to) {
  return Builder(
      builder: (BuildContext context) => GestureDetector(
            child: Text(
              text,
              style: TextStyle(color: Colors.black54),
            ),
            onTap: () {
              to;
            },
          ));
}

// final editButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         edituser(context, namainputcontroller.text, emailinputcontroller.text,
//             alamatinputcontroller.text, nomorinputcontroller.text);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Edit', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// // void settingModalBottomSheet(BuildContext context) => showModalBottomSheet(
// //     context: context,
// //     builder: (context) {
// //       return Iconbottom();
// //     });

// var searchInputLabel = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
// //          validator: validKeyword,
//               autofocus: false,
// //          onSaved: (value) {
// //            _keyword = value;
// //          },
// //          controller: keywordInputController,
//               onTap: () {
//                 Navigator.of(context).pushNamed("/Search");
//               },
//               decoration: InputDecoration(
//                 hintText: ' Search...',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       Icons.search,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("/Search");
//                     }),
//               )),
//         ));

// var searchInput = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
// //          validator: validKeyword,
//               autofocus: false,
// //          onSaved: (value) {
// //            _keyword = value;
// //          },
// //          controller: keywordInputController,
//               onTap: () {
//                 Navigator.of(context).pushNamed("/Search");
//               },
//               decoration: InputDecoration(
//                 hintText: ' Search...',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       Icons.search,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("/Search");
//                     }),
//               )),
//         ));

// //String validKeyword(String value) {
// //  if (value.length < 5) return 'Minimum keyword char is 3';
// //}
