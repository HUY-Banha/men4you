import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:men4you/data/models/thumnail_model.dart';
import 'package:men4you/data/repositories/base_thumnail_repository.dart';

class ThumnailRepository extends BaseThumnailRepository {
  final FirebaseFirestore _firebaseFirestore;

  ThumnailRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<ThumnailModel>> getallthumnail() {
    return _firebaseFirestore.collection('promotion').snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => ThumnailModel.fromSnapshot(doc))
            .toList());
  }
  
  static List<ThumnailModel> thumnaillist() {
    return [
      ThumnailModel(
          image:
              'https://cdn2.vectorstock.com/i/1000x1000/01/66/50-offer-now-for-female-clothes-promo-emblem-vector-21390166.jpg'),
      ThumnailModel(
          image:
              'https://st4.depositphotos.com/11292408/23294/i/1600/depositphotos_232949278-stock-photo-sales-promotion-fashion-clothes-retail.jpg'),
      ThumnailModel(
          image:
              'https://media.istockphoto.com/vectors/promo-sale-flyer-with-basket-shopping-clothing-store-supermarket-vector-id1255894703'),
      ThumnailModel(
          image:
              'https://cdn1.vectorstock.com/i/1000x1000/01/55/special-discount-tag-25-dresses-skirts-trousers-vector-21390155.jpg'),
    ];
  }
  
}
