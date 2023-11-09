import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounterApp());
}

class BasketBallCounterApp extends StatefulWidget {
  @override
  State<BasketBallCounterApp> createState() => _BasketBallCounterAppState();
}

class _BasketBallCounterAppState extends State<BasketBallCounterApp> {
  int teamAPoints=0;

  int teamBPoints=0;

  // void addOnePoint(){
  //   teamAPoints++;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 450,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamAPoints',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            child: Text('Add 1 Point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18

                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints+=2;
                              });
                            },
                            child: Text('Add 2 Point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints+=3;
                              });
                            },
                            child: Text('Add 3 Point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 10,)
                      ],
                    ),
                  ),
                  Container(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 105,
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamBPoints',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child: Text('Add 1 Point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints+=2;
                              });
                            },
                            child: Text('Add 2 Point',
                              style: TextStyle(
                                  color:Colors.black,
                                  fontSize: 18
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints+=3;
                              });
                            },
                            child: Text('Add 3 Point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:Size(150, 50)
                            ),
                          ),
                        ),
                        // Spacer(flex: 10,),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              }, child: Text('Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(150, 50)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
