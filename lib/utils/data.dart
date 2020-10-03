class Game {

  String title;
  String subTitle;
  String description;
  String imageUrl;
  String users;
  String viewers;

  Game(this.title, this.subTitle, this.description, this.imageUrl, this.users, this.viewers);

}

List<Game> getGames(){
  return <Game>[
    Game(
      "Counter-Strike: Global Offensive",
      "ESL_CSGO",
      "RERUN: Astralis VS FaZe Clan [Dust2] Map 1 - ESL One: Road to Rio - Upper Bracket Final - EU",
      "assets/images/csgo.jpg",
      "16890",
      "101.646"
    ),
    Game(
      "Call Of Duty: Warzone",
      "COD_WARZONE",
      "RERUN: Astralis VS FaZe Clan [Vardansk] Map 1 - ESL One: Road to Rio - Upper Bracket Final - EU",
      "assets/images/cod.jpg",
      "95433",
      "186.255"
    ),
    Game(
      "FIFA 20",
      "EA_SPORTS",
      "Qualifications rounds and semi finals - Europe and Asia",
      "assets/images/fifa.jpg",
      "34521",
      "68.255"
    ),
  ];
}