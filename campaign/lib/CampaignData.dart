import 'Campaign.dart';

class CampaignData{
  List<Campaign> CampaignDB = [
    Campaign(1,'1 Title','1like', '1scrap', '1 info',''),
    Campaign(2,'2 Title','2like', '2scrap', '2 info',''),
    Campaign(3,'3 Title','3like', '3scrap', '3 info',''),
    Campaign(4,'4 Title','4like', '4scrap', '4 info',''),
    Campaign(5,'5 Title','5like', '5scrap', '5 info',''),
    Campaign(6,'6 Title','6like', '6scrap', '6 info',''),
  ];

  int getCampaignNum(){
    return CampaignDB.length;
  }

  String getCampaignTitle(int index){
    return CampaignDB[index].CampaignTitle;
  }

  String getLike(int index){
    return CampaignDB[index].CampaignLike;
  }

  String getScrap(int index){
    return CampaignDB[index].CampaignScrap;
  }

  String getInfo(int index){
    return CampaignDB[index].CampaignInfo;
  }
}