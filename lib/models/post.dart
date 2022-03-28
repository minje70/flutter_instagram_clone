import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.datePublished,
    required this.description,
    required this.likes,
    required this.postId,
    required this.postUrl,
    required this.profImage,
    required this.uid,
    required this.username,
  });

  Map<String, dynamic> toJson() => {
        'datePublished': datePublished,
        'description': description,
        'likes': likes,
        'postId': postId,
        'postUrl': postUrl,
        'profImage': profImage,
        'uid': uid,
        'username': username,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      datePublished: snapshot['datePublished'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      likes: snapshot['likes'],
      postId: snapshot['postId'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
      username: snapshot['username'],
    );
  }
}
