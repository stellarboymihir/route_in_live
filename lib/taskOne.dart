import 'package:flutter/material.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({super.key});

  @override
  State<TaskOne> createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Column 1
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                              // height: 50,
                              // width: 50,
                              // color: Colors.black,
                              ),
                        ),
                        Expanded(
                          child: Container(
                              // height: 50,
                              // width: 50,
                              // color: Colors.blueAccent.shade100,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent.shade100,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Column 2
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.deepPurple.shade50,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.deepPurple.shade100,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.deepPurple.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
