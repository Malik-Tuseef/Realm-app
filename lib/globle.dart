import 'package:realm/realm.dart';
import 'package:realmapp/schemas.dart';

final _config = Configuration.local([Person.schema]);
final realm = Realm(_config);
