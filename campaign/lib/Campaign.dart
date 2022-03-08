class Campaign {
  int CampaignNum = 0;
  String CampaignTitle = '';
  String CampaignLike = '';
  String CampaignScrap = '';
  String CampaignImage = '';
  String CampaignInfo = '';

  Campaign(int campaign_num, String campaigntitle, String like, String scrap, String image, String info){
    CampaignNum = campaign_num;
    CampaignTitle = campaigntitle;
    CampaignLike = like;
    CampaignScrap = scrap;
    CampaignImage = image;
    CampaignInfo = info;
  }
}