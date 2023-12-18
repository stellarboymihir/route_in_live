import 'package:flutter/material.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({super.key});

  @override
  State<TaskOne> createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Expanded(
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
                                // color: Colors.black,
                                ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 50,
                              // width: 50,
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
                                // height: 50,
                                // width: 50,
                                // color: Colors.black,
                                ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 50,
                              // width: 50,
                              color: Colors.blueAccent.shade100,
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
                            child: Container(
                              // height: 50,
                              // width: 50,
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
                              color: Colors.blueAccent.shade100,
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
                                // color: Colors.black,
                                ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 50,
                              // width: 50,
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
                              // height: 50,
                              // width: 50,
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
                                // color: Colors.black,
                                ),
                          ),
                          Expanded(
                            child: Container(
                              // height: 50,
                              // width: 50,
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
                              // height: 50,
                              // width: 50,
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

                    // Expanded(
                    //   child: Container(
                    //       // color: Colors.blue.shade50,
                    //       ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //       // color: Colors.blue.shade100,
                    //       ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     color: Colors.blue.shade200,
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //       // color: Colors.blue.shade300,
                    //       ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //       // color: Colors.blue.shade400,
                    //       ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     color: Colors.blue.shade200,
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //       // color: Colors.blue.shade600,
                    //       ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     color: Colors.blue.shade200,
                    //   ),
                    // ),
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
      ),
    );
  }
}
