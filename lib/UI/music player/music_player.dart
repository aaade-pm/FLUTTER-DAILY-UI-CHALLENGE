import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'neubox.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Text(
          "YUSUFUL RADIO",
          style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //adding the back button
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                // adding where it is playey from and name of path
                Center(
                  child: Column(
                    children: [
                      Text(
                        "PLAYING FROM ARTIST",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "YKB ALBUM",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                //adding the menu button
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(
                    child: Icon(Icons.menu),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          //adding cover art
          SizedBox(
            width: 370,
            child: NeuBox(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/ykb.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SAN SIRO",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                "YKB",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),

                          //adding like icon
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          //adding the start time, shuffle button, repeat button and end time
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('1:60'),
              Icon(Icons.shuffle),
              Icon(Icons.repeat),
              Text('3:21')
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          //adding progress indicator
          Padding(
            padding: const EdgeInsets.all(15),
            child: NeuBox(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.5,
                  backgroundColor: Colors.transparent,
                  progressColor: Colors.orange.shade400,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          //adding the play, next and previous buttons
          const Padding(
            padding: EdgeInsets.all(18),
            child: SizedBox(
              height: 80,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: NeuBox(
                    child: Icon(
                      Icons.skip_previous,
                      size: 32,
                    ),
                  )),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: NeuBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      )),
                  Expanded(
                      child: NeuBox(
                    child: Icon(
                      Icons.skip_next,
                      size: 32,
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
