class AlbumServ {
  int? userId;
  int? id;
  String? title;

  AlbumServ({this.userId, this.id, this.title});

  factory AlbumServ.fromJSON(Map<String, dynamic> json) {
    return AlbumServ(
        userId: json['userId'], id: json['id'], title: json['title']);
  }
}
