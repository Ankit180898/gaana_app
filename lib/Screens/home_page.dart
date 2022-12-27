import 'package:flutter/material.dart';
import 'package:gaana_app2/components/bottom_nav.dart';
import 'package:gaana_app2/components/bottom_player_widget.dart';
import 'package:gaana_app2/components/horizontal_scrollview_widget.dart';
import 'package:gaana_app2/components/responsive_widget.dart';
import 'package:gaana_app2/components/side_menu_bar.dart';
import 'package:gaana_app2/constants/all_colors.dart';
import 'package:gaana_app2/constants/strings.dart';
import 'package:gaana_app2/data/utils.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    var utils = Utils();
    Size size=MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            AllColours.backgroundSecond,
            AllColours.backgroundFirst
          ])),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: SideMenu(),
        backgroundColor: Colors.transparent,
        bottomSheet: BottomPlayer(),
        body: ResponsiveWidget(
            mobile: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            Strings.welcomeTitle,
                            style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                                color: AllColours.textColor),
                          ),
                          const Icon(
                            Icons.settings_outlined,
                            color: AllColours.textColor,
                          ),
                        ],
                      ),

                      const SizedBox(height: 5.0),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            Strings.welcomeSubTitle,
                            style:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                          )),
                      const SizedBox(
                        height:20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recently Played",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AllColours.textColor),
                          ),
                          //
                          GestureDetector(
                            onTap:(){Get.toNamed("/nextScreen"); },
                            child: Row(children: [
                              Text(
                                "View all",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 13,
                                ),
                              ),
                              Icon(Icons.arrow_right,color: Colors.red,),
                            ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      HorizontalScroll(
                          recentPlaylists: utils.recentPlaylists,
                          height: 90,
                          width: 90,
                          containerHeight:
                          0.20),

                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "PlayLists For You",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AllColours.textColor),
                          ),
                          Spacer(),
                          //
                          Text(
                            "View all",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 13,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_right),
                            color: Colors.red,
                            onPressed: () {
                              Get.toNamed("/nextScreen");
                            },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 5.0,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Enjoy playlists from your favourite artists...",
                            style: TextStyle(
                                color: AllColours.textColor.withOpacity(0.5),
                                fontSize: 14), //dynamic text images
                          )),
                      HorizontalScroll(
                        recentPlaylists: utils.playlistsForYou,
                        height: 120, //use mediaquery
                        width: 120,
                        containerHeight:
                        0.30,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                    ],
                  ),
                ),
                //use footer and inside use listtile
              ],
            ),
          ),
        ),
            tablet: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.menu,color: AllColours.textColor,),
                        onPressed: (){
                            _scaffoldKey.currentState?.openDrawer();
                        },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(

                                child: Text(
                                  Strings.welcomeTitle,
                                  style: TextStyle(
                                      fontSize:20,
                                      fontWeight: FontWeight.bold,
                                      color: AllColours.textColor),
                                ),
                                alignment: Alignment.topLeft,
                              ),

                              const SizedBox(height: 5.0),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    Strings.welcomeSubTitle,
                                    style:
                                    TextStyle(color: Colors.white.withOpacity(0.5)),
                                  )),
                              const SizedBox(
                                height:20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Recently Played",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AllColours.textColor),
                                  ),
                                  //
                                  GestureDetector(
                                    onTap:(){Get.toNamed("/nextScreen"); },
                                    child: Row(children: [
                                      Text(
                                        "View all",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 13,
                                        ),
                                      ),
                                      Icon(Icons.arrow_right,color: Colors.red,),
                                    ]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              HorizontalScroll(
                                  recentPlaylists: utils.recentPlaylists,
                                  height: 90,//dynamic
                                  width: 90,//dynamic
                                  containerHeight:
                                  0.22),

                              const SizedBox(
                                height: 50.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "PlayLists For You",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AllColours.textColor),
                                  ),
                                  Spacer(),
                                  //
                                  Text(
                                    "View all",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 13,
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.arrow_right),
                                    color: Colors.red,
                                    onPressed: () {
                                      Get.toNamed("/nextScreen");
                                    },
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 5.0,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Enjoy playlists from your favourite artists...",
                                    style: TextStyle(
                                        color: AllColours.textColor.withOpacity(0.5),
                                        fontSize: 14), //dynamic text images
                                  )),
                              HorizontalScroll(
                                recentPlaylists: utils.playlistsForYou,
                                height: 120, //use mediaquery
                                width: 120,
                                containerHeight:
                                0.30,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),

                            ],
                          ),
                        ),
                        //use footer and inside use listtile
                      ],
                    ),
                  )
                ],
              ),
            ) ,
          desktop:Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.menu,color: AllColours.textColor,),
                    onPressed: (){
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Align(

                              child: Text(
                                Strings.welcomeTitle,
                                style: TextStyle(
                                    fontSize:20,
                                    fontWeight: FontWeight.bold,
                                    color: AllColours.textColor),
                              ),
                              alignment: Alignment.topLeft,
                            ),

                            const SizedBox(height: 5.0),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Strings.welcomeSubTitle,
                                  style:
                                  TextStyle(color: Colors.white.withOpacity(0.5)),
                                )),
                            const SizedBox(
                              height:20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Recently Played",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AllColours.textColor),
                                ),
                                //
                                GestureDetector(
                                  onTap:(){Get.toNamed("/nextScreen"); },
                                  child: Row(children: [
                                    Text(
                                      "View all",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: 13,
                                      ),
                                    ),
                                    Icon(Icons.arrow_right,color: Colors.red,),
                                  ]),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            HorizontalScroll(
                                recentPlaylists: utils.recentPlaylists,
                                height: 90,
                                width: 90,
                                containerHeight:
                                0.22),

                            const SizedBox(
                              height: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "PlayLists For You",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AllColours.textColor),
                                ),
                                Spacer(),
                                //
                                Text(
                                  "View all",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 13,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_right),
                                  color: Colors.red,
                                  onPressed: () {
                                    Get.toNamed("/nextScreen");
                                  },
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 5.0,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Enjoy playlists from your favourite artists...",
                                  style: TextStyle(
                                      color: AllColours.textColor.withOpacity(0.5),
                                      fontSize: 14), //dynamic text images
                                )),
                            HorizontalScroll(
                              recentPlaylists: utils.playlistsForYou,
                              height: 120, //use mediaquery
                              width: 120,
                              containerHeight:
                              0.30,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),

                          ],
                        ),
                      ),
                      //use footer and inside use listtile
                    ],
                  ),
                )
              ],
            ),
          ) ,),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
