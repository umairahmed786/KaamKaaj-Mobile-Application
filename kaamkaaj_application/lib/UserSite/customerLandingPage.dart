import 'package:flutter/material.dart';

class CustomerLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/kaam-kaaj.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('Kaam Kaaj'))
            ],
          ),
        ),
        body: Scrollbar(
          isAlwaysShown: true, //always show scrollbar
          thickness: 10, //width of scrollbar
          radius: Radius.circular(20), //corner radius of scrollbar
          scrollbarOrientation:
              ScrollbarOrientation.left, //which side to show scrollbar
          child: SingleChildScrollView(
            child: SizedBox(
              child: Container(
                color: Color.fromRGBO(143, 42, 5, 1),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Find the perfect freelance\nservices for your business",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 8.0),
                              height: 50,
                              width: 500,
                              child: Center(
                                child: SizedBox(
                                  width: 200,
                                  height: 100,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(247, 150, 32, 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      onPressed: () {},
                                      child: Text(
                                        "Post Job",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 500,
                                  child: Center(
                                    child: Image.asset(
                                        'customer-removebg-preview.png'),
                                  ),
                                ), // <-- SEE HERE
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Stack(children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 250,
                              child: Card(
                                  child:
                                      Image.asset('main_page_carpenter.jpg')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                          child: Text(
                            'Carpenter',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ]),
                    Stack(children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 250,
                              child: Card(
                                  child:
                                      Image.asset('main_page_electrician.jpg')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                          child: Text(
                            'Electrician',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ]),
                    Stack(children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 250,
                              child: Card(
                                  child: Image.asset('main_page_plumber.jpg')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                          child: Text(
                            'Plumber',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ]),
                    Stack(children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 350,
                              height: 250,
                              child: Card(
                                  child: Image.asset('main_page_movers.jpeg')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                          child: Text(
                            'Mover',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
