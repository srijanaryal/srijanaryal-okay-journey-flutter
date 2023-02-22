import 'package:assignment1/details55.dart';
import 'package:assignment1/table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    // hide status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    runApp(const Mainscreen());
  });
}

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaleFactor = 0.9;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MediaQuery(
          data: MediaQueryData(textScaleFactor: scaleFactor),
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '9:14',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      const Icon(
                        Icons.signal_cellular_4_bar_rounded,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.wifi,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.battery_3_bar_sharp,
                        color: Colors.black,
                      )
                    ],
                  )),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 20),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'images/sita.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Operator',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            const Text(
                              'Sita Nepali',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Icon(
                          Icons.notifications_on_outlined,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey, width: 0.2), // Set width to 1.0
                    ),
                    child: TableWidget(),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey, width: 0.2), // Set width to 1.0
                    ),
                    child: TableWidget1(),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey, width: 0.2), // Set width to 1.0
                    ),
                    child: TableWidget1(),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 38.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0)),
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                          color: const Color(0xFF3F3A76),
                          onPressed: () {},
                          child: const Text(
                            'Explore Here',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        )),
                  )
                ],
              ),
              bottomNavigationBar: Container(
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF3F3A76),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: BottomNavigationBar(
                    iconSize: 30,
                    fixedColor: Colors.white,
                    selectedFontSize: 18,
                    backgroundColor: const Color(0xFF3F3A76),
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                        icon: new Icon(
                          Icons.home,
                          // color: Colors.transparent,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: const Color(0xFF3F3A76),
                        icon: new Icon(
                          color: Colors.white24,
                          Icons.done_outlined,
                        ),
                        label: 'Task',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.white,
                        icon: new Icon(
                          Icons.stacked_bar_chart,
                          color: Colors.white24,
                        ),
                        label: 'Status',
                      ),
                      const BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                          color: Colors.white24,
                        ),
                        label: 'Profile',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
