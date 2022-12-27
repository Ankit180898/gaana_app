import 'package:flutter/material.dart';
import 'package:gaana_app2/constants/all_colors.dart';

import '../size_config.dart';
class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({
    Key? key,
    required this.recentPlaylists, this.height, this.width, this.containerHeight,
  }) : super(key: key);

  final List<Map> recentPlaylists;
  final double? height;
  final double? width;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: MediaQuery.of(context).size.height * containerHeight!,

        child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: recentPlaylists.length,itemBuilder: (context,index){

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(4.0 * SizeConfig.heightMultiplier)),
                ),
                child: ClipRRect(child: Image.network(recentPlaylists[index]['iconUrl']),borderRadius: BorderRadius.circular(10)),
                height: height,
                width: width,

                margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                // padding: EdgeInsets.all(10),
              ),
              Text(recentPlaylists[index]['name'],style: const TextStyle(fontSize: 13,color: AllColours.textColor ),)
            ],
          );

        }));
  }
}
