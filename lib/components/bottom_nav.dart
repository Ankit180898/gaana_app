import 'package:flutter/material.dart';
import 'package:gaana_app2/components/responsive_widget.dart';
import 'package:gaana_app2/constants/all_colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isDesktop(context) || ResponsiveWidget.isTablet(context)) {
      return Text("No");
    } else if ( ResponsiveWidget.isMobile(context)) {
      return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: AllColours.bottomNavIcons,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.podcasts_outlined,
                color: AllColours.bottomNavIcons,
              ),
              label: 'Podcasts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
                color: AllColours.bottomNavIcons,
              ),
              label: 'Menu'),
        ],

        selectedItemColor: Colors.pink,
        unselectedItemColor: AllColours.textColor,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black.withOpacity(0.1),
      );
    }
    return Container();

  }
}

