import 'package:evently/home/tabs/home_tab/home_tab.dart';
import 'package:evently/home/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [HomeTab(), Placeholder(), Placeholder(), ProfileTab()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).splashColor, width: 5),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Theme.of(context).highlightColor,
          splashColor: Theme.of(context).splashColor,
          child: Icon(
            Icons.add_rounded,
            color: Theme.of(context).splashColor,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2,
        shape: CircularNotchedRectangle(),
        color: Theme.of(context).highlightColor,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.home_outlined),
                ),
                label: 'Home'), //TODO:localization
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.location_on),
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.location_on_outlined),
                ),
                label: 'Map'), //TODO:localization
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.favorite_border_outlined),
                ),
                label: 'Love'), //TODO:localization
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person_rounded),
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.person_outline_rounded),
                ),
                label: 'profile') //TODO:localization
          ],
        ),
      ),
    );
  }
}
