import 'dart:convert';
import 'dart:typed_data';

import 'package:xml/xml.dart';

import 'entities/fb2_book.dart';
import 'readers/title_reader.dart';

class Fb2Reader {
  /// Opens the book asynchronously and reads all of its content into the memory.
  static Fb2Book readBook(Uint8List bytes) {
    final xmlDocument = XmlDocument.parse(utf8.decode(bytes));
    final fictionBook = xmlDocument.getElement('FictionBook');
    final fictionBookDecription = fictionBook.getElement('description');
    final fictionBookDecriptionTitle =
        fictionBookDecription.getElement('title-info');

    final bookTitle = readTitle(fictionBookDecriptionTitle);

    return Fb2Book(title: bookTitle);
  }
}
