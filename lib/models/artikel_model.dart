class Artikel {
  List<Data>? data;
  String? message;
  int? code;

  Artikel({this.data, this.message, this.code});

  Artikel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  int? id;
  int? likes;
  int? views;
  int? publish;
  String? title;
  String? resume;
  String? description;
  Null? subtitle;
  String? createdAt;

  Null? headline;
  String? menu;
  String? submenu;
  String? category;
  String? subcategory;
  String? source;
  String? regenciesAsRegency;
  String? province;
  String? image;
  String? editor;

  Data(
      {this.id,
      this.views,
      this.publish,
      this.likes,
      this.title,
      this.resume,
      this.description,
      this.subtitle,
      this.createdAt,
      this.headline,
      this.menu,
      this.submenu,
      this.category,
      this.subcategory,
      this.source,
      this.regenciesAsRegency,
      this.province,
      this.image,
      this.editor});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    likes = json['likes'];
    title = json['title'];
    resume = json['resume'];
    description = json['description'];
    subtitle = json['subtitle'];
    createdAt = json['created_at'];
    views = json['views'];
    publish = json['publish'];
    headline = json['headline'];

    menu = json['menu'];
    submenu = json['submenu'];
    category = json['category'];
    subcategory = json['subcategory'];
    source = json['source'];
    regenciesAsRegency = json['regencies as regency'];
    province = json['province'];
    image = json['image'];
    editor = json['editor'];
  }

  get imageLink => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['likes'] = this.likes;
    data['title'] = this.title;
    data['resume'] = this.resume;
    data['description'] = this.description;
    data['subtitle'] = this.subtitle;
    data['created_at'] = this.createdAt;
    data['views'] = this.views;
    data['publish'] = this.publish;
    data['headline'] = this.headline;

    data['menu'] = this.menu;
    data['submenu'] = this.submenu;
    data['category'] = this.category;
    data['subcategory'] = this.subcategory;
    data['source'] = this.source;
    data['regencies as regency'] = this.regenciesAsRegency;
    data['province'] = this.province;
    data['image'] = this.image;
    data['editor'] = this.editor;
    return data;
  }
}
