class Announcements {
  List<Data> data;

  Announcements({this.data});

  Announcements.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String created;
  String title;
  String detail;

  Data({this.id, this.created, this.title, this.detail});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    created = json['created'];
    title = json['title'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created'] = this.created;
    data['title'] = this.title;
    data['detail'] = this.detail;
    return data;
  }
}