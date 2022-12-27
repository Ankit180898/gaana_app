import 'package:flutter/material.dart';
import 'package:gaana_app2/constants/all_colors.dart';

import '../size_config.dart';


class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget({Key? key, required this.mobile,required this.tablet,required this.desktop}) : super(key: key);

  static bool isMobile(BuildContext context)=>
      MediaQuery.of(context).size.width<650;
  static bool isTablet(BuildContext context)=>
      MediaQuery.of(context).size.width<1100 && MediaQuery.of(context).size.width>=650;
  static bool isDesktop(BuildContext context)=>
      MediaQuery.of(context).size.width>=1100 ;



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>=1100){
        return desktop;
      }else if(constraints.maxWidth>=650){
        return tablet;
      }else {
        return mobile;
      }
    });
  }
}



