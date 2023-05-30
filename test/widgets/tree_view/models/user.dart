import 'package:data_class_plugin/data_class_plugin.dart';

part 'user.gen.dart';

@DataClass(toJson: true)
abstract class User {
  User.ctor();

  /// Default constructor
  factory User({
    required String id,
    required String name,
    required Email email,
    required int age,
    required String phone,
    required List<Address> addresses,
    required List<String> groups,
  }) = _$UserImpl;

  String get id;

  String get name;

  Email get email;

  int get age;

  String get phone;

  List<Address> get addresses;

  List<String> get groups;

  /// Converts [User] to a [Map] json
  Map<String, dynamic> toJson();
}

@DataClass(toJson: true)
abstract class Address {
  Address.ctor();

  /// Default constructor
  factory Address({
    required String street,
    required String city,
    required String state,
  }) = _$AddressImpl;

  String get street;

  String get city;

  String get state;

  /// Converts [Address] to a [Map] json
  Map<String, dynamic> toJson();
}

@DataClass(toJson: true)
abstract class Email {
  Email.ctor();

  /// Default constructor
  factory Email({
    required String primary,
    String? secondary,
    String? personal,
  }) = _$EmailImpl;

  String get primary;

  String? get secondary;

  String? get personal;

  /// Converts [Email] to a [Map] json
  Map<String, dynamic> toJson();
}
