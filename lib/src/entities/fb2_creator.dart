import 'package:meta/meta.dart';

@immutable
class Fb2Creator {
  final String firstName;
  final String middleName;
  final String lastName;
  final String nickname;
  final Uri homePage;
  final String email;
  final String id;

  const Fb2Creator({
    this.firstName,
    this.middleName,
    this.lastName,
    this.nickname,
    this.homePage,
    this.email,
    this.id,
  });
}
