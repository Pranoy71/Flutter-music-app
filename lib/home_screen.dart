import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                  height: screenheight,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 22, 76, 108),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        height: screenheight,
                        child: Container(
                          color: // Colors.orange[200]
                              const Color.fromARGB(255, 22, 76, 108),
                        ),
                      ),
                      Positioned(
                          //1st box
                          top: screenheight / 30,
                          left: 12,
                          right: 12,
                          height: screenheight / 19,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 194, 166, 82),
                            ),
                          )),
                      Positioned(
                        //1st box
                        top: screenheight / 9,
                        left: (screenwidth - 150) / 20,
                        right: (screenwidth / 2) + 12,
                        height: screenheight / 3,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.amber,
                            ),
                            child: 
                            Stack(
                              children: [
                             ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/Forest.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Positioned(
                               top: 170,
                               left: 10 ,
                               right: 0,
                              child :
                              Text("Deep Forest Vibe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                            )

                            ]
                            )
                            ),
                      ),
                      Positioned(
                          // 2nd box
                          top: screenheight / 9,
                          left: (screenwidth / 2) + 12,
                          right: (screenwidth - 150) / 20,
                          height: screenheight / 3,
                          child: Container(
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/Underwater.jpg',
                                fit: BoxFit.fill,
                              ),
                            )
                          ),
                      ),
                      Positioned(
                          // 3rd box
                          top: (screenheight / 2) - 22,
                          left: (screenwidth - 150) / 20,
                          right: (screenwidth / 2) + 12,
                          height: screenheight / 3,
                          // bottom: 20,
                          child: Container(
                            decoration: BoxDecoration(                      
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(202, 172, 127, 0.878),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/River.jpg',
                                fit: BoxFit.fill,
                              ),
                            )
                          )),
                      Positioned(

                          // 2nd box
                          top: (screenheight / 2) - 22,
                          left: (screenwidth / 2) + 12,
                          right: (screenwidth - 150) / 20,
                          height: screenheight / 3,
                          child: Container(
                            
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 56, 129, 58),
                          ),
                          child: ClipRRect(
                             
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/Waterfall.jpg',
                                fit: BoxFit.fill,
                              ),
                            )
                          )),
                    ],
                  ))
            ])));
  }
}
