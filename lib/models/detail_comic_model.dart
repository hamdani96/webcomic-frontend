class DetailComicModel {
  late int id;
  late String image;
  late String title;
  late String episode;
  late String status;

  DetailComicModel({
    required this.id,
    required this.image,
    required this.title,
    required this.episode,
    required this.status,
  });

  DetailComicModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    episode = json['episode'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'episode': episode,
      'status': status,
    };
  }
}
