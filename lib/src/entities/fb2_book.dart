import 'package:meta/meta.dart';

import 'fb2_title.dart';

@immutable
class Fb2Book {
  final Fb2Title title;

  const Fb2Book({@required this.title});
}
