import 'package:men4you/data/models/thumnail_model.dart';

abstract class BaseThumnailRepository {
  Stream<List<ThumnailModel>> getallthumnail();
}
