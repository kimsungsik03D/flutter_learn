class AlbumPro {
  int? userId;
  int? id;
  String? title;

  AlbumPro({this.userId, this.id, this.title});

  factory AlbumPro.fromJSON(Map<String, dynamic> json) =>
      AlbumPro(userId: json['userId'], id: json['id'], title: json['title']);
}
