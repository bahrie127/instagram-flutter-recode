import 'dart:convert';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;
  final List likes;
  Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'uid': uid,
      'username': username,
      'postId': postId,
      'datePublished': datePublished.millisecondsSinceEpoch,
      'postUrl': postUrl,
      'profImage': profImage,
      'likes': likes,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      description: map['description'] ?? '',
      uid: map['uid'] ?? '',
      username: map['username'] ?? '',
      postId: map['postId'] ?? '',
      datePublished: DateTime.fromMillisecondsSinceEpoch(map['datePublished']),
      postUrl: map['postUrl'] ?? '',
      profImage: map['profImage'] ?? '',
      likes: List.from(map['likes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));
}
