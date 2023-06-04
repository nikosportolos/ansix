// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'user.dart';

class _$UserImpl extends User {
  _$UserImpl({
    required this.id,
    required this.name,
    required this.email,
    required this.age,
    required this.phone,
    required List<Address> addresses,
    required List<String> groups,
  })  : _addresses = addresses,
        _groups = groups,
        super.ctor();

  @override
  final String id;

  @override
  final String name;

  @override
  final Email email;

  @override
  final int age;

  @override
  final String phone;

  @override
  List<Address> get addresses => List<Address>.unmodifiable(_addresses);
  final List<Address> _addresses;

  @override
  List<String> get groups => List<String>.unmodifiable(_groups);
  final List<String> _groups;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email.toJson(),
      'age': age,
      'phone': phone,
      'addresses': <dynamic>[
        for (final Address i0 in addresses) i0.toJson(),
      ],
      'groups': groups,
    };
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is User &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            name == other.name &&
            email == other.email &&
            age == other.age &&
            phone == other.phone &&
            deepEquality(addresses, other.addresses) &&
            deepEquality(groups, other.groups);
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      id,
      name,
      email,
      age,
      phone,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'User{<optimized out>}';
    assert(() {
      toStringOutput =
          'User@<$hexIdentity>{id: $id, name: $name, email: $email, age: $age, phone: $phone, addresses: $addresses, groups: $groups}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => User;
}

class _$UserCopyWithProxy {
  _$UserCopyWithProxy(this._value);

  final User _value;

  @pragma('vm:prefer-inline')
  User id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  User name(String newValue) => this(name: newValue);
  @pragma('vm:prefer-inline')
  $EmailCopyWithProxyChain<User> get email =>
      $EmailCopyWithProxyChain<User>(_value.email, (Email update) => this(email: update));

  @pragma('vm:prefer-inline')
  User age(int newValue) => this(age: newValue);

  @pragma('vm:prefer-inline')
  User phone(String newValue) => this(phone: newValue);

  @pragma('vm:prefer-inline')
  User addresses(List<Address> newValue) => this(addresses: newValue);

  @pragma('vm:prefer-inline')
  User groups(List<String> newValue) => this(groups: newValue);

  @pragma('vm:prefer-inline')
  User call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  }) {
    return _$UserImpl(
      id: id ?? _value.id,
      name: name ?? _value.name,
      email: email ?? _value.email,
      age: age ?? _value.age,
      phone: phone ?? _value.phone,
      addresses: addresses ?? _value.addresses,
      groups: groups ?? _value.groups,
    );
  }
}

class $UserCopyWithProxyChain<$Result> {
  $UserCopyWithProxyChain(this._value, this._chain);

  final User _value;
  final $Result Function(User update) _chain;

  @pragma('vm:prefer-inline')
  $Result id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  $Result name(String newValue) => this(name: newValue);

  @pragma('vm:prefer-inline')
  $Result email(Email newValue) => this(email: newValue);

  @pragma('vm:prefer-inline')
  $Result age(int newValue) => this(age: newValue);

  @pragma('vm:prefer-inline')
  $Result phone(String newValue) => this(phone: newValue);

  @pragma('vm:prefer-inline')
  $Result addresses(List<Address> newValue) => this(addresses: newValue);

  @pragma('vm:prefer-inline')
  $Result groups(List<String> newValue) => this(groups: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final String? id,
    final String? name,
    final Email? email,
    final int? age,
    final String? phone,
    final List<Address>? addresses,
    final List<String>? groups,
  }) {
    return _chain(_$UserImpl(
      id: id ?? _value.id,
      name: name ?? _value.name,
      email: email ?? _value.email,
      age: age ?? _value.age,
      phone: phone ?? _value.phone,
      addresses: addresses ?? _value.addresses,
      groups: groups ?? _value.groups,
    ));
  }
}

extension $UserExtension on User {
  _$UserCopyWithProxy get copyWith => _$UserCopyWithProxy(this);
}

class _$AddressImpl extends Address {
  _$AddressImpl({
    required this.street,
    required this.city,
    required this.state,
  }) : super.ctor();

  @override
  final String street;

  @override
  final String city;

  @override
  final String state;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'street': street,
      'city': city,
      'state': state,
    };
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is Address &&
            runtimeType == other.runtimeType &&
            street == other.street &&
            city == other.city &&
            state == other.state;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      street,
      city,
      state,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Address{<optimized out>}';
    assert(() {
      toStringOutput = 'Address@<$hexIdentity>{street: $street, city: $city, state: $state}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Address;
}

class _$AddressCopyWithProxy {
  _$AddressCopyWithProxy(this._value);

  final Address _value;

  @pragma('vm:prefer-inline')
  Address street(String newValue) => this(street: newValue);

  @pragma('vm:prefer-inline')
  Address city(String newValue) => this(city: newValue);

  @pragma('vm:prefer-inline')
  Address state(String newValue) => this(state: newValue);

  @pragma('vm:prefer-inline')
  Address call({
    final String? street,
    final String? city,
    final String? state,
  }) {
    return _$AddressImpl(
      street: street ?? _value.street,
      city: city ?? _value.city,
      state: state ?? _value.state,
    );
  }
}

class $AddressCopyWithProxyChain<$Result> {
  $AddressCopyWithProxyChain(this._value, this._chain);

  final Address _value;
  final $Result Function(Address update) _chain;

  @pragma('vm:prefer-inline')
  $Result street(String newValue) => this(street: newValue);

  @pragma('vm:prefer-inline')
  $Result city(String newValue) => this(city: newValue);

  @pragma('vm:prefer-inline')
  $Result state(String newValue) => this(state: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final String? street,
    final String? city,
    final String? state,
  }) {
    return _chain(_$AddressImpl(
      street: street ?? _value.street,
      city: city ?? _value.city,
      state: state ?? _value.state,
    ));
  }
}

extension $AddressExtension on Address {
  _$AddressCopyWithProxy get copyWith => _$AddressCopyWithProxy(this);
}

class _$EmailImpl extends Email {
  _$EmailImpl({
    required this.primary,
    this.secondary,
    this.personal,
  }) : super.ctor();

  @override
  final String primary;

  @override
  final String? secondary;

  @override
  final String? personal;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'primary': primary,
      'secondary': secondary,
      'personal': personal,
    };
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is Email &&
            runtimeType == other.runtimeType &&
            primary == other.primary &&
            secondary == other.secondary &&
            personal == other.personal;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      primary,
      secondary,
      personal,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Email{<optimized out>}';
    assert(() {
      toStringOutput = 'Email@<$hexIdentity>{primary: $primary, secondary: $secondary, personal: $personal}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Email;
}

class _$EmailCopyWithProxy {
  _$EmailCopyWithProxy(this._value);

  final Email _value;

  @pragma('vm:prefer-inline')
  Email primary(String newValue) => this(primary: newValue);

  @pragma('vm:prefer-inline')
  Email secondary(String? newValue) => this(secondary: newValue);

  @pragma('vm:prefer-inline')
  Email personal(String? newValue) => this(personal: newValue);

  @pragma('vm:prefer-inline')
  Email call({
    final String? primary,
    final Object? secondary = const Object(),
    final Object? personal = const Object(),
  }) {
    return _$EmailImpl(
      primary: primary ?? _value.primary,
      secondary: identical(secondary, const Object()) ? _value.secondary : (secondary as String?),
      personal: identical(personal, const Object()) ? _value.personal : (personal as String?),
    );
  }
}

class $EmailCopyWithProxyChain<$Result> {
  $EmailCopyWithProxyChain(this._value, this._chain);

  final Email _value;
  final $Result Function(Email update) _chain;

  @pragma('vm:prefer-inline')
  $Result primary(String newValue) => this(primary: newValue);

  @pragma('vm:prefer-inline')
  $Result secondary(String? newValue) => this(secondary: newValue);

  @pragma('vm:prefer-inline')
  $Result personal(String? newValue) => this(personal: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final String? primary,
    final Object? secondary = const Object(),
    final Object? personal = const Object(),
  }) {
    return _chain(_$EmailImpl(
      primary: primary ?? _value.primary,
      secondary: identical(secondary, const Object()) ? _value.secondary : (secondary as String?),
      personal: identical(personal, const Object()) ? _value.personal : (personal as String?),
    ));
  }
}

extension $EmailExtension on Email {
  _$EmailCopyWithProxy get copyWith => _$EmailCopyWithProxy(this);
}
