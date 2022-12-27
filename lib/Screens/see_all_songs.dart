import 'package:flutter/material.dart';
import 'package:gaana_app2/components/bottom_nav.dart';
import 'package:gaana_app2/components/bottom_player_widget.dart';
import 'package:gaana_app2/components/responsive_widget.dart';
import 'package:gaana_app2/components/side_menu_bar.dart';
import 'package:gaana_app2/components/vertical_list_tile.dart';
import 'package:gaana_app2/constants/all_colors.dart';
import 'package:gaana_app2/data/utils.dart';
import 'package:get/get.dart';
class SeeAllSongs extends StatelessWidget {
  const SeeAllSongs({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                AllColours.backgroundSecond,
                AllColours.backgroundFirst
              ])
      ),
      child: Scaffold(
        drawer: SideMenu(),
        bottomNavigationBar: BottomNav(),
        backgroundColor: Colors.transparent,
        bottomSheet: BottomPlayer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back),color: Colors.white, ),
                        const Text("Latest Songs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AllColours.textColor),),
                        const Icon(Icons.search_outlined,color: Colors.white,),
                        const Icon(Icons.more_horiz,color: Colors.white,),



                      ],
                    ),
                    const SizedBox(height: 20,),
                    Image.network("https://i.scdn.co/image/ab67706f00000003ed3a8bb5b72ab5ccbf5834b8",height:size.height*0.40,width: double.maxFinite,),
                    const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.playlist_play,color: Colors.white,),
                    Icon(Icons.favorite,color: AllColours.textColor,),
                    Icon(Icons.play_circle_fill_outlined,color: Colors.red,size: 60,),
                    Icon(Icons.download,color: Colors.white,),
                    Icon(Icons.share,color: Colors.white,),

                  ],
                ),
                    const SizedBox(height: 20,),
                    VerticalList(recentPlaylists: Utils().playlistsForYou,height: 40,width: 40,containerHeight: size.height*0.20,)


                ],


          ),
              ),
            ),


        ),


        ),





    );


  }
}
