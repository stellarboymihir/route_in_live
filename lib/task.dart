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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Row(
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
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              // height: 100,
                              // width: 100,
                              color: Colors.deepPurpleAccent.shade700,
                              child: Expanded(
                                child: Container(
                                  // height: 10,
                                  // width: 10,
                                  color: Colors.black,
                                  child: Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: Colors.white,
                                            // height: 10,
                                            // width: 10,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            // height: 10,
                                            // width: 10,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            // height: 10,
                                            // width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     // height: 10,
                    //     // width: 10,
                    //     color: Colors.deepPurpleAccent.shade200,
                    //   ),
                    // ),
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
