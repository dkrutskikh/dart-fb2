import 'package:meta/meta.dart';

import 'fb2_creator.dart';
import 'fb2_genre.dart';

@immutable
class Fb2Title {
  final String title;
  final Iterable<Fb2Creator> authors;
  final Iterable<Fb2Genre> genres;

  const Fb2Title(
      {@required this.title, @required this.authors, @required this.genres});
}
