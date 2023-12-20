import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    // Size of the container
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      // 1st Part
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // Upper Part  1st Row
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '13',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // Upper Part 2nd Row
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '9',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '11',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurpleAccent.shade100,
                        height: height / 8,
                        width: width / 8,
                        child: const Center(
                          child: Text(
                            '45',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Lower Part
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        // Lower Part 1st border radius
                        padding: const EdgeInsets.all(40),
                        color: Colors.deepPurpleAccent.shade700,
                        child: Expanded(
                          child: Container(
                            // Lower Part 2nd border radius
                            padding: const EdgeInsets.all(40),
                            color: Colors.black,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      // Lower Part 1st Column
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: Colors.blue.shade200,
                                                child: const Center(
                                                  child: Text(
                                                    'N',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color:
                                                    Colors.blueAccent.shade400,
                                                child: const Center(
                                                  child: Text(
                                                    'A',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color:
                                                    Colors.blueAccent.shade100,
                                                child: const Center(
                                                  child: Text(
                                                    'M',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //Lower Part 2nd Column
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: Colors
                                                    .yellowAccent.shade700,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors
                                                    .yellowAccent.shade400,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors
                                                    .yellowAccent.shade700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Lower Part 3rd Column
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color:
                                                    Colors.blueAccent.shade400,
                                                child: const Center(
                                                  child: Text(
                                                    'E',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color:
                                                    Colors.blueAccent.shade100,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color:
                                                    Colors.blueAccent.shade700,
                                                child: const Center(
                                                  child: Text(
                                                    'S',
                                                    style: TextStyle(
                                                      color: Colors.white,
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
