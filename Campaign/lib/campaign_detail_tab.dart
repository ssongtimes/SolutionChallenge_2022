import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class CampaignDetailTab extends StatelessWidget {
  const CampaignDetailTab({this.id, this.campaign, this.color});

  final int id;
  final String campaign;
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
            child: HeroAnimatingCampaign(
              campaign: campaign,
              color: Color(0xFF41B06B),
              heroAnimation: AlwaysStoppedAnimation(1),
            ),
            flightShuttleBuilder: (context, animation, flightDirection,
                fromHeroContext, toHeroContext) {
              return HeroAnimatingCampaign(
                campaign: campaign,
                color: Color(0xFF41B06B),
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
                      '  MM/DD ~ MM/DD \n  This is a sample text. Hello world?\n  a long text very long text apple watermelon white',
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
      appBar: AppBar(title: Text(campaign)),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(campaign),
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
