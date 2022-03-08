import 'package:flutter/material.dart';

/*
class CampaignInfo extends StatelessWidget {
  const CampaignInfo({
    Key? key,
    required this.campaigntitle,
    required this.like,
    required this.scrap,
    required this.info,
}) : super (key: key);

  final String campaigntitle;
  final String like;
  final String scrap;
  final String info;
*/

class CampaignInfo extends StatelessWidget {
  const CampaignInfo({
    Key? key,
    required this.campaigntitle,
    required this.like,
    required this.scrap,
    required this.info,
  }) : super(key: key);

  final String campaigntitle;
  final String like;
  final String scrap;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Color(0xff615E5C),
          ),
          title: Text(
            'Campaign',
            style: TextStyle(
                color: Color(0xff615E5C),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xff81dfa4),
                width: 3,
              ),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 70,
                    color: Color(0xff41B06B),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$campaigntitle',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$like',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '$scrap',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    '$info',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ]),
                          ],
                        )
                    )
                )
              ],
            ),
          ),
        )
    );
  }


/*Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.pinkAccent,
                    child: ListView(
                      children: <Widget>[
                        Text('기사'),
                        Text('사진'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsTest()),
                    );
                  },
                  child: Text('asd'),
                ),*/
}