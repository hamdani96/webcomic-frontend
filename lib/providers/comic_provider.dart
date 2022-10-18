import 'package:flutter/cupertino.dart';
import 'package:webcomic/models/comic_model.dart';
import 'package:webcomic/services/comic_services.dart';

class ComicProvider with ChangeNotifier {
  List<ComicModel> _comics = [];

  List<ComicModel> get comics => _comics;

  set comics(List<ComicModel> comics) {
    _comics = comics;
    notifyListeners();
  }

  Future<void> getComics() async {
    try {
      List<ComicModel> comics = await ComicService().getComics();
      _comics = comics;
    } catch (e) {
      print(e);
    }
  }
}
