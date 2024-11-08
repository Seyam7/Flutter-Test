import 'package:flutter/material.dart';

class Button_demo extends StatefulWidget {
  const Button_demo({super.key});

  @override
  State<Button_demo> createState() => _Button_demoState();
}

class _Button_demoState extends State<Button_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Buttons'),
        backgroundColor: Colors.green,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onPressed: () {
              print('pressed');
            },
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(),
            onPressed: () {},
            child: Text('Outlines'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {},
            child: Text('Elevated'),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),

          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              print('Custom button pressed');
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2.9, 1.0),
                      color: Colors.green,
                      blurRadius: 0.8,
                    ),
                  ]
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(95.0),
                        bottomLeft: Radius.circular(95.0),
                        bottomRight: Radius.circular(200),
                      ),
                    ),
                    child: Icon(Icons.home),
                  ),
                  Text('Home'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              print('Custom 2 button pressed');
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2.9, 1.0),
                      color: Colors.grey,
                      blurRadius: 0.8,
                    ),
                  ]
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(95.0),
                        bottomLeft: Radius.circular(95.0),
                        bottomRight: Radius.circular(200),
                      ),
                    ),
                    child: Icon(Icons.home_filled),
                  ),
                  Text('home'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}