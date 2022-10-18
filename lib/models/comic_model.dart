import 'package:flutter/material.dart';
import 'package:webcomic/models/category_model.dart';
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

  ComicModel({
    required this.id,
    required this.banner,
    required this.title,
    required this.description,
    required this.status,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
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
    };
  }
}
