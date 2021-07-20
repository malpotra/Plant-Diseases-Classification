import 'package:flutter/material.dart';
import 'package:test_tflite/diseaseInfo.dart';
import 'package:test_tflite/diseasePage.dart';
import 'package:test_tflite/homePage.dart';
void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CropGro Disease Classification',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.lightBlue,
      ),
      home: MyNavigationBar(),
    );
  }
}
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _children = <Widget>[
    HomePage(),
    DiseasePage(title: 'CroGro Disease Classifier App Home Page'),
    DiseaseInfo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset('assets/logo.png',scale: 0.1,)
        ),
        centerTitle: true,
        title: Text('CroGro Disease Detection',
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: IndexedStack(index: _selectedIndex, children: _children,)
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                //backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety_sharp),
                title: Text('Go to doctor'),
                //backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_sharp),
              title: Text('Diseases'),
              //backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize:35,
          onTap: _onItemTapped,
          elevation: 0,
          backgroundColor: Colors.white10,
      ),
    );
  }
}