import 'package:cod_test_app/home_page.dart';
import 'package:cod_test_app/shared_preference_data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveDataLocally extends StatefulWidget {

  SaveDataLocally({super.key});

  @override
  State<SaveDataLocally> createState() => _SaveDataLocallyState();
}

class _SaveDataLocallyState extends State<SaveDataLocally> {
  SharedPreferences? sharedPreferences;
  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'), //Save data in local storage -> Shared preference
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
                autofocus: true,
              ),
            ),
            MaterialButton(
                onPressed: ()async{
                  sharedPreferences=await SharedPreferences.getInstance();
                  sharedPreferences!.setString('seyam', nameController.text.toString());
                  print('save button pressed and data: ${sharedPreferences!.getString('seyam')}');
                },
              child: Text('Save'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SharedPrefData()
                  ),
                );
              },
              child: Text('show data'),
              color: Colors.green,
            ),
          ],
        ),

      ),
    );
  }
}
