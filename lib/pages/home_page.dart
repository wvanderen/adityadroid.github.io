import 'package:adityagurjar/tabs/about_tab.dart';
import 'package:adityagurjar/tabs/blog_tab.dart';
import 'package:adityagurjar/tabs/projects_tab.dart';
import 'package:adityagurjar/tabs/videos_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    VideosTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: <Widget>[
      //     IconButton(
      //       icon: ThemeSwitcher.of(context).isDarkModeOn
      //           ? Icon(Icons.wb_sunny)
      //           : Image.asset(
      //               Assets.moon,
      //               height: 20,
      //               width: 20,
      //             ),
      //       onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
      //     )
      //   ],
      // ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            title: Text('Videos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text('Photography'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
