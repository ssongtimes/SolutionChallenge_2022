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
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff41B06B),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xff41B06B),
          ),
        ),
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                primary: Colors.transparent,
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
                        )),
              );
            },
            child: Stack(
              children: [
                Container(
                  height: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/sample.jpg'),
                      fit: BoxFit.fitWidth,
                     ),
                  ),
                  ),
                  Positioned(
                    top: 10,
                    bottom: 180,
                    child:  Container(
                      height: 5,
                      width: 550,
                      color: Colors.black45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 3),
                            child: Expanded(
                              child: Text(
                                campaigntitle,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
                            child: Expanded(
                              child: Text(
                                like,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Expanded(
                              child: Text(
                                    scrap,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                            ),
                          ),
                          Text(
                            info,
                            style: TextStyle(
                              color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.transparent,
                    child: Row(children: <Widget>[
                       Icon(
                         Icons.favorite,
                       ),
                        Icon(
                          Icons.star,
                        ),
                      ]
                    ),
                    ),
                  ]
            ),

            )]
            ),
                    ),
                  ),
                ],
              ),
            )
            );

  }
}