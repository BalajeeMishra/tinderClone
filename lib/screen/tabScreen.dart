import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tinder/screen/swapScreen.dart';
import './swapScreen.dart';
import './chatscreen.dart';
import './searchscreen.dart';
import './likescreen.dart';
import './searchscreens.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>>? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': SwapScreen(),
      },
      // {
      //   'page': SearchScreens(),
      // },

      {
        'page': SearchScreen(),
      },
      {
        'page': LikeScreen(),
      },
      {
        'page': ChatScreen(),
      },
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      print(_selectedPageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(0xe9a9, fontFamily: "icomoon"),
              color: _selectedPageIndex == 0 ? Colors.red : null,
              size: 30,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_off_rounded,
              color: _selectedPageIndex == 1 ? Colors.red : null,
              size: 30,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border_outlined,
              color: _selectedPageIndex == 2 ? Colors.yellow : null,
              size: 30,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: _selectedPageIndex == 3 ? Colors.red : null,
              size: 30,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
