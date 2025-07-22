
import 'package:uuid/uuid.dart';

@deprecated
abstract class DunnoId {
  final Uuid _uuid = Uuid();

  static String get next => Uuid().v4();
}