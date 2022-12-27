import 'package:flutter/material.dart';
import 'package:gaana_app2/components/responsive_widget.dart';
import 'package:get/get.dart';
class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isDesktop(context) || ResponsiveWidget.isTablet(context))
    {
      return Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gaana',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => {
                Get.toNamed("/")
              },
            ),
            ListTile(
              leading: Icon(Icons.search_outlined,),
              title: Text('Search'),
              onTap: () => {Get.toNamed("/nextScreen")},
            ),
            ListTile(
              leading: Icon(Icons.podcasts_outlined,),
              title: Text('Podcasts'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.menu_book_outlined),
              title: Text('Menu'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      );

    }else{
      return Text('');
    }
  }
}