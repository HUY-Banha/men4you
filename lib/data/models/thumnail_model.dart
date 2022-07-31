import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ThumnailModel  {
  String image;

  ThumnailModel({required this.image});

  static ThumnailModel fromSnapshot(DocumentSnapshot snapshot) {
    ThumnailModel thumnailModel = ThumnailModel(image: snapshot['imgUrl']);
    return thumnailModel;
  }

}
