import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class SongDetailTab extends StatelessWidget {
  const SongDetailTab({this.id, this.song, this.color});

  final int id;
  final String song;
  final Color color;

  Widget _buildBody() {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: 'dash',
            child: HeroAnimatingSongCard(
              song: song,
              color: Colors.green,
              heroAnimation: AlwaysStoppedAnimation(1),
            ),
            flightShuttleBuilder: (context, animation, flightDirection,
                fromHeroContext, toHeroContext) {
              return HeroAnimatingSongCard(
                song: song,
                color: Colors.green,
                heroAnimation: animation,
              );
            },
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.all(10),
                    child: Text(
                      'Information',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }
                // Just a bunch of boxes that simulates loading song choices.
                return Container(
                    child: Text(
                    '  MM/DD ~ MM/DD \n\n  This is a sample text. Hello world? this app is flutter.\n  nice to meet you.',
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                ),
                )
                );
            },
            ),
         ),
        ],
      ),
    );
  }


  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(song)),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(song),
        previousPageTitle: 'Songs',
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
