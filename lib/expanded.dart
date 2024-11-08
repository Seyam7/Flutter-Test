import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIDisign extends StatefulWidget {
  const UIDisign({super.key});

  @override
  State<UIDisign> createState() => _UIDisignState();
}

class _UIDisignState extends State<UIDisign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 1,
        title: Text('Expanded'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.teal,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.purple,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.brown,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.yellow,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.teal,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.red,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.orange,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      color: Colors.brown,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
