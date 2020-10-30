import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Card(
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      textColor: Colors.grey[700],
                      color: Colors.grey[100],
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('FORMAL',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),),
                    ),
                    RaisedButton(
                      textColor: Colors.grey[700],
                      color: Colors.grey[100],
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('SPORTS',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),

                    RaisedButton(
                      color: Colors.orange,
                      textColor: Colors.white70,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('RUNNING',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),),
                    ),
                    RaisedButton(
                      textColor: Colors.grey[700],
                      color: Colors.grey[100],
                      elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16.0))),
                        onPressed: () {
                      // Perform some action
                    },
                    child: const Text('CASUAL',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
               //Image.asset('images/nike.jpg',
                //width: 150),
                Column(
                  children: [
              Stack(
                children: [
                  Row(
                    children: [
                  SizedBox(
                    width: 120,
                    child: Container(
                      width:100,
                      height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(55.0),
                                bottomRight: Radius.circular(55.0)),
                            )
                        )
                      ),
                  SizedBox(
                    width:30),
                    ]
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top:30,
                      bottom: 30,
                      left: 5,
                    ),
                    child: Image.asset('images/nike5.png',
                      width: 150),
                  ),
                ],
              ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 16,
                      height: 30,),
                      SizedBox(width: 60,
                        height: 12,
                        child: new RaisedButton(
                          textColor: Colors.grey[100],
                          color: Colors.orange,
                          elevation: 1,
                          padding: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0))),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('New Arrivals',
                              style: TextStyle(
                                fontSize: 8,
                                fontStyle: FontStyle.italic,
                              ),
                          ),
                        ),
                      ), //the icons would not align with the rest otherwise
                    ],
                  ),
                  Padding(
                  padding: const EdgeInsets.only(
                    left:16,
                    top: 0,
                    bottom:2.5,
                  ),
                  child: Text(
                    'NIKE AIR EDGE 270',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left:16,
                      top: 5,
                      bottom:2.5,
                    ),
                  child: Text(
                    'PARACHUTE',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 16), //the icons would not align with the rest otherwise
                        Icon(Icons.star, color: Colors.orange[500], size: 15),
                        Icon(Icons.star, color: Colors.orange[500], size: 15),
                        Icon(Icons.star, color: Colors.orange[500], size: 15),
                        Icon(Icons.star, color: Colors.grey[250], size: 15),
                        Icon(Icons.star, color: Colors.grey, size: 15),
                      ],
                    ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'NAD750',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 40),
                      Icon(Icons.shopping_cart, color: Colors.grey[400], size: 15),
                      SizedBox(width: 10),
                      Icon(Icons.rate_review, color: Colors.grey[400], size: 15),
                      SizedBox(width: 10),
                      Icon(Icons.favorite, color: Colors.grey[400], size: 15),
                      SizedBox(width: 10),
                    ],
                  ),
                ]
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                            children: [
                              SizedBox(
                                  width: 120,
                                  child: Container(
                                      width:100,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(55.0),
                                            bottomRight: Radius.circular(55.0)),
                                      )
                                  )
                              ),
                              SizedBox(
                                  width:30),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top:30,
                            bottom: 30,
                            left: 5,
                          ),
                          child: Image.asset('images/nike4.png',
                              width: 150),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16,
                            height: 30,),
 //the icons would not align with the rest otherwise
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'NIKE AIR EDGE 270',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'PARACHUTE',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16), //the icons would not align with the rest otherwise
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.grey[250], size: 15),
                          Icon(Icons.star, color: Colors.grey, size: 15),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'NAD750',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.shopping_cart, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.rate_review, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.favorite, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                        ],
                      ),
                    ]
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                            children: [
                              SizedBox(
                                  width: 120,
                                  child: Container(
                                      width:100,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(55.0),
                                            bottomRight: Radius.circular(55.0)),
                                      )
                                  )
                              ),
                              SizedBox(
                                  width:30),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top:30,
                            bottom: 30,
                            left: 5,
                          ),
                          child: Image.asset('images/nike3.png',
                              width: 150),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16,
                            height: 30,),
                          //the icons would not align with the rest otherwise
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'NIKE AIR EDGE 270',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'PARACHUTE',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16), //the icons would not align with the rest otherwise
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.grey[250], size: 15),
                          Icon(Icons.star, color: Colors.grey, size: 15),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'NAD750',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.shopping_cart, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.rate_review, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.favorite, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                        ],
                      ),
                    ]
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                            children: [
                              SizedBox(
                                  width: 120,
                                  child: Container(
                                      width:100,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(55.0),
                                            bottomRight: Radius.circular(55.0)),
                                      )
                                  )
                              ),
                              SizedBox(
                                  width:30),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top:30,
                            bottom: 30,
                            left: 5,
                          ),
                          child: Image.asset('images/nike5.png',
                              width: 150),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16,
                            height: 30,),
                          SizedBox(width: 60,
                            height: 12,
                            child: new RaisedButton(
                              textColor: Colors.grey[100],
                              color: Colors.orange,
                              elevation: 1,
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(6.0))),
                              onPressed: () {
                                // Perform some action
                              },
                              child: const Text('New Arrivals',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ), //the icons would not align with the rest otherwise
                        ],
                      ),                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'NIKE AIR EDGE 270',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left:16,
                          top: 0,
                          bottom:2.5,
                        ),
                        child: Text(
                          'PARACHUTE',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 16), //the icons would not align with the rest otherwise
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.orange[500], size: 15),
                          Icon(Icons.star, color: Colors.grey[250], size: 15),
                          Icon(Icons.star, color: Colors.grey, size: 15),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'NAD750',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.shopping_cart, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.rate_review, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                          Icon(Icons.favorite, color: Colors.grey[400], size: 15),
                          SizedBox(width: 10),
                        ],
                      ),
                    ]
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
