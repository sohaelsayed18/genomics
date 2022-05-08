import 'package:flutter/material.dart';

import 'check_details.dart';

class check_page extends StatefulWidget {
  const check_page({Key? key}) : super(key: key);

  @override
  _check_pageState createState() => _check_pageState();
}

class _check_pageState extends State<check_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFFF6D09D),
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                  child: Text(
                    'Skin Check',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => check_details(),
                    ));
              },
              child: Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFFF6D09D),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Check Your Skin And Get The Percentage',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        ' Of Your Illness',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80.0,
                                width: 80.0,
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0xFFDA600E),
                                  size: 35.0,
                                ),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF6D09D),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 8.0)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              const Text(
                                'Take a picture',
                                style: TextStyle(
                                    color: Color(0xFFDA600E), fontSize: 18.0),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 40.0,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80.0,
                                width: 80.0,
                                child: const Icon(
                                  Icons.photo_album,
                                  color: Color(0xFFDA600E),
                                  size: 35.0,
                                ),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF6D09D),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 8.0)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              const Text(
                                'Upload a picture',
                                style: TextStyle(
                                    color: Color(0xFFDA600E), fontSize: 18.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
