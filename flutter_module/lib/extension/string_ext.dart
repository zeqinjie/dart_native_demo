import 'package:path/path.dart';

extension StringExtension on String {
  String get res => join("packages", "flutter_module", this);
}
