import 'package:realm/realm.dart';
part 'schemas.g.dart';

@RealmModel()
class _Person {
  @PrimaryKey()
  late ObjectId id;

  late String firstName;
  late String lastName;
  late int? age;
  late DateTime? born;
}
