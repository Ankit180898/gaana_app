import 'package:flutter/material.dart';
import 'package:gaana_app2/components/responsive_widget.dart';
import 'package:gaana_app2/constants/all_colors.dart';

class BottomPlayer extends StatelessWidget {
  const BottomPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: ResponsiveWidget(

          mobile: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AllColours.playerFirst, AllColours.playerSecond]),
              borderRadius: BorderRadius.circular(15),
            ),
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.network(
                    "https://i.scdn.co/image/ab67706f00000003ed3a8bb5b72ab5ccbf5834b8",
                  ),
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello",
                      style: TextStyle(color: AllColours.textColor, fontSize: 13),
                    ),
                    Text(
                      "wassup",
                      style: TextStyle(color: AllColours.textColor, fontSize: 13),
                    )
                  ],
                ),
                const Icon(
                  Icons.favorite,
                  color: AllColours.textColor,
                ),
                const Icon(Icons.pause, color: AllColours.textColor),
                const Icon(Icons.skip_next, color: AllColours.textColor)
              ],
            ),
          ),
          desktop: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AllColours.playerFirst, AllColours.playerSecond]),
              borderRadius: BorderRadius.circular(15),
            ),
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.network(
                    "https://i.scdn.co/image/ab67706f00000003ed3a8bb5b72ab5ccbf5834b8",
                  ),
                  height: size.height * 0.3,
                  width: size.width * 0.3,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello",
                      style: TextStyle(color: AllColours.textColor, fontSize: 13),
                    ),
                    Text(
                      "wassup",
                      style: TextStyle(color: AllColours.textColor, fontSize: 13),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: AllColours.textColor,
                    ),
                    const Icon(Icons.pause, color: AllColours.textColor),
                    const Icon(Icons.skip_next, color: AllColours.textColor)
                  ]

                ),

              ],
            ),
          ),
          tablet:Container(
            margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AllColours.playerFirst, AllColours.playerSecond]),
            borderRadius: BorderRadius.circular(15),
          ),
          height: size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,



            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://i.scdn.co/image/ab67706f00000003ed3a8bb5b72ab5ccbf5834b8",

                      ),
                    ),
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(color: AllColours.textColor, fontSize: 13),
                  ),

                ],
              ),
              Icon(
                Icons.favorite,
                color: AllColours.textColor,
              ),
              const Icon(Icons.pause, color: AllColours.textColor),
              const Icon(Icons.skip_next, color: AllColours.textColor)


            ],
          ),
        ) ,


        )

    );
  }
}
