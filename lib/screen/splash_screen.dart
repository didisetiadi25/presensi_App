import 'package:flutter/material.dart';
import 'package:presensi_app/screen/dashboard.dart';
import 'package:presensi_app/screen/loginform.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay 5 detik untuk menampilkan form login
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .center, // Menjadikan gambar dan teks ditengah secara horizontal
          mainAxisAlignment: MainAxisAlignment
              .center, // Menjadikan gambar dan teks ditengah secara vertical
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/logo.jpeg"),
              width: 200,
              height: 200,
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Text(
              "PresensiApp",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
      ),
    );
  }
}
