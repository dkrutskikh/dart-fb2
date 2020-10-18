import 'package:xml/xml.dart';

import '../entities/fb2_creator.dart';
import '../entities/fb2_title.dart';

Fb2Title readTitle(XmlNode fictionBookDecriptionTitle) => Fb2Title(
    title: fictionBookDecriptionTitle.getElement('book-title')?.text,
    authors: fictionBookDecriptionTitle.children
        .whereType<XmlElement>()
        .where((e) => e.name.toString() == 'author')
        .map(_readCreator)
        .toList());

Fb2Creator _readCreator(XmlNode authorNode) {
  final uri = authorNode?.getElement('home-page')?.text;

  return Fb2Creator(
    firstName: authorNode?.getElement('first-name')?.text,
    middleName: authorNode?.getElement('middle-name')?.text,
    lastName: authorNode?.getElement('last-name')?.text,
    nickname: authorNode?.getElement('nickname')?.text,
    homePage: uri != null ? Uri.parse(uri) : null,
    email: authorNode?.getElement('email')?.text,
    id: authorNode?.getElement('id')?.text,
  );
}
