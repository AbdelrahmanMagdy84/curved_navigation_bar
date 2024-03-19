import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 80,
          items: [
            CurvedITem(
                selectedIcon: Icon(Icons.abc_sharp, size: 30),
                unselectedIcon: Icon(Icons.add, size: 30),
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.blue),
                )),
            CurvedITem(
                selectedIcon: Icon(Icons.abc_sharp, size: 30),
                unselectedIcon: Icon(Icons.add, size: 30),
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.blue),
                )),
            CurvedITem(
                selectedIcon: Icon(Icons.abc_sharp, size: 30),
                unselectedIcon: Icon(Icons.add, size: 30),
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.blue),
                )),
            CurvedITem(
                selectedIcon: Icon(Icons.abc_sharp, size: 30),
                unselectedIcon: Icon(Icons.add, size: 30),
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.blue),
                )),
            CurvedITem(
                selectedIcon: Icon(Icons.abc_sharp, size: 30),
                unselectedIcon: Icon(Icons.add, size: 30),
                title: Text(
                  "title",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.amber,
          backgroundColor: Colors.green,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
