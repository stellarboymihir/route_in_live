import 'package:flutter/material.dart';

class Rect extends StatefulWidget {
  const Rect({super.key});

  @override
  State<Rect> createState() => _RectState();
}

class _RectState extends State<Rect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple.shade200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple.shade200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple.shade200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple.shade200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple.shade200,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 2nd Part
            Expanded(
              child: Column(
                children: [
                  // 2nd Part
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.deepPurple.shade200,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          // 2.2 Part
                          Expanded(
                            child: Column(
                              children: [
                                // 2 . 2 . 1 Part
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                // 2 . 2 . 2
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 4,
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.greenAccent,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.greenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 4,
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.greenAccent,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.greenAccent,
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
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.deepPurple.shade200,
                            padding: const EdgeInsets.all(20.0),
                            child: Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: Colors.redAccent.shade200,
                                child: Column(
                                  children: [
                                    //3.1.1
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              color:
                                                  Colors.greenAccent.shade200,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Container(
                                              color:
                                                  Colors.greenAccent.shade200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    // 3.1.2
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              color:
                                                  Colors.greenAccent.shade200,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Expanded(
                                            child: Container(
                                              color:
                                                  Colors.greenAccent.shade200,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Expanded(
                                            child: Container(
                                              color:
                                                  Colors.greenAccent.shade200,
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
    );
  }
}
