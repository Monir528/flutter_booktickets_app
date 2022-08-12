import 'package:booktickets/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int globalIndexNumber = 0;

  static final List<Widget> widgetList = <Widget>[
    const HomeScreen(),
    const Text('Search'),
    const Text('Ticket'),
    const Text('Profile'),
  ];

  void onTabActionForNavigationBarBottom(int index){
    setState(() {
      globalIndexNumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[globalIndexNumber],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabActionForNavigationBarBottom,
        currentIndex: globalIndexNumber,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: "Profile"
          )
        ],
      ),
    );
  }

}
