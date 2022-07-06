import 'package:artikel/models/artikel_model.dart';
import 'package:artikel/models/detail_artikel_model.dart';
import 'package:dio/dio.dart';

class ArtikelService {
  Future<Artikel> tampilkanartikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    return Artikel.fromJson(response.data);
  }

  Future<DetailArtikel> tampilkanDetail_artikel({String? id}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$id');
    return DetailArtikel.fromJson(response.data);
  }
}
