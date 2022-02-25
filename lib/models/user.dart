class User {
  final int? id;
  final String userName;
  final String userImage;
  final String timeStamp;

  User(
      {this.id,
      required this.userName,
      required this.userImage,
      required this.timeStamp});

  factory User.fromMap(Map<String, dynamic> json) => new User(
      id: json['id'],
      userName: json['name'],
      userImage: json['img'],
      timeStamp: json['time_stamp']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': userName,
      'img': userImage,
      'time_stamp': timeStamp,
    };
  }
}
