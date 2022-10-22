import 'package:webcomic/models/category_model.dart';
import 'package:webcomic/models/detail_comic_model.dart';
import 'package:webcomic/models/user_model.dart';

class ComicModel {
  int? id;
  String? banner;
  String? title;
  String? description;
  String? status;
  late double price;
  DateTime? createdAt;
  DateTime? updatedAt;
  late UserModel user;
  late CategoryModel category;
  late List<DetailComicModel> detail_comics;

  ComicModel({
    required this.id,
    required this.banner,
    required this.title,
    required this.description,
    required this.status,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.category,
    required this.detail_comics,
  });

  ComicModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    banner = json['banner'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
    price = double.parse(json['price'].toString());
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    category = CategoryModel.fromJson(json['category']);
    user = UserModel.fromJson(json['user']);
    detail_comics = json['detail_comics']
        .map<DetailComicModel>(
            (detail_comic) => DetailComicModel.fromJson(detail_comic))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'banner': banner,
      'title': title,
      'description': description,
      'status': status,
      'price': price,
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
      'user_id': user.toJson(),
      'category': category.toJson(),
      'user': user.toJson(),
      'detail_comics':
          detail_comics.map((detail_comic) => detail_comic.toJson()).toList(),
    };
  }
}
