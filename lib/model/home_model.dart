class HomeModel {
  final String name;
  final String desc;
  final String avatarUrl;

  HomeModel({this.name, this.desc, this.avatarUrl});
}

List<HomeModel> homeData = [
  new HomeModel(
    name: "Clean Up : Chowpatty",
    desc: "Dec 11",
    avatarUrl: 'media/Chowpatty.jpg',
  ),
  new HomeModel(
    name: "Tree Plantation : Aarey",
    desc: "Dec 15",
    avatarUrl: 'media/Aarey.jpg',
  ),
  new HomeModel(
    name: "Clean Up : Juhu Beach",
    desc: "Dec 22",
    avatarUrl: 'media/Juhu.jpg',
  ),
  new HomeModel(
    name: "Clean Up : Versova Beach",
    desc: "Dec 31",
    avatarUrl: 'media/beach.jpg',
  ),
  new HomeModel(
    name: "Tree Plantation : SGNP",
    desc: "Jan 1",
    avatarUrl: 'media/Aarey.jpg',
  ),
];
