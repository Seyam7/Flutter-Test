import 'package:cod_test_app/buttons.dart';
import 'package:cod_test_app/expanded.dart';
import 'package:cod_test_app/login_page.dart';
import 'package:cod_test_app/shared_preference_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Page'),//Row-Column explain
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/n.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nature',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 30.0,
                      color: Colors.orange,
                    ),
                    Text(
                      '90.0',
                      style: TextStyle(fontSize: 25.0),
                    )
                  ],
                )
              ],
            ),
            Text(
              'Beautiful nature.',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(5.0),
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        size: 35,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 35,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.map,
                        size: 35,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
                'Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated. When you click Design and choose a new Theme, the pictures, charts, and SmartArt graphics change to match your new theme. When you apply styles, your headings change to match the new theme. Save time in Word with new buttons that show up where you need them.'),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. To make your document look professionally produced, Word provides header, footer, cover page, and text box designs that complement each other. For example, you can add a matching cover page, header, and sidebar.'
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Button_demo()
                    ),
                  );
                },
                child: Text('Learn more about buttons.'),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UIDisign()
                  ),
                );
              },
              child: Text('Learn more about expanded widget.'),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaveDataLocally()
                  ),
                );
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SharedPrefData()
                  ),
                );
              },
              child: Text('See shared preference data'),
            ),
          ],
        ),
      ),
    );
  }
}
