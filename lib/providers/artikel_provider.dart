import 'package:artikel/models/artikel_model.dart';
import 'package:artikel/models/detail_artikel_model.dart';
import 'package:artikel/services/artikel_services.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _artikelService = ArtikelService();
  Artikel artikel = Artikel();
  DetailArtikel detailArtikel = DetailArtikel();

  showListArtikel() async {
    artikel = await _artikelService.tampilkanartikel();
    notifyListeners();
  }

  ShowDetailArtikel({String? inputKey}) async {
    detailArtikel = await _artikelService.tampilkanDetail_artikel(id: inputKey);
    notifyListeners();
  }
}
