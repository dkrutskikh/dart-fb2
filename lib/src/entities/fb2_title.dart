import 'package:meta/meta.dart';

import 'fb2_creator.dart';

@immutable
class Fb2Title {
  final String title;
  final Iterable<Fb2Creator> authors;

  const Fb2Title({@required this.title, @required this.authors});
}
