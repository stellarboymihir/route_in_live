import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1st Part
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Row(
                    // Upper Part  1st Row
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.deepPurpleAccent.shade100,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // padding: const EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          color: Colors.deepPurpleAccent.shade100,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // padding: const EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          color: Colors.deepPurpleAccent.shade100,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // padding: const EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          color: Colors.deepPurpleAccent.shade100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // Upper Part 2nd Row
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // padding: const EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // padding: const EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // padding: const EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                    ),
                  ],
                ),
              ),

              //Lower Part
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              // Lower Part 1st border radius
                              padding: const EdgeInsets.all(40),
                              // height: 100,
                              // width: 100,
                              color: Colors.deepPurpleAccent.shade700,
                              child: Expanded(
                                child: Container(
                                  // Lower Part 2nd border radius
                                  padding: const EdgeInsets.all(40),
                                  // height: 10,
                                  // width: 10,
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    color: Colors
                                                        .yellowAccent.shade200,
                                                    // height: 10,
                                                    // width: 10,
                                                    // child: Column(
                                                    //   children: [
                                                    //     Expanded(
                                                    //       child: Container(
                                                    //         padding:
                                                    //             EdgeInsets.all(10),
                                                    //         // height: 10,
                                                    //         // width: 10,
                                                    //         // color: Colors.blueAccent
                                                    //         //     .shade100,
                                                    //         // child: Container(
                                                    //         //   // height: 10,
                                                    //         //   // width: 10,
                                                    //         //   color: Colors
                                                    //         //       .purpleAccent
                                                    //         //       .shade200,
                                                    //         //
                                                    //         //   child: Container(
                                                    //         //     // height: 10,
                                                    //         //     // width: 10,
                                                    //         //     color: Colors
                                                    //         //         .purpleAccent
                                                    //         //         .shade700,
                                                    //         //   ),
                                                    //         // ),
                                                    //       ),
                                                    //     ),
                                                    //   ],
                                                    // ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors
                                                    .yellowAccent.shade400,
                                                // height: 10,
                                                // width: 10,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors
                                                    .yellowAccent.shade700,
                                                // height: 10,
                                                // width: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
