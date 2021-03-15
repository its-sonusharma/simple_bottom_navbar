import 'package:bottom_nev_bar/homepage.dart';
import 'package:bottom_nev_bar/newsfeed.dart';
import 'package:bottom_nev_bar/notice.dart';
import 'package:bottom_nev_bar/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    Homepage(),
    Newsfeed(),
    Notice(),
    Settings()];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('Bottom Nav bar'),
        centerTitle: true,
      ),
        body:Center(
          child:_widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal[900],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.amber,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.rss_feed),
              label:'Feeds',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),
              label:'Notice',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label:'Settings',
            ),
          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
          Navigator.push (context,MaterialPageRoute( builder: (context) => Add()),);
        },
        child: Icon(Icons.add),
      )
    );
  }
}

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}
class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
        backgroundColor: Colors.teal[900],
        centerTitle: true,
      ),
      body:Center(
        child: Text('Add data from here',
        style: TextStyle(
          fontSize: 30,
        ),),
      ),
    );
  }
}
