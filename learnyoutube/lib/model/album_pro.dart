class Album_pro {
  int? userId;
  int? id;
  String? title;

  Album_pro({this.userId, this.id, this.title});

  factory Album_pro.fromJSON(Map<String, dynamic> json) =>
      Album_pro(userId: json['userId'], id: json['id'], title: json['title']);
}
