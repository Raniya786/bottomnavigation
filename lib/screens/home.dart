import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    Icon(
      Icons.home,
      size: 120,
      color: Colors.black87,
    ),
    Icon(
      Icons.call,
      size: 120,
      color: Colors.green,
    ),
    Icon(
      Icons.message,
      size: 120,
      color: Colors.cyan,
    )
  ];
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('BottomNavigationBar'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'call'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message')
          ],
        ),
        body: Center(
          child: pages.elementAt(selectedindex),
        ));
  }
}
