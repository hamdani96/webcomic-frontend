class CategoryModel {
  int? id;
  String? category;

  CategoryModel({
    required this.id,
    required this.category,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
    };
  }
}
