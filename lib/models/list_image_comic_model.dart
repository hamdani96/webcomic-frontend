class ListImageComicModel {
  late int id;
  late String image;
  late String page_number;

  ListImageComicModel({
    required this.id,
    required this.image,
    required this.page_number,
  });

  ListImageComicModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    page_number = json['page_number'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'page_number': page_number,
    };
  }
}
