import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaana_app2/constants/all_colors.dart';
import 'package:gaana_app2/data/utils.dart';
class VerticalList extends StatelessWidget {
  const VerticalList({
    Key? key,
    required this.recentPlaylists, this.height, this.width, this.containerHeight,
  }) : super(key: key);

  final List<Map> recentPlaylists;
  final double? height;
  final double? width;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: containerHeight,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: ListView.builder(scrollDirection: Axis.vertical,itemCount: recentPlaylists.length,itemBuilder: (context,index) {
              return ListTile(
                title: Text(recentPlaylists[index]['name'], style: TextStyle(
                    fontSize: 15,
                    color: AllColours.textColor),),
                leading: ClipRRect(child: Image.network(
                  recentPlaylists[index]['iconUrl'], height: height, width: width,),
                  borderRadius: BorderRadius.circular(5),),
                trailing: Wrap(
                  spacing: 13,
                  //
                  children: [
                    Icon(Icons.download, color: Colors.white,),
                    Icon(Icons.more_horiz, color: Colors.white,),

                  ],

                ),
              );
            }
    ),
          ),
        )
        );


}
  }
