import 'package:cod_test_app/home_page.dart';
import 'package:cod_test_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferences? sharedPreferences;

  checkUser() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var data = sharedPreferences!.getString('seyam');

    Future.delayed(Duration(seconds: 2), () {
      if (data != null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => RowColumn()));
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SaveDataLocally()));
      }
    });
  }

  @override
  void initState() {
    checkUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
