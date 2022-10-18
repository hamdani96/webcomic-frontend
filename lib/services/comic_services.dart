import 'dart:convert';
import 'package:webcomic/models/comic_model.dart';
import 'package:http/http.dart' as http;

class ComicService {
  String baseUrl = 'https://webcomic.indohomecare.com/api';

  Future<List<ComicModel>> getComics() async {
    var url = Uri.parse('$baseUrl/comic');
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      List<ComicModel> comics = [];

      for (var item in data) {
        comics.add(ComicModel.fromJson(item));
      }

      return comics;
    } else {
      // print(response.body);
      throw Exception('Gagal get comics');
    }
  }
}
