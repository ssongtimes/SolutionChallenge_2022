import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CampaignInfo.dart';

class CampaignUI extends StatelessWidget {
  const CampaignUI({
    Key? key,
    required this.campaigntitle,
    required this.like,
    required this.scrap,
    required this.info,
    this.onPressed,
  }) : super(key: key);

  final String campaigntitle;
  final String like;
  final String scrap;
  final String info;
  final Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/grandcanyon.jpg'),
            fit: BoxFit.none,
          ),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xff41B06B),
          ),
        ),
      child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0,3,0,50),
              height: 50,
              width: 550,
              child: TextButton(
                style: TextButton.styleFrom(
                primary: Colors.black26,
                side: BorderSide(
                  color: Colors.transparent,
              ),
              ),
              onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CampaignInfo(
                        campaigntitle: campaigntitle,
                        like: like,
                        scrap: scrap,
                        info: info,
                        campaigndate: 'MM/DD ~ MM/DD',
                        )
                  ),
              );
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                  width: 550,
                  height: 40,
                  child: Text(campaigntitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                     ),
                  ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(385, 190, 5, 10),
                            child: Expanded(
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite_border_rounded,
                                ),
                                iconSize: 30,
                                color: Colors.white,
                                splashColor: Colors.red,
                                onPressed: () {},
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(420, 187, 20, 10),
                            child: Expanded(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.star_outline_outlined,
                                  ),
                                  iconSize: 35,
                                  color: Colors.white,
                                  splashColor: Colors.yellow,
                                  onPressed: (){},
                                    ),
                                  ),
                            ),
                          ]
                      ),
                    ),
                            ),
                         ]
                          ),
                        ),
    );


  }
}
