import 'package:flutter/material.dart';
import 'package:music_app/home_screen_test.dart' as homescreen;
import 'package:music_app/second_screen.dart' as secondscreen;

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(219, 27, 16, 45), //Color.fromARGB(255, 20, 117, 118),
          flexibleSpace: (Stack(children: [
            Positioned(
              top: 40,
              left: (screenwidth) / 20,
              right: (screenwidth / 2) + 70,
              child: Container(
                //alignment: Alignment.bottomCenter,
                child: const Text(
                  "Sangeet",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
                top: 40, //screenwidth- (screenwidth/20),
                left: (screenwidth / 3) + 12,
                right: 22,
                height: screenheight / 27,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    padding:const EdgeInsets.only(right: 199),
                    icon: const Icon(
                      //widget.isCurrentlyPlaying
                      //? Icons.pause
                      Icons.play_arrow_rounded,
                      color: Colors.purple,
                    ),
                    onPressed: () {},
                  ),
                )),
          ]))),
      body: IndexedStack(
        index: currentpage,
        children: const [
          homescreen.Homescreen(),
          secondscreen.Secondscreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.yellow,
        height: (screenheight / 2) - 340,
        shadowColor: const Color.fromARGB(255, 12, 59, 98),

        elevation: 5,
        //indicatorColor: Colors.white,
        backgroundColor: Colors.black, //Color.fromARGB(255, 20, 117, 118),

        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.holiday_village_rounded,
                color: Colors.white,
                size: 40,
                weight: 50,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.account_tree_outlined,
                color: Colors.white,
                size: 40,
              ),
              label: 'Custom')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentpage = index;
          });
        },

        selectedIndex: currentpage,
      ),
    );
  }
}

void main() {
  runApp(const Myapp());
}
// to shange the shape of buttom bar icon "indicatorShape:  const CircleBorder(side: BorderSide(), eccentricity:0.5),"
