import 'package:cod_test_app/home_page.dart';
import 'package:cod_test_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefData extends StatefulWidget {
  const SharedPrefData({super.key});

  @override
  State<SharedPrefData> createState() => _SharedPrefDataState();
}

class _SharedPrefDataState extends State<SharedPrefData> {

  String? value;
  SharedPreferences? sharedPreferences;

  getSavedData()async{
    sharedPreferences=await SharedPreferences.getInstance();
    value= sharedPreferences!.getString('seyam');

    setState(() {

    });
  }

  @override
  void initState() {
    getSavedData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Shared Preference Data'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                    '$value',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RowColumn()
                    ),
                  );
                },
                child: Text('Back to home page'),
              ),
              ElevatedButton(
                style: OutlinedButton.styleFrom(),
                onPressed: ()async{
                  sharedPreferences=await SharedPreferences.getInstance();
                  sharedPreferences!.clear();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>SaveDataLocally()), (route) => false);
                },
                child: Text('Logout or Clear shared preference'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

